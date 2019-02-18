using System;
using System.IO;
using System.Linq;
using AEImageHub.Repository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using AEImageHub.Models;

namespace ImageServer.Controllers
{
    [Route("api/image")]
    public class ImageController : Controller
    {
        private readonly ImageContext _context;
        private readonly IImageRepository _repo;


        public ImageController(ImageContext context, IImageRepository repo)
        {
            _context = context;
            _repo = repo;
        }

        /// <summary>
        /// Endpoint handling image upload requests
        /// </summary>
        public IActionResult UploadImage([FromForm]IFormFile image)
        {
            // check if image is passed in and also if it's valid image type
            if(image == null)
            {
                return BadRequest("no image passed in");
            } else if (!_repo.IsImageFileType(image))
            {
                return BadRequest("invalid file extension");
            }

            // check if image exists
            Image img = GetImageModel(image);
            if (ImageExists(img.IId))
            {
                return Conflict("image already exists");
            }

            // add image meta data into database
            try
            {
                _context.Add(img);
                _context.SaveChanges();
            }
            catch (Exception e)
            {
                Debug.Write("SQL exception" + e.Message);
                return BadRequest("malform request");
            }

            // store image onto disk
            string uri = _repo.StoreImageToDisk(image);
            img.IId = uri; // change database iId type
            return Created(uri, img);
        }

        private Image GetImageModel(IFormFile image)
        {
            string fn = Path.GetFileNameWithoutExtension(image.FileName);
            Image img = new Image()
            {
                IId = ImageWriter.GetImageHash(image).Substring(0,19),
                UId = "todo", // todo decode token and get username
                ImageName = fn.Length < 19 ? fn : fn.Substring(0,19),
                Size = (Int32)image.Length,
                UploadedDate = DateTime.Now,
                Type = _repo.GetFileExtension(image),
                Trashed = false,
                Submitted = false
            };
            return img;
        }

        /// <summary>
        /// Endpoint handling image get requests
        /// </summary>
        [HttpGet("{filename}")]
        public IActionResult GetImage(string filename)
        {
            var path = Path.Combine(Directory.GetCurrentDirectory(), "ImageResources", filename);
            Debug.Write(path);
            var image = System.IO.File.OpenRead(path);

            if (image == null)
                return NotFound();

            return File(image, "image/jpeg");
        }

        /// <summary>
        /// Endpoint handling image delete requests
        /// </summary>
        [HttpDelete(("{uri}"))]
        public IActionResult DeleteImage(string uri)
        {
            Image image =  _context.Image.Find(uri.Substring(0,19));
            if (image == null)
            {
                return NotFound();
            }
            _context.Image.Remove(image);
            var path = Path.Combine(Directory.GetCurrentDirectory(), "ImageResources", uri);
            _context.SaveChanges();
            System.IO.File.Delete(path);
            return Accepted();
        }

        private bool ImageExists(string id)
        {
            return _context.Image.Any(e => e.IId.Equals(id));
        }
    }
}


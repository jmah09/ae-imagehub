using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using AEImageHub.Repository.Image;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace ImageServer.Controllers
{
    [Route("api/image")]
    public class ImageController : Controller
    {
        private readonly IImage _repo;

        public ImageController(IImage repo)
        {
            _repo = repo;
        }

        /// <summary>
        /// Uploads an image to the server.
        /// </summary>
        /// <param name="image"></param>
        /// <returns></returns>
        [DisableCors]
        public async Task<IActionResult> UploadImage(IFormFile image)
        {
            Debug.Write(HttpContext.Request.Body.ToString());
            return await _repo.UploadImage(image);
        }


        [HttpGet("{filename}")]
        [DisableCors]
        public async Task<IActionResult> Get(string filename)
        {
            var path = Path.Combine(Directory.GetCurrentDirectory(), "ImageResources", filename);
            Debug.Write(path);
            var image = System.IO.File.OpenRead(path);

            if (image == null)
                return NotFound();

            return File(image, "image/jpeg");
        }


        [Route("api/images")]
        public IEnumerable<string> GetFiles()
        {
            Debug.Write("===============================================================================");
            var path = Path.Combine(Directory.GetCurrentDirectory(), "ImageResources");
            Debug.Write(path);
            Debug.Write(path);
            Debug.Write("===============================================================================");
            var image = System.IO.File.OpenRead(path);
            List<string> l = new List<string>();

            DirectoryInfo d = new DirectoryInfo(path);//Assuming Test is your Folder
            FileInfo[] Files = d.GetFiles("*.png"); //Getting Text files
            foreach (FileInfo file in Files)
            {
                l.Add(file.Name);
            }

            return l;
        }
    }
}


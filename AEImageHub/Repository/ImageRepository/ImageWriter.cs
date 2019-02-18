using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using System.Security.Cryptography;
using AEImageHub.Repository;

namespace AEImageHub.Repository
{
    public class ImageWriter : IImageWriter
    {
        public string StoreImage(IFormFile file)
        {
            if (CheckIfImageFile(file))
            {
                return WriteFile(file);
            }
            else
            {
                throw new InvalidImageTypeException();
            }
        }

        /// <summary>
        /// Method to check if file is image file
        /// </summary>
        private bool CheckIfImageFile(IFormFile file)
        {
            byte[] fileBytes;
            using (var ms = new MemoryStream())
            {
                file.CopyTo(ms);
                fileBytes = ms.ToArray();
            }

            return WriterHelper.GetImageFormat(fileBytes) != WriterHelper.ImageFormat.unknown;
        }

        /// <summary>
        /// Method to convert file to MD5 hash
        /// </summary>
        public static String GetImageHash(IFormFile file)
        {
            byte[] fileBytes;
            using (var ms = new MemoryStream())
            {
                file.CopyTo(ms);
                fileBytes = ms.ToArray();
            }
            // hash the bytes
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] hash = md5.ComputeHash(fileBytes);

            // make a hex string of the hash for display or whatever
            StringBuilder sb = new StringBuilder();
            foreach (byte b in hash)
            {
                sb.Append(b.ToString("x2").ToLower());
            }
            return sb.ToString();

        }

        /// <summary>
        /// Method to write file onto disk
        /// </summary>
        private string WriteFile(IFormFile file)
        {
            string fileName = GetImageHash(file);
            Console.Write(fileName);

            var dir = Path.Combine(Directory.GetCurrentDirectory(), "ImageResources");
            var path = Path.Combine(Directory.GetCurrentDirectory(), "ImageResources", fileName);
            bool exists = System.IO.Directory.Exists(dir);
            if (!exists)
            {
                System.IO.Directory.CreateDirectory(dir);
            }

            Console.Write(path);
            using (var bits = new FileStream(path, FileMode.Create))
            {
                file.CopyToAsync(bits);
            }
            return fileName;
        }
    }
}


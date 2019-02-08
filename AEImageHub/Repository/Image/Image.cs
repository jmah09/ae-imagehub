using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Text;
using System.Data.SqlClient;
using System.Diagnostics;
using Microsoft.EntityFrameworkCore;

using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;

namespace AEImageHub.Repository.Image
{
    public class Image : IImage
    {
        DbContext _dbContext;
        IImageWriter _imageWriter;

        public Image(DbContext context, IImageWriter imageWriter)
        {
            _dbContext = context;
            _imageWriter = imageWriter;
        }

        public void GetData()
        {
            Debug.WriteLine("\nQuery data example:");
            using (SqlConnection connection = new SqlConnection(_dbContext.Database.GetDbConnection().ConnectionString))
            {
                Debug.WriteLine(_dbContext.Database.GetDbConnection().ConnectionString);
                Debug.WriteLine("\nQuery data example:");
                Debug.WriteLine("=========================================\n");
                Debug.WriteLine("Image_id/user_id/image_name/size");
                connection.Open();
                StringBuilder sb = new StringBuilder();
                sb.Append("SELECT *");
                sb.Append("FROM [Image]");
                String sql = sb.ToString();
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Debug.WriteLine("{0}, {1}, {2}, {3}", reader[0], reader[1], reader[2], reader[3]);
                        }
                    }
                }
                connection.Close();
            }
        }


        public async Task<IActionResult> UploadImage(IFormFile file)
        {
            var result = await _imageWriter.UploadImage(file);
            return new ObjectResult(result);
        }

    }
}

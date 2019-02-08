using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Text;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Configuration;
using Microsoft.EntityFrameworkCore;

namespace AEImageHub.Repository.Image
{
    public class Image : IImage
    {
        DbContext _DbContext;

        public Image(DbContext context)
        {
            _DbContext = context;
        }

        public void GetData()
        {
            Debug.WriteLine("\nQuery data example:");
            using (SqlConnection connection = new SqlConnection(_DbContext.Database.GetDbConnection().ConnectionString))
            {
                Debug.WriteLine(_DbContext.Database.GetDbConnection().ConnectionString);
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

    }
}

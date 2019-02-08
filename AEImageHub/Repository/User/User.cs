using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Text;
using System.Data.SqlClient;
using System.Diagnostics;
using Microsoft.EntityFrameworkCore;

namespace AEImageHub.Repository.User
{
    public class User
    {
        DbContext _DbContext;

        public User(DbContext context)
        {
            _DbContext = context;
        }

        public void GetData()
        {
            using (SqlConnection connection = new SqlConnection(_DbContext.Database.GetDbConnection().ConnectionString))
            {
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


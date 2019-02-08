using System;
using System.Text;
using System.Data.SqlClient;
using System.Diagnostics;

namespace AEImageHub.DI.SQLServerConnection
{
    public class SQLConnection
    {
        public SQLConnection()
        {
            try
            {
                Debug.WriteLine("Connecting to SQL server ....");
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = "g4g1b.database.windows.net";
                builder.UserID = "g4g1b";
                builder.Password = "nlgpsag777!";
                builder.InitialCatalog = "ihubDB";
     
                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
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
            catch (SqlException e)
            {
                Debug.WriteLine(e.ToString());
            }
            Debug.WriteLine("\nDone. Press enter.");
        }

        public static String getConnectionString()
        {
            Debug.WriteLine("Getting connection string");
            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
            builder.DataSource = "g4g1b.database.windows.net";
            builder.UserID = "g4g1b";
            builder.Password = "nlgpsag777!";
            builder.InitialCatalog = "ihubDB";
            return builder.ConnectionString;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data;
using MySql.Web;
using MySql.Data.MySqlClient;


/*
Staff:
johns.doctor
123asd12

Patient:
john.nordle
password123
*/

namespace EMRSystemMMT.Screens2
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_OnClick(object sender, AuthenticateEventArgs e)
        {
            var builder = new MySqlConnectionStringBuilder
            {
                Server = "undcsmysql.mysql.database.azure.com",
                Database = "micah_j_nelson",
                UserID = "micah.j.nelson@undcsmysql",
                Password = "mnelson7275",
                SslMode = MySqlSslMode.Required,
            };

            using (var connection = new MySqlConnection(builder.ConnectionString))
            {
                connection.Open();
                using (var command = connection.CreateCommand())
                {
                    
                    command.CommandText = "CALL patient_login (\'" + Login1.UserName + "\', \'" + Login1.Password + "\');";
                    using (var reader = command.ExecuteReader())
                    {
                        reader.Read();
                       if (reader.GetString("status").Equals("Success"))
                        {
                            Response.Redirect("Home.aspx");
                        }
                    }
                    
                    command.CommandText = "CALL staff_login (\'" + Login1.UserName + "\', \'" + Login1.Password + "\');";
                    using (var reader = command.ExecuteReader())
                    {
                        reader.Read();
                        if (reader.GetString("status").Equals("Success"))
                        {
                            Response.Redirect("Home.aspx");
                        }
                    }
                }
            }
        }
    }
}

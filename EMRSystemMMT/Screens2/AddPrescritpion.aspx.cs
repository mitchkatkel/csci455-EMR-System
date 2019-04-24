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

namespace EMRSystemMMT.Screens2
{
    public partial class Prescritpion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTxtBox.Text = DateTime.Now.ToString();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
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
                    command.CommandText = "INSERT INTO db455_prescription (patient_id, staff_id, prescription, date, quantity)" +
                        " VALUES (1, 3, '" + PrescriptionTxtBox.Text + "', CURRENT_TIMESTAMP, " +  QuantityTxtBox.Text + ");";
                    command.ExecuteNonQuery(); 

                 
                }
                Response.Redirect("Home.aspx");
            }
        }

        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}
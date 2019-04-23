using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Threading.Tasks;
using MySql.Data;
using MySql.Web;
using MySql.Data.MySqlClient;

namespace EMRSystemMMT.Screens2
{
    public partial class OrderTest : System.Web.UI.Page
    {
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
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
                    using (MySqlDataAdapter dataAdapter = new MySqlDataAdapter())
                    {
                        command.CommandText = "SELECT id, name FROM db455_medical_tests;";
                        dataAdapter.SelectCommand = command;
                        ds = new DataSet();
                        dataAdapter.Fill(ds);
                        DropDownList1.DataTextField = ds.Tables[0].Columns["name"].ToString();
                        DropDownList1.DataValueField = ds.Tables[0].Columns["id"].ToString();
                        DropDownList1.DataSource = ds.Tables[0];
                        DropDownList1.DataBind();

                    }
                }
            }
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {

        }

        protected void CancelBtn_Click(object sender, EventArgs e)
        {

        }
    }
}
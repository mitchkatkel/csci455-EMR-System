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
    public partial class AddPrescirptionSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            var builder = new MySqlConnectionStringBuilder
            {
                Server = "undcsmysql.mysql.database.azure.com",
                Database = "micah_j_nelson",
                UserID = "micah.j.nelson@undcsmysql",
                Password = "mnelson7275",
                SslMode = MySqlSslMode.Required,
            };

            string[] name = SearchBar.Text.Split(' ');
            using (var connection = new MySqlConnection(builder.ConnectionString))
            {
                connection.Open();
                using (var command = connection.CreateCommand())
                {
                    using (MySqlDataAdapter dataAdapter = new MySqlDataAdapter())
                    {
                        if (SearchBar.Text.Length != 0) { 
                        command.CommandText = "SELECT CONCAT( fname, ' ', lname ) AS name, birth_date, address FROM db455_patients WHERE fname LIKE '" + name[0] + "' OR lname LIKE '" + name[1] + "';";
                        } else
                        {
                            command.CommandText = "SELECT CONCAT( fname, ' ', lname ) AS name, birth_date, address FROM db455_patients;";
                        }
                        dataAdapter.SelectCommand = command;
                        using (DataTable dataTable = new DataTable())
                        {
                            dataAdapter.Fill(dataTable);
                            GridView1.DataSource = dataTable;
                            GridView1.DataBind();
                        }

                    }
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("AddPrescritpion.aspx");
        }
    }
}
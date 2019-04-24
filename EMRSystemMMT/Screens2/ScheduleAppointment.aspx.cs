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
    public partial class ScheduleAppointment : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                string iDate = Session["Date"].ToString();
                DateTime oDate = Convert.ToDateTime(iDate);
                DateTextBox.Text = oDate.ToString("yyyy-MM-dd");
                DateTextBox.DataBind();
                using (var connection = new MySqlConnection(builder.ConnectionString))
                {
                    connection.Open();
                    using (var command = connection.CreateCommand())
                    {
                        using (MySqlDataAdapter dataAdapter = new MySqlDataAdapter())
                        {
                            command.CommandText = "SELECT id, CONCAT( fname, ' ', lname ) as name FROM db455_staff WHERE position like 'Medical Doctor'";
                            dataAdapter.SelectCommand = command;
                            ds = new DataSet();
                            dataAdapter.Fill(ds);
                            DoctorDropDownList.DataTextField = ds.Tables[0].Columns["name"].ToString();
                            DoctorDropDownList.DataValueField = ds.Tables[0].Columns["id"].ToString();
                            DoctorDropDownList.DataSource = ds.Tables[0];
                            DoctorDropDownList.DataBind();

                        }
                    }
                }
            }
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
                    command.CommandText = "INSERT INTO db455_appointments (patient_id, staff_id, apt_type, apt_time, cost)" +
                        " VALUES (1, 3, '"+ DescriptionTxtBox.Text + "', '" + DateTextBox.Text + " " + TimeDropDownList.Text + "', 250);";
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
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
        List<string> DoctorList = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTextBox.Text = Session["Date"].ToString();
        }

        protected void TimeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            DoctorList.Clear();
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
                using (var command = connection.CreateCommand)
                {
                    
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
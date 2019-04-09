﻿using System;
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
            //string connection_string = "Server=undcsmysql.mysql.database.azure.com; database=Micah.j.nelson; UID=micah.j.nelson@undcsmysql; password=mnelson7275";
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
                
            }
        }
    }
}
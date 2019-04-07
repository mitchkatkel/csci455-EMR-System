using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
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
        }
    }
}
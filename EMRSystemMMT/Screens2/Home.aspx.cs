using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMRSystemMMT.Screens2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void homeMenu_MenuItemClick(object sender, MenuEventArgs e)
        {
            int index = Int32.Parse(e.Item.Value);
            if (index == 0){
                Server.Transfer("Calendar.aspx");
            }
            else if (index == 1) {

            } else if (index == 2) {
                Server.Transfer("PatientInfo.aspx");
            } else if(index == 3) {

            }
            else if (index == 4) {

            }
            else {

            } 
        }
    }
}
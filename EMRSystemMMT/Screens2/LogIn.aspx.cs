using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMRSystemMMT.Screens2
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_OnClick(object sender, EventArgs e)
        {

        }

        protected void Login1_OnClick(object sender, AuthenticateEventArgs e)
        {
            if (Login1.UserName.Equals("test") && Login1.Password.Equals("test"))
            {
                Server.Transfer("Home.aspx");
            }
        }
    }
}
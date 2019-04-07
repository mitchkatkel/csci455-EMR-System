using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EMRSystemMMT.Screens2
{
    public partial class PatientInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void mnuTabs_MenuItemClick(Object sender, MenuEventArgs e)
        {
            int index = Int32.Parse(e.Item.Value);
            multiTabs.ActiveViewIndex = index;
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            //TODO Save/Update Patient info screen
        }

        protected void CancelBtn_Click(object sender, EventArgs e)
        {

        }

        protected void historyGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



        protected void contactsGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        



    }
}
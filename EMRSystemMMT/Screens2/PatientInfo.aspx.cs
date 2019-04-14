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
    public partial class PatientInfo : System.Web.UI.Page
    {
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
                    command.CommandText = "SELECT * FROM db455_patients WHERE id = 1";
                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            FirstNameTxtBox.Text = reader.GetString(1);
                            LastNameTxtBox.Text = reader.GetString(2);
                            SSNTxtBox.Text = reader.GetString(3);
                            AddressTxtBox.Text = reader.GetString(4);
                            HomePhoneTxtBox.Text = reader.GetString(5);
                            CellPhoneTxtBox.Text = reader.GetString(6);
                            DOBTxtBox.Text = reader.GetDateTime(7).ToShortDateString();
                        }
                    }

                    using (MySqlDataAdapter dataAdapter = new MySqlDataAdapter())
                    {
                        command.CommandText = "SELECT date as Date, mh_type as Type, notes as Notes FROM db455_medical_history WHERE patient_id = 1";
                        dataAdapter.SelectCommand = command;
                        using (DataTable dataTable = new DataTable())
                        {
                            dataAdapter.Fill(dataTable);
                            historyGridView.DataSource = dataTable;
                            historyGridView.DataBind();
                        }
                    }
                }
            }
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
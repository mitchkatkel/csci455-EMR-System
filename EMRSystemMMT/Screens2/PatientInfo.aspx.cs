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
            if (!IsPostBack)
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
                                Session["historyTable"] = dataTable;
                            }
                        }

                        using (MySqlDataAdapter dataAdapter = new MySqlDataAdapter())
                        {
                            command.CommandText = "SELECT name as Name, phone_number as Phone_Number, is_emergency as Is_Emergency, is_hippa as Is_Hippa FROM db455_contacts WHERE patient_id = 1";
                            dataAdapter.SelectCommand = command;
                            using (DataTable dataTable = new DataTable())
                            {
                                dataAdapter.Fill(dataTable);
                                contactsGridView.DataSource = dataTable;
                                contactsGridView.DataBind();
                                Session["contactsTable"] = dataTable;
                            }
                        }

                        command.CommandText = "SELECT * FROM db455_finances WHERE patient_id = 1";
                        using (var reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                InsuranceCoTxtBox.Text = reader.GetString(1);
                                InsuranceIDTxtBox.Text = reader.GetString(2);
                                if (!reader.IsDBNull(3))
                                {
                                    MedicadeIDTxtBox.Text = reader.GetString(3);
                                }
                                if (!reader.IsDBNull(4))
                                {
                                    MedicareIDTxtBox.Text = reader.GetString(4);
                                }
                                BalanceTxtBox.Text = reader.GetString(5);
                            }
                        }

                        using (MySqlDataAdapter dataAdapter = new MySqlDataAdapter())
                        {
                            command.CommandText = "SELECT prescription as Prescription, date as Date, quantity as Quantity FROM db455_prescription WHERE id = 1";
                            dataAdapter.SelectCommand = command;
                            using (DataTable dataTable = new DataTable())
                            {
                                dataAdapter.Fill(dataTable);
                                PrescriptionGridView.DataSource = dataTable;
                                PrescriptionGridView.DataBind();
                                Session["PrescriptionTable"] = dataTable;
                            }
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

        protected void PrescriptionGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void contactsGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            contactsGridView.PageIndex = e.NewPageIndex;
            //Bind data to the GridView control.
            contactsBindData();
        }

        protected void historyGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            historyGridView.PageIndex = e.NewPageIndex;
            //Bind data to the GridView control.
            historyBindData();
        }

        protected void PrescriptionGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            PrescriptionGridView.PageIndex = e.NewPageIndex;
            //Bind data to the GridView control.
            PrescriptionBindData();
        }

        protected void contactsGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //Set the edit index.
            contactsGridView.EditIndex = e.NewEditIndex;
            //Bind data to the GridView control.
            contactsBindData();
        }

        protected void historyGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //Set the edit index.
            historyGridView.EditIndex = e.NewEditIndex;
            //Bind data to the GridView control.
            historyBindData();
        }

        protected void PrescriptionGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //Set the edit index.
            PrescriptionGridView.EditIndex = e.NewEditIndex;
            //Bind data to the GridView control.
            PrescriptionBindData();
        }

        protected void contactsGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Reset the edit index.
            contactsGridView.EditIndex = -1;
            //Bind data to the GridView control.
            contactsBindData();
        }

        protected void historyGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Reset the edit index.
            historyGridView.EditIndex = -1;
            //Bind data to the GridView control.
            historyBindData();
        }

        protected void PrescriptionGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Reset the edit index.
            PrescriptionGridView.EditIndex = -1;
            //Bind data to the GridView control.
            PrescriptionBindData();
        }

        protected void contactsGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
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
                    GridViewRow row = contactsGridView.Rows[e.RowIndex];
                    command.CommandText = "UPDATE db455_contacts set name = '" + ((TextBox)(row.Cells[1].Controls[0])).Text
                                   + "', phone_number = '" + ((TextBox)(row.Cells[2].Controls[0])).Text
                                   + "', is_emergency = " + ((CheckBox)(row.Cells[3].Controls[0])).Checked
                                   + ", is_hippa = " + ((CheckBox)(row.Cells[4].Controls[0])).Checked
                                   + " WHERE id = " + (row.DataItemIndex + 1) + " AND patient_id = 1;";
                    command.ExecuteNonQuery();

                    using (MySqlDataAdapter dataAdapter = new MySqlDataAdapter())
                    {
                        command.CommandText = "SELECT name as Name, phone_number as Phone_Number, is_emergency as Is_Emergency, is_hippa as Is_Hippa FROM db455_contacts WHERE patient_id = 1";
                        dataAdapter.SelectCommand = command;
                        using (DataTable dataTable = new DataTable())
                        {
                            dataAdapter.Fill(dataTable);
                            contactsGridView.DataSource = dataTable;
                            contactsGridView.DataBind();
                            Session["contactsTable"] = dataTable;
                        }
                    }
                }
            }

            //Reset the edit index.
            contactsGridView.EditIndex = -1;

            //Bind data to the GridView control.
            contactsBindData();
        }

        protected void historyGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
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
                    GridViewRow row = historyGridView.Rows[e.RowIndex];
                    command.CommandText = "UPDATE db455_medical_history set date = '" + ((TextBox)(row.Cells[1].Controls[0])).Text
                                   + "', mh_type = '" + ((TextBox)(row.Cells[2].Controls[0])).Text
                                   + "', notes = " + ((TextBox)(row.Cells[3].Controls[0])).Text
                                   + " WHERE id = " + (row.DataItemIndex + 1) + " AND patient_id = 1;";
                    command.ExecuteNonQuery();

                    using (MySqlDataAdapter dataAdapter = new MySqlDataAdapter())
                    {
                        command.CommandText = "SELECT date as Date, mh_type as Type, notes as Notes FROM db455_medical_history WHERE patient_id = 1";
                        dataAdapter.SelectCommand = command;
                        using (DataTable dataTable = new DataTable())
                        {
                            dataAdapter.Fill(dataTable);
                            historyGridView.DataSource = dataTable;
                            historyGridView.DataBind();
                            Session["historyTable"] = dataTable;
                        }
                    }
                }
            }

            //Reset the edit index.
            historyGridView.EditIndex = -1;

            //Bind data to the GridView control.
            historyBindData();
        }

        protected void PrescriptionGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
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
                    GridViewRow row = PrescriptionGridView.Rows[e.RowIndex];
                    command.CommandText = "UPDATE db455_prescription set prescription = '" + ((TextBox)(row.Cells[1].Controls[0])).Text
                                   + "', date = '" + ((TextBox)(row.Cells[2].Controls[0])).Text
                                   + "', quantity = " + ((TextBox)(row.Cells[3].Controls[0])).Text
                                   + " WHERE id = " + (row.DataItemIndex + 1) + " AND patient_id = 1;";
                    command.ExecuteNonQuery();

                    using (MySqlDataAdapter dataAdapter = new MySqlDataAdapter())
                    {
                        command.CommandText = "SELECT prescription as Prescription, date as Date, quantity as Quantity FROM db455_prescription WHERE id = 1";
                        dataAdapter.SelectCommand = command;
                        using (DataTable dataTable = new DataTable())
                        {
                            dataAdapter.Fill(dataTable);
                            PrescriptionGridView.DataSource = dataTable;
                            PrescriptionGridView.DataBind();
                            Session["PrescriptionTable"] = dataTable;
                        }
                    }
                }
            }

            //Reset the edit index.
            PrescriptionGridView.EditIndex = -1;

            //Bind data to the GridView control.
            PrescriptionBindData();
        }

        private void contactsBindData()
        {
            contactsGridView.DataSource = Session["contactsTable"];
            contactsGridView.DataBind();
        }

        private void historyBindData()
        {
            historyGridView.DataSource = Session["historyTable"];
            historyGridView.DataBind();
        }

        private void PrescriptionBindData()
        {
            PrescriptionGridView.DataSource = Session["PrescriptionTable"];
            PrescriptionGridView.DataBind();
        }

        private void GeneralInfo_Update_Button_OnClick(object sender, EventArgs e)
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
                    command.CommandText = "UPDATE db455_patients set fname = " + FirstNameTxtBox.Text +
                                          ", lname = " + LastNameTxtBox.Text + ", ssn = " + SSNTextBox.Text +
                                          ", address = " + AddressTxtBox.Text + ", home_number = " + HomePhoneTxtBox.Text +
                                          ", cell_number = " + CellNumberTxtBox.Text + ", birth_date = " + DOBTxtBox.Text +
                                          " WHERE id = 1;";
                    
                }
            }
        }
    }
}
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
    public partial class ViewAppointment : System.Web.UI.Page
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
                    using (MySqlDataAdapter dataAdapter = new MySqlDataAdapter())
                    {
                        command.CommandText = "SELECT a.apt_time as Date_Time, CONCAT( s.fname, ' ', s.lname ) AS Staff, mt.name as Type, mt.description as Description, t.cost as Cost " +
                            "FROM db455_appointments a " +
                            "JOIN db455_staff s ON s.id = a.staff_id " +
                            "LEFT JOIN db455_ordered_tests t ON t.patient_id = a.patient_id " +
                            "LEFT JOIN db455_medical_tests mt ON t.test_id = mt.id " +
                            "WHERE a.patient_id = 1 AND a.apt_time >= CURRENT_TIMESTAMP;";
                        dataAdapter.SelectCommand = command;
                        using (DataTable dataTable = new DataTable())
                        {
                            dataAdapter.Fill(dataTable);
                            ApptGridView.DataSource = dataTable;
                            ApptGridView.DataBind();
                        }
                    }
                }
            }
        }
    }
}
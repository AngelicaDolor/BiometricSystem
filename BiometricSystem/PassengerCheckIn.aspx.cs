using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BiometricSystem
{
    public partial class PassengerCheckIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GoToPassengerConfirmation(object sender, EventArgs e)
        {
            string ReferenceNumber = tbReferenceNumber.Text;
            string LastName = tbPassengerLastName.Text;
            DateTime dateTime = DateTime.UtcNow;

            try
            {
                using (SqlConnection connection = new SqlConnection())
                {
                    connection.ConnectionString = ConfigurationManager.ConnectionStrings["PassengerCheckIn"].ToString();
                    connection.Open();

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = connection;

                    cmd.CommandText = "Insert into [dbo].[PassengerCheckIn] (ReferenceNumber, LastName, datetime)" +
                        "Values(@ReferenceNumber, @LastName, @datetime)";

                    cmd.Parameters.Add(new SqlParameter("@ReferenceNumber", ReferenceNumber));
                    cmd.Parameters.Add(new SqlParameter("@LastName", LastName));
                    cmd.Parameters.Add(new SqlParameter("@datetime", dateTime));

                    cmd.CommandType = System.Data.CommandType.Text;

                    cmd.ExecuteNonQuery();

                    cmd.Dispose();
                    connection.Close();
                }

                Response.Redirect("~/PassengerConfirmation.aspx");
            }
            catch (Exception exception)
            {
                Debug.WriteLine("The error is: " + exception.ToString());
            }
        }
    }
}

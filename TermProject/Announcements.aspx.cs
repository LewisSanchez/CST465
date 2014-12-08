using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;


namespace TermProject
{
    public partial class Announcements : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uxSubmitAnnouncement_Click(object sender, EventArgs e)
        {
            //  string queryString = "INSERT INTO Announcement VALUES(" + Membership.GetUser().ProviderUserKey.ToString() + "';";
            string title = ((TextBox)uxLoginView.FindControl("uxTitle")).Text;
            string body = ((TextBox)uxLoginView.FindControl("uxBody")).Text;

            string queryString = "INSERT INTO Announcement (UserID, Title, Body) VALUES ('" + Membership.GetUser().ProviderUserKey.ToString() + "', '" + title + "', '" + body + "');";

            using (SqlConnection connection = new SqlConnection("Server=aura.students.cset.oit.edu;database=LewisSanchez;user id=LewisSanchez; password=LewisSanchez;"))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                command.CommandType = System.Data.CommandType.Text;
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                    }
                }
                finally
                {
                    reader.Close();
                }
            }
            Response.Redirect("Announcements.aspx");
        }

        protected void uxTitleLink_Click(object sender, EventArgs e)
        {
            string announcementID = " ";
            string queryString = "SELECT AnnouncementID, Title FROM Announcement WHERE Title ='" + ((Button)sender).Text + "';";

            using (SqlConnection connection = new SqlConnection("Server=aura.students.cset.oit.edu;database=LewisSanchez;user id=LewisSanchez; password=LewisSanchez;"))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                command.CommandType = System.Data.CommandType.Text;
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        announcementID = reader[0].ToString();
                    }
                }
                finally
                {
                    reader.Close();
                }
            }
            Response.Redirect("Announcement.aspx?Title=" + announcementID);
        }
    }
}
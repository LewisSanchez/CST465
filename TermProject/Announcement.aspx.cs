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
    public partial class Announcement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AnnouncementDataSource.SelectCommand = "SELECT Announcement.AnnouncementID, UserName, Title, Body FROM Announcement JOIN dbo.aspnet_Users ON Announcement.UserID = dbo.aspnet_Users.UserID WHERE AnnouncementID = " + Request.QueryString[0].ToString() + ";";

            CommentDataSource.SelectCommand = "SELECT UserName, CommentDescription FROM dbo.aspnet_Users JOIN Comment ON dbo.aspnet_Users.UserID = Comment.UserID WHERE Comment.AnnouncementID = " + Request.QueryString[0].ToString() + ";";

            AnnouncementFormView.DataSourceID = "AnnouncementDataSource";
            AnnouncementFormView.DataBind();

            CommentGridView.DataSourceID = "CommentDataSource";
            CommentGridView.DataBind();
        }

        protected void uxSubmitComment_Click(object sender, EventArgs e)
        {
            string queryString = "INSERT INTO LewisSanchez.Comment (AnnouncementID, UserID, CommentDescription) VALUES (@AnnouncementID, @UserID, @CommentDescription);";
            using (SqlConnection connection = new SqlConnection("Server=aura.students.cset.oit.edu;database=LewisSanchez;user id=LewisSanchez; password=LewisSanchez;"))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                command.CommandType = System.Data.CommandType.Text;
                command.Parameters.AddWithValue("@AnnouncementID", Request.QueryString[0].ToString());
                command.Parameters.AddWithValue("@UserID", Membership.GetUser().ProviderUserKey.ToString());
                command.Parameters.AddWithValue("@CommentDescription", ((TextBox)uxCommentLoginView.FindControl("uxComment")).Text);
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
            Response.Redirect("Announcement.aspx?ID=" + Request.QueryString[0].ToString());
        }
    }
}
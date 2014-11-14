using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void uxSubmit_Click(Object sender, EventArgs e)
    {
        ProfileData prof_data = new ProfileData();

        prof_data.Name = uxName.Text;
        prof_data.EmailAddress = uxEmailAddress.Text;
        prof_data.UserType = uxUserType.Text;
        prof_data.Hobby = uxHobby.Text;
        prof_data.Band = uxBand.Text;
        prof_data.Biography = uxBiography.Text;
        prof_data.CoursePrefix = uxCoursePrefix.Text;
        prof_data.CourseNumber = uxCourseNumber.Text;
        prof_data.CourseDescription = uxCourseDescription.Text;

        Session["PersonalInfo"] = prof_data;
        Response.Redirect("ViewYourProfile.aspx");
    }
}
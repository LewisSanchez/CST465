using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewYourProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProfileData prof_data = (ProfileData) Session["PersonalInfo"];
        uxName.Text = prof_data.Name;
        uxEmailAddress.Text = prof_data.EmailAddress;
        uxUserType.Text = prof_data.UserType;
        uxHobby.Text = prof_data.Hobby;
        uxBand.Text = prof_data.Band;
        uxBiography.Text = prof_data.Biography;
        uxCoursePrefix.Text = prof_data.CoursePrefix;
        uxCourseNumber.Text = prof_data.CourseNumber;
        uxCourseDescription.Text = prof_data.CourseDescription;
    }
}
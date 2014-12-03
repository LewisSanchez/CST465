using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class ViewProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProfilePersistance prof_pers = new ProfilePersistance();
        ProfileData data = prof_pers.LoadProfile();

        uxName.Text = data.Name;
        uxEmailAddress.Text = data.EmailAddress;
        uxUserType.Text = data.UserType;
        uxHobby.Text = data.Hobby;
        uxBand.Text = data.Band;
        uxBiography.Text = data.Biography;
        uxCoursePrefix.Text = data.CoursePrefix;
        uxCourseNumber.Text = data.CourseNumber;
        uxCourseDescription.Text = data.CourseDescription;
    }
}
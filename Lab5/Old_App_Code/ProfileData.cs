using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProfileData
/// </summary>
public class ProfileData
{
    String m_name;
    String m_email_address;
    String m_user_type;
    String m_hobby;
    String m_band;
    String m_biography;
    String m_course_prefix;
    String m_course_number;
    String m_course_description;

	public ProfileData()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public String Name
    {
        get { return m_name; }
        set { m_name = value; }
    }

    public String EmailAddress
    {
        get { return m_email_address; }
        set { m_email_address = value; }
    }

    public String UserType
    {
        get { return m_user_type; }
        set { m_user_type = value; }
    }

    public String Hobby
    {
        get { return m_hobby; }
        set { m_hobby = value; }
    }

    public String Band
    {
        get { return m_band; }
        set { m_band = value; }
    }

    public String Biography
    {
        get { return m_biography; }
        set { m_biography = value; }
    }

    public String CoursePrefix
    {
        get { return m_course_prefix; }
        set { m_course_prefix = value; }
    }

    public String CourseNumber
    {
        get { return m_course_number; }
        set { m_course_number = value; }
    }

    public String CourseDescription
    {
        get { return m_course_description; }
        set { m_course_description = value; }
    }
}
<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="Page1" Codebehind="Page1.aspx.cs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Edit Your Profile</title>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Edit Your Profile</h1>

    
    Name:<asp:TextBox ID="uxName" runat="server" />
    <asp:RequiredFieldValidator runat="server" ControlToValidate="uxName" ErrorMessage="Please enter your name!" />
    <br /><br />

    Email Address: <asp:TextBox ID="uxEmailAddress" runat="server" />
    <asp:RequiredFieldValidator runat="server" ControlToValidate="uxEmailAddress" ErrorMessage="Please enter your email!" />
    <br /><br />

    User Type: <asp:DropDownList ID="uxUserType" runat="server">
        <asp:ListItem Value="0">--Select--</asp:ListItem>
        <asp:ListItem>Student</asp:ListItem>
        <asp:ListItem>Faculty/Staff</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator runat="server" InitialValue="0" ControlToValidate="uxUserType" ErrorMessage="Please select a user type!" />
    <br /><br />

    Hobby: <asp:TextBox ID="uxHobby" runat="server" />
    <asp:RequiredFieldValidator runat="server" ControlToValidate="uxHobby" ErrorMessage="Please enter your hobby!" />
    <br /><br />

    Band: <asp:TextBox ID="uxBand" runat="server" />
    <asp:RequiredFieldValidator runat="server" ControlToValidate="uxBand" ErrorMessage="Please enter your favorite band!" />
    <br /><br />

    Biography: <asp:Textbox ID="uxBiography" TextMode="MultiLine" runat="server" />
    <asp:RequiredFieldValidator runat="server" ControlToValidate="uxBiography" ErrorMessage="Please a short bio!" />
    <br /><br />

    <asp:Table ID="Table1" runat="server">
        <asp:TableHeaderRow runat="server">
            <asp:TableHeaderCell>Course Prefix</asp:TableHeaderCell>
            <asp:TableHeaderCell>Course Number</asp:TableHeaderCell>
            <asp:TableHeaderCell>Course Description</asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>
                 <asp:TextBox ID="uxCoursePrefix" runat="server"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="uxCoursePrefix" ErrorMessage="Please enter course prefix!" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="uxCourseNumber" runat="server" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="uxCourseNumber" ErrorMessage="Please enter course number!" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="uxCourseDescription" runat="server" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="uxCourseDescription" ErrorMessage="Please enter course description!" />

            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    <asp:ValidationSummary HeaderText="Enter the following: " DisplayMode="BulletList" EnableClientScript="true" runat="server" />

    <asp:HiddenField id="uxNickname" runat="server" Value="LouMan" />

    <asp:Button ID="uxSubmit" Text="Save Profile" OnClick="uxSubmit_Click" runat="server" />

</asp:Content>
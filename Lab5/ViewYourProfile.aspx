<%@ Page Title="ViewYourProfile" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="ViewYourProfile" Codebehind="ViewYourProfile.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>View Your Profile</h1>
    <span class="fieldTitle">Name: </span><asp:Literal ID="uxName" runat="server" />
    <br /><br />
    <span class="fieldTitle">Email Address: </span><asp:Literal ID="uxEmailAddress" runat="server" />
    <br /><br />
    <span class="fieldTitle">User Type: </span><asp:Literal ID="uxUserType" runat="server" />
    <br /><br />
    <span class="fieldTitle">Hobby: </span><asp:Literal ID="uxHobby" runat="server" />
    <br /><br />
    <span class="fieldTitle">Band: </span><asp:Literal ID="uxBand" runat="server" />
    <br /><br />
    <span class="fieldTitle">Biography: </span><asp:Literal ID="uxBiography" runat="server" />
    <br /><br />
    <span class="fieldTitle">Course Prefix: </span><asp:Literal ID="uxCoursePrefix" runat="server" />
    <br /><br />
    <span class="fieldTitle">Course Number: </span><asp:Literal ID="uxCourseNumber" runat="server" />
    <br /><br />
    <span class="fieldTitle">Course Description: </span><asp:Literal ID="uxCourseDescription" runat="server" />
    <br /><br />
</asp:Content>


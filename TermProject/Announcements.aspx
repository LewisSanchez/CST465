<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Announcements.aspx.cs" Inherits="TermProject.Announcements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Announcements</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Announcements</h1>

    <asp:LoginView ID="uxLoginView" runat="server">
        <AnonymousTemplate>You must be logged in to post announcements...</AnonymousTemplate>

        <LoggedInTemplate>
            <p>
                You are logged in as
                <asp:LoginName ID="LoginName" runat="server" />
                <br />
                <br />
            </p>

            <asp:Label AssociatedControlID="uxTitle" Text="Title: " runat="server" />
            <asp:TextBox ID="uxTitle" runat="server" />
            <asp:RequiredFieldValidator ControlToValidate="uxTitle" Text="*" ErrorMessage="Title required" runat="server" />
            <br />
            <br />

            <asp:Label AssociatedControlID="uxBody" Text="Body: " runat="server" />
            <asp:TextBox ID="uxBody" TextMode="MultiLine" runat="server" />
            <asp:RequiredFieldValidator ControlToValidate="uxBody" Text="*" ErrorMessage="Body required" runat="server" />
            <br />
            <br />

            <asp:Button ID="uxSubmitAnnouncement" Text="Submit Announcement" BackColor="DarkGray" OnClick="uxSubmitAnnouncement_Click" runat="server" />

        </LoggedInTemplate>
    </asp:LoginView>
    <br />

    <asp:SqlDataSource ID="DataSource" ConnectionString="Server=aura.students.cset.oit.edu;database=LewisSanchez;user id=LewisSanchez; password=LewisSanchez;" SelectCommand="SELECT AnnouncementID, UserName, Title, Body FROM dbo.aspnet_Users JOIN Announcement ON dbo.aspnet_Users.UserID = Announcement.UserID;" runat="server"></asp:SqlDataSource>
    
    <asp:Repeater DataSourceID="DataSource" ID="uxRepeater" runat="server">
        <ItemTemplate>
            <%# Eval("UserName")  %>
            <br />
           <strong>Title: </strong> <asp:HyperLink Text='<%# Eval("Title")  %>' ID="uxTitleLink" NavigateUrl='<%# "~/Announcement.aspx?ID=" + Eval("AnnouncementID") %>' runat="server" />
            <br />
           <strong>Body: </strong> <%# Eval("Body")  %>
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>

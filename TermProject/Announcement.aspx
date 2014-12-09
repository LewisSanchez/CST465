<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Announcement.aspx.cs" Inherits="TermProject.Announcement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Announcement</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Announcement</h1>

    <asp:SqlDataSource ID="AnnouncementDataSource" ConnectionString="Server=aura.students.cset.oit.edu;database=LewisSanchez;user id=LewisSanchez; password=LewisSanchez;" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="CommentDataSource" ConnectionString="Server=aura.students.cset.oit.edu;database=LewisSanchez;user id=LewisSanchez; password=LewisSanchez;" runat="server"></asp:SqlDataSource>

    <asp:FormView ID="AnnouncementFormView" runat="server">
        <ItemTemplate>
            <%# Eval("Title") %>
            <br />

            <%# Eval("Body") %>
            <br />
            <br />
        </ItemTemplate>
    </asp:FormView>

    <asp:GridView ID="CommentGridView" runat="server" />

    <asp:LoginView ID="uxCommentLoginView" runat="server">
        <AnonymousTemplate>You must be logged in to post a comment...</AnonymousTemplate>

        <LoggedInTemplate>
            <asp:Label AssociatedControlID="uxComment" Text="Comment: " runat="server" />
            <asp:TextBox ID="uxComment" TextMode="MultiLine" runat="server" />

            <asp:Button ID="uxSubmitComment" Text="Submit Comment" BackColor="DarkGray" OnClick="uxSubmitComment_Click" runat="server" />
        </LoggedInTemplate>
    </asp:LoginView>

</asp:Content>

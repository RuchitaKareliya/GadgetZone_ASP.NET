<%@ Page Title="" Language="C#" MasterPageFile="~/gz.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="gadgetzone.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="fmain">
        <div class="forms">
            <h2 class="form-title">ContactsUs</h2>

            <%--                <form id="form1" runat="server">--%>
            <div class="main-user-info">
                <div class="user-input-box">
                    <asp:Label ID="Label1" runat="server" Text="Email" Font-Size="X-Large" ForeColor="White"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your email"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="user-input-box">
                <asp:Label ID="Label3" runat="server" Text="Message" CssClass="user-input-box" Font-Size="X-Large" ForeColor="White"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Write Your any message" TextMode="MultiLine"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox2" ForeColor="Red" Font-Size="X-Large"></asp:RequiredFieldValidator>
            <div class="form-submit-btn">
                <asp:Button ID="Button1" runat="server" Text="Contactus" OnClick="Button1_Click1" />
            </div>
            <%--                </form>--%>
        </div>
    </div>
</asp:Content>
<%-- <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>--%>
<%-- <body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>

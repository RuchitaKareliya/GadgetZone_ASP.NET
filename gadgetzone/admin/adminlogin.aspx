<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="gadgetzone.admin.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/loginstyle.css" rel="stylesheet" />
    <title></title>
</head>
<body class="img">
    <div class="loginbox">
        <img src="../img/logo.jpg" alt="Alternate Text" class="user" />
        <h2>Login</h2>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Username" CssClass="lbluser"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txtuser" placeholder="Enter Username"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="Password" CssClass="lblpass"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="txtpass" placeholder="Enter Password" ></asp:TextBox>
                
                <br />

                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btnsubmit" OnClick="Button1_Click1" />
    </form>
    </div>
</body>
</html>

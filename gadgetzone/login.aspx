<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="gadgetzone.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link href="css/loginstyle.css" rel="stylesheet" />
</head>
<body>
     <div class="loginbox">
        <img src="img/user-icon3.jpg" alt="Alternate Text" class="user" />  
        <h2>Login</h2>
            <form id="form1" runat="server">

                
<%--                <asp:Label ID="Label1" runat="server" Text="Username" CssClass="lbluser"></asp:Label>            --%>
                <div class="input-field">
                    <i class="fas fa-envelope icon"></i>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="txtuser" placeholder="Enter Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid email" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
                </div>       
               <div class="input-field">  
<%--           <asp:Label ID="Label2" runat="server" Text="Password" CssClass="lblpass"></asp:Label>--%>
                   <i class="fas fa-lock icon"></i>
                   <asp:TextBox ID="TextBox2" runat="server" CssClass="txtpass" placeholder="Enter Password"></asp:TextBox>
                    </div>  
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Password must be Minimum 8 characters atleast 1UpperCaseAlphabet, 1LowerCaseAlphabet, 1Number and 1SpecialCharacter" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&amp;])[A-Za-z\d$@$!%*?&amp;]{8,}"></asp:RegularExpressionValidator>
                    
                <br />
        
                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btnsubmit" OnClick="Button1_Click" />

                <br />

                <asp:Label ID="Label3" runat="server" Text="Don't Have An Account?" CssClass="lblnote" ForeColor="White" ></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btnlink" CausesValidation="false" OnClick="LinkButton1_Click">Create New Account</asp:LinkButton>

    </form>
         </div>
</body>
</html>

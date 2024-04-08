<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="gadgetzone.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

    <link href="css/registrationstyle.css" rel="stylesheet" />
</head>
<body>
    <div class="loginbox">
        <img src="img/user-icon3.jpg" alt="Alternate Text" class="user" />
        <h2>Registration</h2>
        <form id="form1" runat="server">
            <%--<asp:Label ID="Label1" runat="server" Text="FullName" CssClass="lblfull"></asp:Label>--%>
            <br />
            <div class="input-field">
                <i class="fas fa-user"></i>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txtfull" placeholder="Enter Fullname"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox1" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter only characters" ForeColor="Red" ControlToValidate="TextBox1" ValidationExpression="[a-zA-Z ]*$" Font-Size="Smaller"></asp:RegularExpressionValidator>
            <br />
            <%--<asp:Label ID="Label2" runat="server" Text="Username" CssClass="lbluser"></asp:Label>--%>
            <div class="input-field">
                <i class="fas fa-envelope icon"></i>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="txtuser" placeholder="Enter Email"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox2" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter a valid email!" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="\S+@\S+\.\S+" Font-Size="Smaller"></asp:RegularExpressionValidator>
            <br />
            <%--<asp:Label ID="Label3" runat="server" Text="Password" CssClass="lblpass"></asp:Label>--%>
            <div class="input-field">
                <i class="fas fa-lock icon"></i>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="txtpass" placeholder="Enter Password" TextMode="password"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox3" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Password must be Minimum8 characters at least 1UpperCaseAlphabet, 1LowerCaseAlphabet, 1Number and 1SpecialCharacter" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}" Font-Size="Smaller"></asp:RegularExpressionValidator>
            <br />
            <%--<asp:Label ID="Label4" runat="server" Text="Conform Password" CssClass="lblcpass"></asp:Label>--%>
            <div class="input-field">
                <i class="fas fa-lock icon"></i>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="txtcpass" Placeholder="Confirm Password" TextMode="password"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox4" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password and ConfirmPassword do not match" ControlToValidate="TextBox4" ForeColor="Red" ControlToCompare="TextBox3" Font-Size="Smaller"></asp:CompareValidator>
            <br />
            <%--<asp:Label ID="Label5" runat="server" Text="Mobile" CssClass="lblmob"></asp:Label>--%>
            <div class="input-field">
                <i class="fas fa-mobile"></i>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="txtmob" Placeholder="Enter mobile no"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox5" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Phone number must be 10 characters long number and first digit can't be 0" ValidationExpression="^[1-9][0-9]{9}$" ControlToValidate="TextBox5" ForeColor="Red" Font-Size="Smaller"></asp:RegularExpressionValidator>

            <br />
            <%--<asp:Label ID="Label6" runat="server" Text="Address" CssClass="lbladd"></asp:Label>--%>
            <div class="input-field">
                <i class="fas fa-address-card"></i>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="txtadd" Placeholder="Enter your address" Font-Size="Smaller"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox6" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>
            <br />
            <%--<asp:Label ID="Label7" runat="server" Text="Pin_code" CssClass="lblpin"></asp:Label>--%>
            <div class="input-field">
                <i class="fas fa-map-pin"></i>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="txtpin" Placeholder="Enter your Pin_code"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox7" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="PinCode must be 6 characters long number!" ControlToValidate="TextBox7" ForeColor="Red" ValidationExpression="^[0-9]{6}$" Font-Size="Smaller"></asp:RegularExpressionValidator>
            <br />
            <%--<asp:Label ID="Label8" runat="server" Text="City_Name" CssClass="lblcity"></asp:Label>--%>
            <div class="input-field">
                <i class="fas fa-city"></i>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="txtcity" Placeholder="Enter your city_name"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please fill out this field" ForeColor="Red" ControlToValidate="TextBox8" Font-Size="Smaller"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Please enter only characters" ValidationExpression="[a-zA-Z]*$" ForeColor="Red" ControlToValidate="TextBox8" Font-Size="Smaller"></asp:RegularExpressionValidator>
            <br />
            <%--<asp:Label ID="Label9" runat="server" Text="State_Name" CssClass="lblstat"></asp:Label>--%>
            <div class="input-field">
                <i class="fas fa-city"></i>
                <asp:TextBox ID="TextBox9" runat="server" CssClass="txtstat" Placeholder="Enter your state_name"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please fill out this field " ControlToValidate="TextBox9" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Please enter only characters" ValidationExpression="[a-zA-Z]*$" ControlToValidate="TextBox9" ForeColor="Red" Font-Size="Smaller"></asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btnsubmit" OnClick="Button1_Click" />
            <asp:Label ID="Label10" runat="server" Text="Have An Account?" CssClass="lblnote"></asp:Label><asp:LinkButton ID="LinkButton1" runat="server" CssClass="btnlink" CausesValidation="false" PostBackUrl="~/login.aspx"> Login Here</asp:LinkButton>
        </form>
    </div>
</body>
</html>

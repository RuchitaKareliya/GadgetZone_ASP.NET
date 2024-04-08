<%@ Page Title="" Language="C#" MasterPageFile="~/gz.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="gadgetzone.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<section class="contact" id="contacrt">
         <br /><br /><br />

    <h1 class="heading"><span>Login</span>   Form</h1>
        </section>--%>
     <div class="fmain">
      <div class="forms">
    <table style="width: 1230px">
        <tr>
            <td>Check Out Order....
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table width: 522px; margin-left: 466px">
                    <tr>
                        <td>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            Full Name:
                            <%--<br />
                            <br />
                            <br />
                            email:--%>
                            <%--Total_product:--%>
                            <br />
                            <br />
                            <br />
                            Total Payment:
                            <br />
                            <br />
                            <br />
                            Mobile No:
                            <br />
                            <br />
                            <br />
                            Address:
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            City:
                            <br />
                            <br />
                            <br />
                            State:
                            <br />
                            <br />
                            <br />
                            Pincode:
                        </td>
                        <td>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox1" runat="server" BorderWidth="2px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please fill out this field" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter only character" ForeColor="Red" ControlToValidate="TextBox1" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                            <%--<asp:Label ID="lblproduct" runat="server"></asp:Label>--%>
                            <%--<br />
                            <br />
                            <br />
                            <asp:Label ID="user" runat="server" ForeColor="White" Font-Size="Medium"></asp:Label>--%>
                            <br />
                            <br />
                            <br />
                            <asp:Label ID="lblpayment" runat="server" ForeColor="White" Font-Size="Medium" ></asp:Label>
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" BorderWidth="2px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please fill out this field" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Phone number must be 10 characters long number and first digit can't be 0" ValidationExpression="^[1-9][0-9]{9}$" ControlToValidate="TextBox3" ForeColor="Red" Font-Size="Smaller"></asp:RegularExpressionValidator>
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please fill out this field" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox2" runat="server" BorderWidth="2px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please fill out this field" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Only Characters" ValidationExpression="[a-zA-Z]*$" ForeColor="Red" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
                            <br />
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox5" runat="server" BorderWidth="2px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please fill out this field" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Only Characters" ValidationExpression="[a-zA-Z]*$" ForeColor="Red" ControlToValidate="TextBox5"></asp:RegularExpressionValidator>
                            <br />
                            <br />
                            <br />

                            <asp:TextBox ID="TextBox6" runat="server" TextMode="Number" BorderWidth="2px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please fill out this field" ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="PinCode must be 6 characters long number!" ControlToValidate="TextBox6" ForeColor="Red" ValidationExpression="^[0-9]{6}$" Font-Size="Smaller"></asp:RegularExpressionValidator>
                        </td>
                        <td style="width: 6px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="width: 6px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Select Paymnt Type :</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="txt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>CREDIT CARD</asp:ListItem>
                                <asp:ListItem>DEBIT CARD</asp:ListItem>
                                <asp:ListItem>CASH ON DELIVERY</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </td>
                        <td style="width: 6px">
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            <br />
                            <br />
                        </td>
                        <td>
                            <asp:Label ID="lbl" runat="server"></asp:Label>
                        </td>
                        <td style="width: 6px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl" colspan="2">
                            <asp:Panel ID="Panel1" runat="server" Visible="False" BorderWidth="2px" Height="129px" Style="margin-left: 26px" Width="459px">
                                <table class="style8">
                                    <tr>
                                        <td>Bank Name :
                                        </td>
                                        <td style="text-align: left">
                                            <asp:DropDownList ID="drpbankname" runat="server" CssClass="txt">
                                                <asp:ListItem>SBI</asp:ListItem>
                                                <asp:ListItem>ICICI</asp:ListItem>
                                                <asp:ListItem>BOB</asp:ListItem>
                                                <asp:ListItem>HDFC</asp:ListItem>
                                                <asp:ListItem>DENABANK</asp:ListItem>
                                                <asp:ListItem>UNION BANK</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Branch&nbsp; :</td>
                                        <td style="text-align: left">
                                            <asp:DropDownList ID="drpbranch" runat="server" CssClass="txt">
                                                <asp:ListItem>BARODA</asp:ListItem>
                                                <asp:ListItem>HIMMATNAGAR</asp:ListItem>
                                                <asp:ListItem>AHMEDABAD</asp:ListItem>
                                                <asp:ListItem>MUMBAI</asp:ListItem>
                                                <asp:ListItem>SURAT</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>16 Digit Card&nbsp; No :</td>
                                        <td>
                                            <asp:TextBox ID="txtcardno" runat="server" MaxLength="16" Width="171px" CssClass="txt"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="txtcardno" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>CVV No :</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="txtccv" runat="server" MaxLength="3" Width="68px" CssClass="txt"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="txtccv" ForeColor="Red"></asp:RequiredFieldValidator>
                                            &nbsp;3 Digit Only</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td style="text-align: left">
                                            <asp:Button ID="Button2" runat="server" CssClass="btn" OnClick="Button2_Click"
                                                Text="PAY NOW" />
                                        </td>
                                    </tr>

                                </table>
                            </asp:Panel>
                        </td>
                        <td style="width: 6px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btncash" runat="server" CssClass="btn" OnClick="btncash_Click"
                                Text="PAY NOW" Visible="False" />
                        </td>
                        <td style="width: 6px">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
          </div>
         </div>
    <%--<div class="container">

<section class="checkout-form">

   <h1 class="heading">complete your order</h1>
    <div class="fmain">
      <div class="forms">
        <h1 class="form-title">Bill Payment</h1>
 
          <div class="main-user-info">
               <div class="user-input-box">
                   <asp:Label ID="Label1" runat="server" Text="FullName" Font-Size="X-Large"></asp:Label>
                   <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your fullname"></asp:TextBox>
               </div>

               <div class="user-input-box">
                  <asp:Label ID="Label2" runat="server" Text="Email" Font-Size="X-Large"></asp:Label>
                  <asp:TextBox ID="TextBox2" runat="server"  placeholder="Enter enter mail_addrss"></asp:TextBox>
               </div>
                 <div class="user-input-box">
                     <asp:Label ID="Label3" runat="server" Text="Address" Font-Size="X-Large"></asp:Label>
                     <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter your Address" TextMode="MultiLine"></asp:TextBox>
                  </div>

                <div class="user-input-box">
                    <asp:Label ID="Label4" runat="server" Text="Mobile_No:" Font-Size="X-Large"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter your Mobile_No"></asp:TextBox>
                     </div>

                <div class="user-input-box">
                    <asp:Label ID="Label5" runat="server" Text="City" Font-Size="X-Large"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter your City name"></asp:TextBox>
                    </div>

                <div class="user-input-box">
                    <asp:Label ID="Label6" runat="server" Text="State" Font-Size="X-Large"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter your State name"></asp:TextBox>
                    </div>

                <div class="user-input-box">
                    <asp:Label ID="Label7" runat="server" Text="Pin_Code" Font-Size="X-Large"></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter your PinCode name" EnableViewState="False"></asp:TextBox>
                    </div>
                </div>
          </div>
        </div>
    </section>
    </div> --%>
</asp:Content>
<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>

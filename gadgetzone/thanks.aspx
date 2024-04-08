
<%@ Page Title="" Language="C#" MasterPageFile="~/gz.Master" AutoEventWireup="true" CodeBehind="thanks.aspx.cs" Inherits="gadgetzone.thanks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="contact" id="contacrt">
         <br /><br /><br />

    <h1 class="heading"><span>Your</span>Bill</h1>
        </section> 
     <div class='order-message-container'>
    <div class='message-container'>
        <h3>thank you for shopping!</h3>
        <div class='order-detail'>
            <span class='total'>
                <asp:Label ID="Label2" runat="server" Text="Total"></asp:Label>
                <asp:Label ID="btot" runat="server" Text="Label"></asp:Label>
                </span>
        </div>
        <div class='customer-details'>
            <p><span>
            <asp:Label ID="Label3" runat="server" Text="User Name:"></asp:Label></span>
            <asp:Label ID="txtun" runat="server" Text="Label"></asp:Label>
                </p>
            <p><span>
            <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label></span>
            <asp:Label ID="txtem" runat="server" Text="Label"></asp:Label>
                </p>
            <p><span>
            <asp:Label ID="Label5" runat="server" Text="Address:"></asp:Label></span>
            <asp:Label ID="txtadd" runat="server" Text="Label"></asp:Label></p>
            <p><span>
            <asp:Label ID="Label6" runat="server" Text="Mobile_no:"></asp:Label></span>
            <asp:Label ID="txtmo" runat="server" Text="Label"></asp:Label></p>
            <p><span>
            <asp:Label ID="Label7" runat="server" Text="City:"></asp:Label></span>
            <asp:Label ID="txtc" runat="server" Text="Label"></asp:Label></p>
            <p><span>
            <asp:Label ID="Label8" runat="server" Text="State:"></asp:Label></span>
            <asp:Label ID="txts" runat="server" Text="Label"></asp:Label></p>
            <p><span>
            <asp:Label ID="Label9" runat="server" Text="Payment_type:"></asp:Label></span>
            <asp:Label ID="txtmethod" runat="server" Text="Label"></asp:Label></p>
            </div>
            <asp:Button ID="Button1" runat="server" class='btn' Text="continue shopping" OnClick="Button1_Click" />
        
    </div>
         </div>
        


            <%--<div class='order-message-container'>
              <div class='message-container'>
                <h3>thank you for shopping!</h3>
                    <div class='order-detail'>
            <span class='total'>
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("total_amount") %>'></asp:Label></span>
         </div>
         <div class='customer-details'>
            <p> your name : <span>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("fullname") %>'></asp:Label></span> </p>
            
            <p> your email : <span>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("email") %>'></asp:Label></span> </p>
            <p> your mobileno : <span>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("mobile_no") %>'></asp:Label></span> </p>
            <p> your address : <span>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("address") %>'></asp:Label></span> </p>
            <p> your payment mode : <span>
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("payment_type") %>'></asp:Label></span> </p>
            <p></p>
         </div>
            <a href='index.aspx' class='btn'>continue shopping</a>
         </div>
      </div>--%>
       

        
   
        
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

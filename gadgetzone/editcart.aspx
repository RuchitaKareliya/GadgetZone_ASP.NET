<%@ Page Title="" Language="C#" MasterPageFile="~/gz.Master" AutoEventWireup="true" CodeBehind="editcart.aspx.cs" Inherits="gadgetzone.editcart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: 25px;
            width: 201px;
        }
        .auto-style3 {
            background-color: wheat;
            width: 851px;
        }
        .auto-style4 {
            height: 61px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <div align="center" class="edb">
        <table height="300" border="1" class="auto-style3" >
            <br />
            <br />
            <br />
            <tr>
                <th colspan="3" align="center">
                    <h1 class="auto-style4">Product Details</h1>
                </th>
            </tr>
            <br />
            <br />
            <br />
            <tr>
                <td rowspan="3" align="center" valign="middle">
                    <asp:Image ID="Image1" runat="server" Height="300" Width="300" />

                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
                <td align="center" class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Product_Name"></asp:Label></td>
                <td align="center" class="item">
                    <asp:Label ID="lbl_name" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td align="center" class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label></td>
                <td align="center" class="item">
                    <asp:Label ID="lbl_price" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td align="center" class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Quantity"></asp:Label></td>
                <td align="center" class="item">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" class="qitem" Width="228px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="3" align="center" >
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" class="bst" Text="Add to cart" OnClick="Button1_Click" BackColor="White" Font-Size="X-Large" Height="62px" Width="176px" BorderColor="Black" BorderWidth="3px" BorderRadius="5px" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
            </div>

    </p>
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

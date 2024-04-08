<%@ Page Title="" Language="C#" MasterPageFile="~/gz.Master" AutoEventWireup="true" CodeBehind="addtocart.aspx.cs" Inherits="gadgetzone.addtocart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 350px;
            height: 66px;
        }
        .auto-style2 {
            height: 66px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="products">
        <h1 class="heading"><span> AddToCart </span></h1>
    </section>
    <div align="center">
    <table>
        <tr>
            <td colspan="2">
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" Width="1174px">
                    <FooterStyle BackColor="#FF9933" HorizontalAlign="Center" />
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                            <HeaderStyle/>
                            <ItemStyle Height="150px" HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="product_name" HeaderText="Product_Name" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("quantity") %>'></asp:Label>

                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="total" HeaderText="Total_Price" />
                        <asp:TemplateField HeaderText="Update">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Blue" NavigateUrl='<%# "~/editcart.aspx?c_Id=" + Eval("c_Id")  %>'>Edit</asp:HyperLink>
                            </ItemTemplate>
                            <ItemStyle ForeColor="#003366" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl='<%# "~/deletecart.aspx?c_Id=" + Eval("c_Id") %>'>Delete</asp:HyperLink>
                            </ItemTemplate>
                            <ControlStyle ForeColor="#003366" />
                            <ItemStyle ForeColor="Blue" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#FF9933" />
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#FF6600" ForeColor="White" Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="X-Large" />
                    <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Medium" />
                    <SelectedRowStyle BackColor="#FF3300" />
                </asp:GridView>

            </td>
        </tr>
        <tr>
            <td align="center" valign="middle" class="auto-style1">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;</td>
                <td align="center" class="auto-style2">
                    <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Total" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="#333333"></asp:Label>
                &nbsp;<asp:Label ID="lbltotal" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Gray"></asp:Label>
            </td>
        </tr>
        <tr>
           
            <td colspan="2" align="right">
                <br />
               
                <asp:Button ID="Button1" runat="server" Text="OntinueShopping" BorderColor="Black" BorderStyle="Solid" Font-Size="X-Large" OnClick="Button1_Click" Width="246px" />
                <asp:Button ID="Button2" runat="server" Text="Checkout" BorderColor="Black" BorderStyle="Solid" Font-Size="X-Large" OnClick="Button2_Click" Width="167px" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
           
            <td colspan="2" align="right">
                &nbsp;</td>
        </tr>
        <tr>
           
            <td colspan="2" align="right">
                &nbsp;</td>
        </tr>
    </table>
     </div>
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

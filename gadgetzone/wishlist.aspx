<%@ Page Title="" Language="C#" MasterPageFile="~/gz.Master" AutoEventWireup="true" CodeBehind="wishlist.aspx.cs" Inherits="gadgetzone.wishlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="products">
        <h1 class="heading"><span> WishList </span></h1>
    </section>
    <div align="center">
    <table>
        <tr>
            <td colspan="2">
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" Width="1439px">
                    <FooterStyle BackColor="#FF9933" HorizontalAlign="Center" />
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                            <HeaderStyle/>
                            <ItemStyle Height="150px" HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="product_name" HeaderText="Product_Name" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:BoundField DataField="decryption" HeaderText="Decryption" />
               <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl='<%# "~/deletewishlist.aspx?Id=" + Eval("Id") %>'>Delete</asp:HyperLink>
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
        
                </table>
           </div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [wishlist]" DeleteCommand="DELETE FROM [wishlist] WHERE [Id] = @Id" InsertCommand="INSERT INTO [wishlist] ([product_name], [image], [price], [decryption], [email]) VALUES (@product_name, @image, @price, @decryption, @email)" UpdateCommand="UPDATE [wishlist] SET [product_name] = @product_name, [image] = @image, [price] = @price, [decryption] = @decryption, [email] = @email WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="product_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="image" Type="String"></asp:Parameter>
            <asp:Parameter Name="price" Type="Single"></asp:Parameter>
            <asp:Parameter Name="decryption" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="product_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="image" Type="String"></asp:Parameter>
            <asp:Parameter Name="price" Type="Single"></asp:Parameter>
            <asp:Parameter Name="decryption" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
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

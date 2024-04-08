<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admingz.Master" AutoEventWireup="true" CodeBehind="wishlist.aspx.cs" Inherits="gadgetzone.admin.wishlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- MAIN -->
        <main>
            <div class="head-title">
                <div class="left">
                    <h1>Wishlist</h1>
                    <ul class="breadcrumb">
                        <li>
                            <a href="wishlist.aspx">Wishlist</a>
                        </li>
                        <li><i class='bx bx-chevron-right' ></i></li>
                        <li>
                            <a class="active" href="wishlist.aspx">wishlist</a>
                        </li>
                    </ul>
                    <p>
                        &nbsp;</p>
                    <p>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="206px" HorizontalAlign="Center" Width="1161px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                <asp:BoundField DataField="decryption" HeaderText="decryption" SortExpression="decryption" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </p>
                    <p>
                        &nbsp;</p>
                    <p>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [wishlist] WHERE [Id] = @Id" InsertCommand="INSERT INTO [wishlist] ([product_name], [image], [price], [decryption], [email]) VALUES (@product_name, @image, @price, @decryption, @email)" SelectCommand="SELECT * FROM [wishlist]" UpdateCommand="UPDATE [wishlist] SET [product_name] = @product_name, [image] = @image, [price] = @price, [decryption] = @decryption, [email] = @email WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="product_name" Type="String" />
                                <asp:Parameter Name="image" Type="String" />
                                <asp:Parameter Name="price" Type="String" />
                                <asp:Parameter Name="decryption" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="product_name" Type="String" />
                                <asp:Parameter Name="image" Type="String" />
                                <asp:Parameter Name="price" Type="String" />
                                <asp:Parameter Name="decryption" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </p>
                </div>
                <!--<a href="#" class="btn-download">
                    <i class='bx bxs-cloud-download' ></i>
                    <span class="text">Download PDF</span>
                </a>-->
            </div>
            </main>
</asp:Content>
<%-- <!DOCTYPE html>

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

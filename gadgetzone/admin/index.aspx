<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admingz.Master"  AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="gadgetzone.admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>Dashboard</h1>
					<ul class="breadcrumb">

						<li>
							<a href="index.aspx">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right'></i></li>
						<li>
                            
							<a class="active" href="index.aspx">Home</a>
						</li>
					</ul>
				    <p>
                        &nbsp;</p>
                    <p>
			<%--<div class="head-title">--%>
<%--				<div class="left">--%>
					<h1>Cart</h1>
				    <p>
                        &nbsp;</p>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="c_Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="206px" HorizontalAlign="Center" Width="1161px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="c_Id" HeaderText="c_Id" InsertVisible="False" ReadOnly="True" SortExpression="c_Id" />
                                <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
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
                    
<%--                    </div>--%>
               <%-- </div>--%>
                        
                    </p>
                    <p>
                        &nbsp;</p>
                    <p>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cart]"></asp:SqlDataSource>
                    </p>
                    <p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
                    <p>
                        <h1>Bill</h1>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="b_Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="350px" HorizontalAlign="Center" Width="1731px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="b_Id" HeaderText="b_Id" InsertVisible="False" ReadOnly="True" SortExpression="b_Id" />
                                <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="payment_type" HeaderText="payment_type" SortExpression="payment_type" />
                                <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" SortExpression="mobile_no" />
                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                                <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                                <asp:BoundField DataField="total_amount" HeaderText="total_amount" SortExpression="total_amount" />
                                <asp:BoundField DataField="payment_time" HeaderText="payment_time" SortExpression="payment_time" />
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [bill]">
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

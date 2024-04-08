<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admingz.Master"  AutoEventWireup="true" CodeBehind="userlist.aspx.cs" Inherits="gadgetzone.admin.userlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>RegisterUser</h1>
					<ul class="breadcrumb">
						<li>
							<a href="#">RegisterUser</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="userlist.aspx">Userlist</a>
						</li>
					</ul>
                    <p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
                    <ul class="breadcrumb">
                        <li>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:GridView ID="userdata" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="206px" Width="1161px" >
                                <AlternatingRowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                    <asp:BoundField DataField="confirm_password" HeaderText="confirm_password" SortExpression="confirm_password" />
                                    <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" SortExpression="mobile_no" />
                                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                    <asp:BoundField DataField="pin_code" HeaderText="pin_code" SortExpression="pin_code" />
                                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                    <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <EmptyDataRowStyle Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Height="40px" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" HorizontalAlign="Center" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
						</li>
					</ul>
				    <p>
                        &nbsp;</p>
                    <p>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [registration]">
                        </asp:SqlDataSource>
                    </p>
				</div>
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

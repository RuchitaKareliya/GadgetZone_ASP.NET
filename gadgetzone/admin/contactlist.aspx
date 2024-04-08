﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admingz.Master" AutoEventWireup="true" CodeBehind="contactlist.aspx.cs" Inherits="gadgetzone.admin.contactlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">&nbsp;<!-- MAIN --><main><div class="head-title">
				<div class="left">
					<h1>ContactUs</h1>
					<ul class="breadcrumb">
						<li>
							<a href="#">ContactUs</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="contactlist.aspx">ContactUs_Userlist</a>
						</li>
					</ul>
				    <p>
                        &nbsp;</p>
                    <p>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="206px" HorizontalAlign="Center" Width="1161px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
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
                        &nbsp;</p>
                    <p>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [contactus] WHERE [Id] = @Id" InsertCommand="INSERT INTO [contactus] ([email], [message]) VALUES (@email, @message)" SelectCommand="SELECT * FROM [contactus]" UpdateCommand="UPDATE [contactus] SET [email] = @email, [message] = @message WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="message" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="message" Type="String" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
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
</head>--%>
<%--<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>
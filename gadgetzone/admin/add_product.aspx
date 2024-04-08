<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admingz.Master"  AutoEventWireup="true" CodeBehind="add_product.aspx.cs" Inherits="gadgetzone.admin.add_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>Product</h1>
					<ul class="breadcrumb">
						<li>
							<a href="add_product.aspx">Product_List</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="add_product_form.aspx">AddRecord</a>
						</li>
					</ul>
				    <p>
                        &nbsp;</p>
                    
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="206px" Width="1161px" DataKeyNames="Id" HorizontalAlign="Center" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                
                                <%--<asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="edit" runat="server" Text="Edit" CommandName="Edit" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:LinkButton ID="update" runat="server" Text="Update" CommandName="Update" />
                                        <asp:LinkButton ID="cancel_update" runat="server" Text="Cancel" CommandName="Cancel"/>
                                    </EditItemTemplate>
                                </asp:TemplateField>--%>
                                <asp:TemplateField HeaderText="Id" SortExpression="Id">

                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
  
                                <asp:TemplateField HeaderText="Categories_name" SortExpression="Categories_name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("categories_name") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="inp" Text='<%#Eval("categories_name") %>'>
                  <asp:ListItem></asp:ListItem>
                  <asp:ListItem>Laptop</asp:ListItem>
                  <asp:ListItem>Mobile</asp:ListItem>
                  <asp:ListItem>Telvision</asp:ListItem>
                  <asp:ListItem>Camera</asp:ListItem>
                  <asp:ListItem>Speaker</asp:ListItem>
                  <asp:ListItem></asp:ListItem>
                  
              </asp:DropDownList>
<%--                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("categories_name") %>' ></asp:TextBox>--%>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Company" SortExpression="Company">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("company") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="inp" Text='<%#Eval("company") %>' >
                  <asp:ListItem></asp:ListItem>
                  <asp:ListItem>Apple</asp:ListItem>
                  <asp:ListItem>Asus</asp:ListItem>
                  <asp:ListItem>Dell</asp:ListItem>
                  <asp:ListItem>HP</asp:ListItem>
                  <asp:ListItem>Lenovo</asp:ListItem>
                  <asp:ListItem>Sony</asp:ListItem>
                  <asp:ListItem>Panasonic</asp:ListItem>
                  <asp:ListItem>Samsung</asp:ListItem>
                  <asp:ListItem>LG</asp:ListItem>
                  <asp:ListItem>Redmi</asp:ListItem>
                  <asp:ListItem>Realme</asp:ListItem>
                  <asp:ListItem>Canon</asp:ListItem>
                  <asp:ListItem>Nikon</asp:ListItem>
                  <asp:ListItem>Kodak</asp:ListItem>
                  <asp:ListItem>Boss</asp:ListItem>

                  <asp:ListItem>Bose</asp:ListItem>
                  <asp:ListItem>JBL</asp:ListItem>
                  <asp:ListItem>Klipsch</asp:ListItem>
              </asp:DropDownList>
<%--                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("company") %>'></asp:TextBox>--%>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="product_name" SortExpression="product_name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("product_name") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%#Eval("product_name") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="decryption" SortExpression="decryption">
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("decryption") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%#Eval("decryption") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="price" SortExpression="price">
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%#Eval("price") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="quantity" SortExpression="quantity">
                                    <ItemTemplate>
                                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("quantity") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%#Eval("quantity") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="date&time" SortExpression="datetime">
                                    <ItemTemplate>
                                        <asp:Label ID="Label9" runat="server" Text='<%#Eval("date_time") %>'></asp:Label>
                                    </ItemTemplate>
                                    
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Image" SortExpression="image">
                                    <ItemTemplate>
                                        <asp:Image ID="Label8" runat="server" ImageUrl='<%#Eval("image") %>' Height="100px" Width="100px"></asp:Image>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Image ID="imgUpload" runat="server" ImageUrl='<%#Eval("image") %>' Height="100px" Width="100px"></asp:Image>
                                        <asp:FileUpload ID="file1" runat="server" Text='<%#Eval("image") %>'/>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowEditButton="true" ButtonType="Link" EditText="Edit" UpdateText="Update" CancelText="Cancel"/>
                                <asp:CommandField ShowDeleteButton="true" ButtonType="Link" DeleteText="Delete" />
                                
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Height="40px" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />

                        </asp:GridView>
                    <p>
                        &nbsp;</p>
                    <br />
                    <p>
                        &nbsp;</p>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/gz.Master" AutoEventWireup="true" CodeBehind="singleproduct.aspx.cs" Inherits="gadgetzone.singleproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="Id">
            <ItemTemplate>
                <div class="small-container single-product">
                    <div class="row">
                        <div class="col-2">
                            <br />
                            <%--image:--%>

                            <%--<asp:Label ID="Label1" runat="server" Text='<%# Eval("image").ToString().Substring(2) %>' />--%>

                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image")%>' />
                        </div>
                        <div class="col-2">
                            <%-- categories_name:--%>
                            <%--<asp:Label ID="categories_nameLabel" runat="server" Text='<%# Eval("categories_name") %>' />
                            <br />
                            <br />--%>
                            <%-- company:--%>
                            <%--<asp:Label ID="companyLabel" runat="server" Text='<%# Eval("company") %>' />
                            <br />
                            <br />--%>
                            <%-- product_name:--%>
                            <asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' />
                            <br />
                            <br />
                            <%--decryption:--%>
                            <asp:Label ID="decryptionLabel" runat="server" Text='<%# Eval("decryption") %>' />
                            <br />
                            <br />
                            <%-- price:--%>
                            <div><i class="fas fa-rupee-sign"></i>
                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                </div>
                            <br />
                            <br />
                            <%-- quantity:--%>
                            <%-- <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' />--%>
                            <asp:TextBox ID="TextBox1" runat="server" Text="1"></asp:TextBox>
                            <%--<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" Width="184px">
									<asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
				</asp:DropDownList>--%>
                            <br />
                            <br />
                            <div> <span><i class="fas fa-shopping-cart"></i> 
                            <asp:Button ID="Button1" runat="server" Text="Add_To_Cart" Height="40px" Width="178px" OnClick="Button1_Click" /></span>
                                </div>
                            <br />
                                <div><span><i class="fas fa-heart"></i></span>
                            <asp:Button ID="Button2" runat="server" Text="Add_To_Wishlist" Height="40px" Width="210px" OnClick="Button2_Click" />
                                </div>
                            <br />
                            <br />
                            <%--date_time:
            <asp:Label ID="date_timeLabel" runat="server" Text='<%# Eval("date_time") %>' />
            <br />--%>
                            <br />
                            <%--date_time:
            <asp:Label ID="date_timeLabel" runat="server" Text='<%# Eval("date_time") %>' />
            <br />--%>
                            <br />
                            <h3>Product Detils<i class="fas fa-indent"></i></h3>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
   <br />
	
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
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

<%--<EditItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
		<ItemTemplate >
             <div class="small-container single-product">
		<div class="row">
			<div class="col-2"> --%>

				<%--<asp:ImageButton ID="ImageButton1" runat="server" Text='<%# Eval("image") %>' ImageAlign="Middle" Width="559px" />--%>
				<%--<asp:Image ID="Image1" runat="server" Text='<%# Eval("image") %>'/>--%>
				<%--<img src="<?php echo $path.$idata['img'];?>" width="100%" id="ProductImg">--%>
				<%--<div class="small-img-row">
					<div class="small-img-col">
						<img src="../gz/admin/images/apple 2.jpg" width="100%" class="small-img">
					</div>
					<div class="small-img-col">
						<img src="../gz/admin/images/apple 4.jpg" width="100%" class="small-img">
					</div>
					<div class="small-img-col">
						<img src="../gz/admin/images/apple 5.jpg" width="100%" class="small-img">
					</div>
					<div class="small-img-col">
						<img src="../gz/admin/images/apple 6.jpg" width="100%" class="small-img">
					</div>
				</div>--%>
			<%--</div>
			<div class="col-2">
				<asp:Label ID="Label1" runat="server" Text='<%# Eval("company") %>'></asp:Label>
				<br />
                <br />
				<asp:Label ID="Label2" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
				<br />
                <br />
				<asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>
				<br />
                <br />
				<asp:Label ID="Label4" runat="server" Text='<%# Eval("decryption") %>'></asp:Label>
				<br />
				<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" Width="91px">
									<asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
				</asp:DropDownList>
				<br />
                <br />--%>
				<%--<p><?php echo $idata['company'];  ?></p>
				<h1><?php echo $idata['product_name'];  ?></h1>
				<h4><i class="fas fa-rupee-sign"><?php echo $idata['price'];  ?></i></h4>
				<h4><?php echo $idata['decryption'];  ?></h4>--%>
				<%--<select>
					<option>select size</option>
					<option>st size</option>
					<option>select size</option>
					<option>select size</option>
					<option>select size</option>
				</select>--%>
				<%--<a class="btn" href="add_to_cart.php?c_id=<?php echo $idata['id'];?>&product_name=<?php echo $idata['product_name'];?>&image=<?php echo $idata['img'];?>&price=<?php echo $idata['price'];?>" name="add_to_cart">Add to cart</a>--%>
				<%--<select>
					<option>select size</option>
					<option>st size</option>
					<option>select size</option>
					<option>select size</option>
					<option>select size</option>
				</select>--%>
				<%--<asp:Button ID="Button1" runat="server" Text="Add_To_Cart" Height="40px" Width="178px"/>
				<br />
                <br />
                <br />--%>
                <%--<a class="btn" href="add_to_cart.php?c_id=<?php echo $idata['id'];?>&product_name=<?php echo $idata['product_name'];?>&image=<?php echo $idata['img'];?>&price=<?php echo $idata['price'];?>" name="add_to_cart">Add to cart</a>--%>
				<%--<h3>Product Detils<i class="fas fa-indent"></i></h3>
				<br>--%>
				
			<%--</div>
		</div>
	</div>--%>
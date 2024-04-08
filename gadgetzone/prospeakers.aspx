<%@ Page Title="" Language="C#" MasterPageFile="~/gz.Master" AutoEventWireup="true" CodeBehind="prospeakers.aspx.cs" Inherits="gadgetzone.prospeakers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- apple Speaker start -->
    <headertemplate>
        <h1 class="heading"> Apple <span> Speaker </span></h1>
    </headertemplate>
    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" RepeatColumns="3" DataSourceID="SqlDataSource1">
		<EditItemStyle Height="100px" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
        <ItemTemplate>
		<td>
			<div class = "products">
				<div class = "container">
			    	<div class="product-items">
						<div class="product">
							<div class="product-content">
								<div class="product-img" >
									<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"Singleproduct.aspx?id="+ Eval("Id") %>'>
									 <%--image:--%>
										<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' />
											<br />
										</asp:HyperLink>
								
										</div>
										<div class="product-btns">
											<%--<asp:Button ID="Button3" runat="server" Text="wishlist" class="btn-heart" NavigateUrl='<%#"wishlist.aspx?id="+ Eval("Id") %>' OnClick="Button3_Click"/>
											<asp:Button ID="Button4" runat="server" Text="add_to_cart" class="btn-cart" NavigateUrl='<%#"addtocart.aspx?id="+ Eval("Id") %>' OnClick="Button4_Click"/>--%>
										</div>
								</div>
									<div class="product-info">
										<div class="product-info-top">
									<%--product_name:--%>
											<asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' />
												<br />
										</div>
									<%--decryption:--%>
										 <asp:Label ID="decryptionLabel" runat="server" Text='<%# Eval("decryption") %>'  class="product-name" />
										<br />
									<%--price:--%>
										<div><i class="fas fa-rupee-sign"></i>
										<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></div>
										<br />		
										<asp:TextBox ID="TextBox1" runat="server" Text="1" EnableTheming="True" ForeColor="White" ReadOnly="True" TextMode="Number"></asp:TextBox>
							</div>
						</div>
					</div>
				</div>		
			</div>
           
            <%--decryption:
            <asp:Label ID="decryptionLabel" runat="server" Text='<%# Eval("decryption") %>' />
            <br />--%>
            
           
         </td>			
		</ItemTemplate>
    </asp:DataList>
<br />
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE (([categories_name] = @categories_name) AND ([company] = @company))">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="speaker" Name="categories_name" QueryStringField="cat" Type="String" />
            <asp:QueryStringParameter DefaultValue="apple" Name="company" QueryStringField="com" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <!-- apple Speaker end -->

    <!-- sony Speaker start -->
    <headertemplate>
        <h1 class="heading">Sony <span>Speaker </span></h1>
    </headertemplate>
    <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" DataSourceID="SqlDataSource2" RepeatColumns="3" >
	<EditItemStyle Height="100px" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
		<ItemTemplate>
		<td>
			<div class = "products">
				<div class = "container">
			    	<div class="product-items">
						<div class="product">
							<div class="product-content">
								<div class="product-img" >
									<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"Singleproduct.aspx?id="+ Eval("Id") %>'>
									 <%--image:--%>
										<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' />
											<br />
										</asp:HyperLink>
								
										</div>
										<div class="product-btns">
											<%--<asp:Button ID="Button3" runat="server" Text="wishlist" class="btn-heart" NavigateUrl='<%#"wishlist.aspx?id="+ Eval("Id") %>' OnClick="Button3_Click"/>
											<asp:Button ID="Button4" runat="server" Text="add_to_cart" class="btn-cart" NavigateUrl='<%#"addtocart.aspx?id="+ Eval("Id") %>' OnClick="Button4_Click"/>--%>
										</div>
								</div>
									<div class="product-info">
										<div class="product-info-top">
									<%--product_name:--%>
											<asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' />
												<br />
										</div>
									<%--decryption:--%>
										 <asp:Label ID="decryptionLabel" runat="server" Text='<%# Eval("decryption") %>'  class="product-name" />
										<br />
									<%--price:--%><div><i class="fas fa-rupee-sign"></i>
										<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></div>
										<br />	
										<asp:TextBox ID="TextBox1" runat="server" Text="1" EnableTheming="True" ForeColor="White" ReadOnly="True" TextMode="Number"></asp:TextBox>
							</div>
						</div>
					</div>
				</div>		
			</div>
           
            <%--decryption:
            <asp:Label ID="decryptionLabel" runat="server" Text='<%# Eval("decryption") %>' />
            <br />--%>
            
           
         </td>			
		</ItemTemplate>
								
</asp:DataList>
	<br />
	<br />

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [products] WHERE (([categories_name] = @categories_name) AND ([company] = @company))">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="cat" DefaultValue="speaker" Name="categories_name" Type="String"></asp:QueryStringParameter>
            <asp:QueryStringParameter QueryStringField="com" DefaultValue="sony" Name="company" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <!-- sony Speaker end -->

        <!-- boss Speaker start -->
    <headertemplate>
        <h1 class="heading">Bose <span>Speaker </span></h1>
    </headertemplate>
    <asp:DataList ID="DataList3" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" RepeatColumns="3" DataSourceID="SqlDataSource3">
		<EditItemStyle Height="100px" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
		<ItemTemplate>
		<td>
			<div class = "products">
				<div class = "container">
			    	<div class="product-items">
						<div class="product">
							<div class="product-content">
								<div class="product-img" >
									<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"Singleproduct.aspx?id="+ Eval("Id") %>'>
									 <%--image:--%>
										<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' />
											<br />
										</asp:HyperLink>
								
										</div>
										<div class="product-btns">
											<%--<asp:Button ID="Button5" runat="server" Text="wishlist" class="btn-heart" NavigateUrl='<%#"wishlist.aspx?id="+ Eval("Id") %>' OnClick="Button5_Click"/>
											<asp:Button ID="Button6" runat="server" Text="add_to_cart" class="btn-cart" NavigateUrl='<%#"addtocart.aspx?id="+ Eval("Id") %>' OnClick="Button6_Click"/>--%>
										</div>
								</div>
									<div class="product-info">
										<div class="product-info-top">
									<%--product_name:--%>
											<asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' />
												<br />
										</div>
									<%--decryption:--%>
										 <asp:Label ID="decryptionLabel" runat="server" Text='<%# Eval("decryption") %>'  class="product-name" />
										<br />
									<%--price:--%><div><i class="fas fa-rupee-sign"></i>
										<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></div>
										<br />	
										<asp:TextBox ID="TextBox1" runat="server" Text="1" EnableTheming="True" ForeColor="White" ReadOnly="True" TextMode="Number"></asp:TextBox>
							</div>
						</div>
					</div>
				</div>		
			</div>
           
            <%--decryption:
            <asp:Label ID="decryptionLabel" runat="server" Text='<%# Eval("decryption") %>' />
            <br />--%>
            
           
         </td>			
		</ItemTemplate>
    </asp:DataList>
	<br />
	<br />

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [products] WHERE (([categories_name] = @categories_name) AND ([company] = @company))">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="cat" DefaultValue="speaker" Name="categories_name" Type="String"></asp:QueryStringParameter>
            <asp:QueryStringParameter QueryStringField="com" DefaultValue="bose" Name="company" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <!-- boss Speaker end -->

        <!-- jbl Speaker start -->
    <headertemplate>
        <h1 class="heading">JBL <span>Speaker </span></h1>
    </headertemplate>
    <asp:DataList ID="DataList4" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" RepeatColumns="3" DataSourceID="SqlDataSource4">
		<EditItemStyle Height="100px" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
		<ItemTemplate>
		<td>
			<div class = "products">
				<div class = "container">
			    	<div class="product-items">
						<div class="product">
							<div class="product-content">
								<div class="product-img" >
									<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"Singleproduct.aspx?id="+ Eval("Id") %>'>
									 <%--image:--%>
										<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' />
											<br />
										</asp:HyperLink>
								
										</div>
										<div class="product-btns">
											<%--<asp:Button ID="Button7" runat="server" Text="wishlist" class="btn-heart" NavigateUrl='<%#"wishlist.aspx?id="+ Eval("Id") %>' OnClick="Button7_Click"/>
											<asp:Button ID="Button8" runat="server" Text="add_to_cart" class="btn-cart" NavigateUrl='<%#"addtocart.aspx?id="+ Eval("Id") %>' OnClick="Button8_Click"/>--%>
										</div>
								</div>
									<div class="product-info">
										<div class="product-info-top">
									<%--product_name:--%>
											<asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' />
												<br />
										</div>
									<%--decryption:--%>
										 <asp:Label ID="decryptionLabel" runat="server" Text='<%# Eval("decryption") %>'  class="product-name" />
										<br />
									<%--price:--%><div><i class="fas fa-rupee-sign"></i>
										<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></div>
										<br />		
										<asp:TextBox ID="TextBox1" runat="server" Text="1" EnableTheming="True" ForeColor="White" ReadOnly="True" TextMode="Number"></asp:TextBox>
							</div>
						</div>
					</div>
				</div>		
			</div>
           
            <%--decryption:
            <asp:Label ID="decryptionLabel" runat="server" Text='<%# Eval("decryption") %>' />
            <br />--%>
            
           
         </td>			
		</ItemTemplate>
    </asp:DataList>
	<br />
	<br />

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [products] WHERE (([categories_name] = @categories_name) AND ([company] = @company))">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="cat" DefaultValue="speaker" Name="categories_name" Type="String"></asp:QueryStringParameter>
            <asp:QueryStringParameter QueryStringField="com" DefaultValue="jbl" Name="company" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <!-- jbl Speaker end -->

        <!-- Klipsch Speaker start -->
    <headertemplate>
        <h1 class="heading">Klipsch <span>Speaker </span></h1>
    </headertemplate>
    <asp:DataList ID="DataList5" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" RepeatColumns="3" DataSourceID="SqlDataSource5">
		<EditItemStyle Height="100px" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
		<ItemTemplate>
		<td>
			<div class = "products">
				<div class = "container">
			    	<div class="product-items">
						<div class="product">
							<div class="product-content">
								<div class="product-img" >
									<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"Singleproduct.aspx?id="+ Eval("Id") %>'>
									 <%--image:--%>
										<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' />
											<br />
										</asp:HyperLink>
								
										</div>
										<div class="product-btns">
											<%--<asp:Button ID="Button9" runat="server" Text="wishlist" class="btn-heart" NavigateUrl='<%#"wishlist.aspx?id="+ Eval("Id") %>' OnClick="Button9_Click" />
											<asp:Button ID="Button10" runat="server" Text="add_to_cart" class="btn-cart" NavigateUrl='<%#"addtocart.aspx?id="+ Eval("Id") %>' OnClick="Button10_Click"/>--%>
										</div>
								</div>
									<div class="product-info">
										<div class="product-info-top">
									<%--product_name:--%>
											<asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' />
												<br />
										</div>
									<%--decryption:--%>
										 <asp:Label ID="decryptionLabel" runat="server" Text='<%# Eval("decryption") %>'  class="product-name" />
										<br />
									<%--price:--%><div><i class="fas fa-rupee-sign"></i>
										<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></div>
										<br />		
										<asp:TextBox ID="TextBox1" runat="server" Text="1" EnableTheming="True" ForeColor="White" ReadOnly="True" TextMode="Number"></asp:TextBox>
							</div>
						</div>
					</div>
				</div>		
			</div>
           
            <%--decryption:
            <asp:Label ID="decryptionLabel" runat="server" Text='<%# Eval("decryption") %>' />
            <br />--%>
            
           
         </td>			
		</ItemTemplate>
    </asp:DataList>
	<br />
	<br />

    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [products] WHERE (([categories_name] = @categories_name) AND ([company] = @company))">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="cat" DefaultValue="speaker" Name="categories_name" Type="String"></asp:QueryStringParameter>
            <asp:QueryStringParameter QueryStringField="com" DefaultValue="Klipsch" Name="company" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <!-- Klipsch Speaker end -->
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

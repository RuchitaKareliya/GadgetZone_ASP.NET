<%@ Page Title="" Language="C#" MasterPageFile="~/gz.Master" AutoEventWireup="true" CodeBehind="prolaptops.aspx.cs" Inherits="gadgetzone.prolaptops" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!--Apple laptop start -->	
	<HeaderTemplate><h1 class="heading"> Apple <span>Laptop</span> </h1></HeaderTemplate>
<asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" >
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
										<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
											</div>
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
             <asp:QueryStringParameter DefaultValue="laptop" Name="categories_name" QueryStringField="cat" Type="String" />
             <asp:QueryStringParameter DefaultValue="apple" Name="company" QueryStringField="com" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
	<br />
	     <!--Apple laptop end-->	


	     <!--Asus laptop start -->
	
	<HeaderTemplate><h1 class="heading"> Asus <span>Laptop</span> </h1></HeaderTemplate>
<asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" DataSourceID="SqlDataSource2" RepeatColumns="3">
	<EditItemStyle Height="100px" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
		<ItemTemplate>
		<td>
			<div class = "products">
				<div class = "container">
			    	<div class="product-items">
						<div class="product">
							<div class="product-content">
								<div class="product-img" >
<%--									<asp:HyperLink ID="HyperLink2" runat="server" >HyperLink</asp:HyperLink>--%>
									<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"Singleproduct.aspx?id="+ Eval("Id") %>'>
									 <%--image:--%>
<%--										<asp:Image ID="Image1" runat="server"  />--%>
										<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' />
											<br />
										</asp:HyperLink>
								
										</div>
										<div class="product-btns">
											<%--<asp:Button ID="Button1" runat="server" Text="wishlist" class="btn-heart" NavigateUrl='<%#"wishlist.aspx?id="+ Eval("Id") %>' OnClick="Button1_Click"/>
											<asp:Button ID="Button2" runat="server" Text="add_to_cart" class="btn-cart" NavigateUrl='<%#"addtocart.aspx?id="+ Eval("Id") %>' OnClick="Button2_Click"/>--%>
										</div>
								</div>
									<div class="product-info">
										<div class="product-info-top">
									<%--product_name:--%>
<%--											<asp:Label ID="Label1" runat="server" Text=''></asp:Label>--%>
											<asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' />
												<br />
										</div>
									<%--decryption:--%>
										 <asp:Label ID="decryptionLabel" runat="server" Text='<%# Eval("decryption") %>'  class="product-name" />
										<br />
									<%--price:--%>
										<div><i class="fas fa-rupee-sign"></i>
										<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
											</div>
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


     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE (([categories_name] = @categories_name) AND ([company] = @company))">
         <SelectParameters>
             <asp:QueryStringParameter DefaultValue="laptop" Name="categories_name" QueryStringField="cat" Type="String" />
             <asp:QueryStringParameter DefaultValue="asus" Name="company" QueryStringField="com" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>


     <!--Asus laptop end -->	


	     <!--Dell laptop start -->	
	<HeaderTemplate><h1 class="heading"> Dell <span>Laptop</span> </h1></HeaderTemplate>
<asp:DataList ID="DataList3" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" DataSourceID="SqlDataSource3" RepeatColumns="3">
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
									<%--price:--%>
										<div><i class="fas fa-rupee-sign"></i>
										<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
											</div>
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


     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE (([categories_name] = @categories_name) AND ([company] = @company))">
         <SelectParameters>
             <asp:QueryStringParameter DefaultValue="laptop" Name="categories_name" QueryStringField="cat" Type="String" />
             <asp:QueryStringParameter DefaultValue="dell" Name="company" QueryStringField="com" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>


     <!--Dell laptop end -->	


	     <!--Hp laptop start -->
	<HeaderTemplate><h1 class="heading"> Hp <span>Laptop</span> </h1></HeaderTemplate>
<asp:DataList ID="DataList4" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" DataSourceID="SqlDataSource4" RepeatColumns="3">
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
									<%--price:--%>
										<div><i class="fas fa-rupee-sign"></i>
										<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
											</div>
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

     <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE (([categories_name] = @categories_name) AND ([company] = @company))">
         <SelectParameters>
             <asp:QueryStringParameter DefaultValue="laptop" Name="categories_name" QueryStringField="cat" Type="String" />
             <asp:QueryStringParameter DefaultValue="hp" Name="company" QueryStringField="com" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>

     <!--Hp laptop start -->	

	  
	     <!--Lenove laptop start -->
	<HeaderTemplate><h1 class="heading"> Lenovo <span> Laptop</span> </h1></HeaderTemplate>
<asp:DataList ID="DataList5" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" DataSourceID="SqlDataSource5" RepeatColumns="3">
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
											<%--<asp:Button ID="Button9" runat="server" Text="wishlist" class="btn-heart" NavigateUrl='<%#"wishlist.aspx?id="+ Eval("Id") %>' OnClick="Button9_Click"/>
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
									<%--price:--%>
										<div><i class="fas fa-rupee-sign"></i>
										<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
											</div>
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

	<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE (([categories_name] = @categories_name) AND ([company] = @company))">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="laptop" Name="categories_name" QueryStringField="cat" Type="String" />
            <asp:QueryStringParameter DefaultValue="lenovo" Name="company" QueryStringField="com" Type="String" />
        </SelectParameters>
     </asp:SqlDataSource>
	
     <!--Lenove laptop end -->	

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

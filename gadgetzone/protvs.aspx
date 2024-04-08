<%@ Page Title="" Language="C#" MasterPageFile="~/gz.Master" AutoEventWireup="true" CodeBehind="protvs.aspx.cs" Inherits="gadgetzone.protvs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- sony TV start -->
     <headertemplate>
        <h1 class="heading"> Apple <span> Telvision </span></h1>
    </headertemplate>
    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" EditItemIndex="3" RepeatColumns="3" DataSourceID="SqlDataSource1">
        <ItemTemplate >
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [products] WHERE (([categories_name] = @categories_name) AND ([company] = @company))">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="cat" DefaultValue="telvision" Name="categories_name" Type="String"></asp:QueryStringParameter>
            <asp:QueryStringParameter QueryStringField="com" DefaultValue="sony" Name="company" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <!-- sony TV end -->

        <!-- Panasonic TV start -->
     <headertemplate>
        <h1 class="heading"> Panasonic <span> Telvision </span></h1>
    </headertemplate>
    <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" EditItemIndex="3" RepeatColumns="3" DataSourceID="SqlDataSource2">
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
											<%--<asp:Button ID="Button1" runat="server" Text="wishlist" class="btn-heart" NavigateUrl='<%#"wishlist.aspx?id="+ Eval("Id") %>' OnClick="Button1_Click"/>
											<asp:Button ID="Button2" runat="server" Text="add_to_cart" class="btn-cart" NavigateUrl='<%#"addtocart.aspx?id="+ Eval("Id") %>' OnClick="Button2_Click"/>--%>
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
            <asp:QueryStringParameter QueryStringField="cat" DefaultValue="telvision" Name="categories_name" Type="String"></asp:QueryStringParameter>
            <asp:QueryStringParameter QueryStringField="com" DefaultValue="Panasonic" Name="company" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <!-- Panasonic TV end -->

        <!-- Samsung TV start -->
     <headertemplate>
        <h1 class="heading"> Samsung <span> Telvision </span></h1>
    </headertemplate>
    <asp:DataList ID="DataList3" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" EditItemIndex="3" RepeatColumns="3" DataSourceID="SqlDataSource3">
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
            <asp:QueryStringParameter QueryStringField="cat" DefaultValue="telvision" Name="categories_name" Type="String"></asp:QueryStringParameter>
            <asp:QueryStringParameter QueryStringField="com" DefaultValue="samsung" Name="company" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <!-- Samsung TV end -->

        <!-- LG TV start -->
     <headertemplate>
        <h1 class="heading"> LG <span> Telvision </span></h1>
    </headertemplate>
    <asp:DataList ID="DataList4" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" EditItemIndex="3" RepeatColumns="3" DataSourceID="SqlDataSource4">
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
            <asp:QueryStringParameter QueryStringField="cat" DefaultValue="telvision" Name="categories_name" Type="String"></asp:QueryStringParameter>
            <asp:QueryStringParameter QueryStringField="com" DefaultValue="lg" Name="company" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <!-- LG TV end -->

            <!-- Redmi TV start -->
     <headertemplate>
        <h1 class="heading"> Redmi <span> Telvision </span></h1>
    </headertemplate>
    <asp:DataList ID="DataList5" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" EditItemIndex="3" RepeatColumns="3" DataSourceID="SqlDataSource5">
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
            <asp:QueryStringParameter QueryStringField="cat" DefaultValue="telvision" Name="categories_name" Type="String"></asp:QueryStringParameter>
            <asp:QueryStringParameter QueryStringField="com" DefaultValue="redmi" Name="company" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <!-- Redmi TV end -->

</asp:Content>

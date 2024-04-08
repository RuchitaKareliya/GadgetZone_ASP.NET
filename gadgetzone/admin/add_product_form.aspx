<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admingz.Master" AutoEventWireup="true" CodeBehind="add_product_form.aspx.cs" Inherits="gadgetzone.admin.add_product_form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>AddProductFrom</h1>
					<ul class="breadcrumb">
						<li>
							<a href="add_product.aspx">AddProductFrom</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="add_product.aspx">AddProduct_list</a>
						</li>
					</ul>
				</div>
			</div>


  <div class="container">
      <div class="registartion-form">




		 <div class="order">
            <div class="head">
                <h1>Add_Product_Form</h1>
             </div>
              <asp:Label ID="Label" runat="server" Text="Categories"></asp:Label>
              <asp:DropDownList ID="DropDownList1" runat="server" CssClass="inp">
                  <asp:ListItem></asp:ListItem>
                  <asp:ListItem>Laptop</asp:ListItem>
                  <asp:ListItem>Mobile</asp:ListItem>
                  <asp:ListItem>Telvision</asp:ListItem>
                  <asp:ListItem>Camera</asp:ListItem>
                  <asp:ListItem>Speaker</asp:ListItem>
              </asp:DropDownList>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please select an item in the list" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
              <br />
              <br />
              <asp:Label ID="Label2" runat="server" Text="Company"></asp:Label>
              <asp:DropDownList ID="DropDownList2" runat="server" CssClass="inp">
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
                  <asp:ListItem>Bose</asp:ListItem>
                  <asp:ListItem>JBL</asp:ListItem>
                  <asp:ListItem>Klipsch</asp:ListItem>
              </asp:DropDownList>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please select an item in the list" ControlToValidate="DropDownList2" ForeColor="Red"></asp:RequiredFieldValidator>

              <br />

              <br />

              <asp:Label ID="Label3" runat="server" Text="Product_Name:"></asp:Label>
              <asp:TextBox ID="TextBox1" runat="server" CssClass="inp"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>

              <br />

              <br />

              <asp:Label ID="Label4" runat="server" Text="Decryption:"></asp:Label>
              <asp:TextBox ID="TextBox2" runat="server" CssClass="inp" TextMode="MultiLine"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>

              <br />

              <br />

              <asp:Label ID="Label5" runat="server" Text="Price:"></asp:Label>
              <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" CssClass="inp"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>

              <br />

              <br />

              <asp:Label ID="Label6" runat="server" Text="Quantity:"></asp:Label>
              <asp:TextBox ID="TextBox4" runat="server" CssClass="inp"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>


              <br />


              <br />

              <asp:Label ID="Label7" runat="server" Text="Image:"></asp:Label>
              <asp:FileUpload ID="FileUpload1" runat="server" CssClass="inp" />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please fill outthis field" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator><br />
              

              <br />


              <br />
              <asp:Button ID="Button1" runat="server" Text="Uplode" CssClass="submit" OnClick="Button1_Click" />  
              
              

              <br />


              <br />

              </div>
   
       </div>
      </div>
    </main>
</asp:Content>


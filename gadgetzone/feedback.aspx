<%@ Page Title="" Language="C#" MasterPageFile="~/gz.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="gadgetzone.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="fmain">
            <div class="forms">
                <h2 class="form-title">Feedback</h2>
                <%--    <form id="form1" runat="server">--%>
                <div class="main-user-info">
                    <div class="user-input-box">
                        <asp:Label ID="Label1" runat="server" Text="Email" Font-Size="X-Large" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your email"></asp:TextBox>
                    </div>
                </div>
                <div class="feedback-details-box">
                    <asp:Label ID="Label2" runat="server" Text="Feedback" CssClass="feedback-title"></asp:Label>
                    <div class="feedback-category">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="Larger">
                            <asp:ListItem>Good</asp:ListItem>
                            <asp:ListItem>Bad</asp:ListItem>
                            <asp:ListItem>Ok</asp:ListItem>
                            <asp:ListItem>VeryGood</asp:ListItem>

                        </asp:RadioButtonList>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="RadioButtonList1" ForeColor="Red" Font-Size="X-Large"></asp:RequiredFieldValidator>

                    <br />

                    <br />

                    <div class="user-input-box">
                        <asp:Label ID="Label3" runat="server" Text="Message" CssClass="user-input-box" Font-Size="X-Large" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Write Your any message" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please fill out this field" ControlToValidate="TextBox2" ForeColor="Red" Font-Size="X-Large"></asp:RequiredFieldValidator>
                    <div class="form-submit-btn">
                        <asp:Button ID="Button1" runat="server" Text="Feedback" OnClick="Button1_Click" />
                    </div>
                </div>
                <div>
                </div>
                <%--</form>--%>
            </div>
        </div>
</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/gz.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="gadgetzone.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <section>
 <h1 class="heading"> About <span>Us</span> </h1> 
    
<div class="section">
    
        <div class="container">
            <div class="content-section">
                <div class="content">
                    <h3>I am a Electronic Gadget Advantages</h3>
                    <p>One of the biggest advantages of electronic gadgets is that they make our lives easier. Talk to anyone who was around before the days of mobile phones, and you'll hear how inconvenient it was to find a pay phone when you needed to make a call while away from home. Gadgets help us stay personally and professionally connected by providing access to email, text messages, phone services, video chat and social media. We use them to make new connections, both online and in the real world. Electronic devices have revolutionized the world of shopping, allowing online shoppers to buy millions of products with the tap of a finger or click of a mouse.
                    </p>
                    <a href="about.aspx" class="btn">Read More</a>
                </div>
                </div>
            <div class="image-section">
               <img src="img/logo.jpg" />
            </div>
        </div>
    </div>
</section>

<!-- About as end -->




<section class="features" id="features">

    <h1 class="heading"> our <span>categories</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="img/laptoplog.png" alt="">
            <h3>Laptop</h3>
            <p></p>
            <a href="prolaptops.aspx" class="btn">View All Product</a>
        </div>

        <div class="box">
            <img src="img/tvlogo.png" alt="">
            <h3>Telvision</h3>
            <p></p>
            <a href="protvs.aspx" class="btn">View All Product</a>
        </div>

        <div class="box">
            <img src="img/mobilelogo.png" alt="">
            <h3>Mobile</h3>
            <p></p>
            <a href="promobiles.aspx" class="btn">View All Product</a>
        </div>


    </div>
    <br> <br>
<div class="box-container">

        <div class="box">
            <img src="img/cameralogo1.png" alt="">
            <h3>Camera</h3>
            <p></p>
            <a href="procameras.aspx" class="btn">View All Product</a>
        </div>

        <div class="box">
            <img src="img/speakerlogo1.png" alt="">
            <h3>Speaker</h3>
            <p></p>
            <a href="prospeakers.aspx" class="btn">View All Product</a>
        </div>
    </div>

</section>
<!-- home section ends -->
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

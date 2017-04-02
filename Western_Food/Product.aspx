<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Western_Food.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">

    <title> PRODUCT </title>

    <link href="css/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/js-image-slider.js" type="text/javascript"></script>

    <link href="css/tooltip.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/tooltip.jss" type="text/javascript"></script>

    <script type="text/javascript">
        imageSlider.thumbnailPreview(function (thumbIndex) { return "<img src='images/penne" + (thumbIndex + 1) + ".jpg' style='width:180px;height:75px;' />"; });
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="div1">
        <h2> Pasta </h2> 
        
    </div>

    <div id="sliderFrame">

        <div id="slider">
            <a href="http://www.menu"> 
                <img src="images/penne.jpg" alt="Penne" />
             </a> 

                <img src="images/plinguine.jpg" alt="Linguine" />
                <img src="images/porecchiette.jpg" alt="orecchiette" />
                <img src="images/porzo.jpg" alt="orzo" />
                <img src="images/ppappardelle.jpg" alt="pappardelle" />
                <img src="images/prigatoni.jpg" alt="rigatoni" />
                <img src="images/protinifusilli.jpg" alt="rotini/fusilli" />
                <img src="images/pshells.jpg" alt="shells" />
                <img src="images/pspaghetti.jpg" alt="spaghetti" />
                <img src="images/pziti.jpg" alt="ziti" />
        </div>

    </div>
</asp:Content>



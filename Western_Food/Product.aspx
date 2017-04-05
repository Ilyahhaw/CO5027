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
    
        <div id="product">

            <div id="productleft">

                <a href="~/dineinortakeaway.aspx" runat="server"> 
                    <img src="images/homepage_dinein.jpg" alt="dine-in or takeaway" width="420" height="250"  />
                </a> 

            </div>


            <div id="productright">
        
                <a href="~/Product.aspx" runat="server"> 
                    <img src="images/homepage_ingredient.jpg" alt="pasta and sauce" width="420" height="250" />
                </a> 

            </div>

        </div>         

</asp:Content>



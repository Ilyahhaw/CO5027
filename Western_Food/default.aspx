<%@ Page Title="HOME" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Western_Food._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
    <link href="style.css" rel="stylesheet" type="text/css" />

    <link href="css/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/js-image-slider.js" type="text/javascript"></script>

    <link href="css/tooltip.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/tooltip.jss" type="text/javascript"></script>

    <script type="text/javascript">
        imageSlider.thumbnailPreview(function (thumbIndex) { return "<img src='images/penne" + (thumbIndex + 1) + ".jpg' style='width:180px;height:75px;' />"; });
    </script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="homeleft">

        <a href="~/dineinortakeaway.aspx" runat="server"> 
            <img src="images/homepage_dinein.jpg" alt="dine-in or takeaway" width="420" height="250"  />
        </a> 

    </div>


    <div id="homeright">
        
        <a href="~/Product.aspx" runat="server"> 
            <img src="images/homepage_ingredient.jpg" alt="pasta and sauce" width="420" height="250" />
        </a> 

    </div>

            


</asp:Content>


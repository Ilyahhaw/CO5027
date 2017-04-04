<%@ Page Title="HOME" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Western_Food._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
    <link href="style.css" rel="stylesheet" type="text/css" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="home">

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

    </div>        


</asp:Content>


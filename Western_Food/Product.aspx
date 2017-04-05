<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="Western_Food.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">

    <title> PRODUCT </title>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div id="product">

            <div id="productleft">

                <a href="~/menu.aspx" runat="server"> 
                    <img src="images/homepage_dinein.jpg" alt="Menu" width="420" height="250"  />
                </a> 

            </div>


            <div id="productright">
        
                <a href="~/groceries.aspx" runat="server"> 
                    <img src="images/homepage_ingredient.jpg" alt="Pasta and Sauce" width="420" height="250" />
                </a> 

            </div>

        </div>         

</asp:Content>



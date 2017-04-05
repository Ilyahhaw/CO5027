<%@ Page Title="PRODUCT" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="Western_Food.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">

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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>

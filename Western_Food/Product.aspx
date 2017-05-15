<%@ Page Title="PRODUCT" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="Western_Food.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="product">

        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <ul>
            </HeaderTemplate>
            
            <ItemTemplate>
                <li> <a href ="<%# Eval("id", "ViewProduct.aspx?Id={0}") %> "> 
                    <%#Eval ("ProductName") %>" </a> 

                </li>
            </ItemTemplate>

            <FooterTemplate>
                </ul>
            </FooterTemplate>
        </asp:Repeater> 

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>

     </div> 

</asp:Content>
 
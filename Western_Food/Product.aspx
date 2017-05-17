<%@ Page Title="Great Taste | Product" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="Western_Food.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="product">

        <h1> Product</h1>

        <asp:Repeater ID="RepeaterProduct" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <ul>
            </HeaderTemplate>
            <ItemTemplate>
                <div id="product">
                    <li> 
                        <a href="<%# Eval("ProductID", "ViewProduct.aspx?ProductID={0}")  %>"><%# Eval("ProductName") %></a>
                        <p> <%# Eval("Price") %> </p>
                        <p> <%# Eval("Quantity") %> </p>
                    </li>
                </div>
            </ItemTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
        </asp:Repeater>



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>



    </div> 

</asp:Content>
 
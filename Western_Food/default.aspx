﻿<%@ Page Title="HOME" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Western_Food._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
    <link href="style.css" rel="stylesheet" type="text/css" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="homesearch">
        <asp:TextBox ID="hsearch" runat="server" Width="200px" Height="20px" > Enter keyword here </asp:TextBox> 
        <asp:Button ID="btnSearch" runat="server" Text="Search" Width="100px" Height="25px" />
    </div>

    <div id="home">
          <div id="clickhereformore"> 
               <a href="~/product.aspx" runat="server"> - Click Here For More - </a>
          </div>
    </div>

</asp:Content>


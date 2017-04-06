﻿<%@ Page Title="HOME" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Western_Food._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
    <link href="style.css" rel="stylesheet" type="text/css" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="home">

       <div id="hometop">

           <div id="chef">
               <p> Menu <img src="images/chefrecommends.jpg" alt="Menu" width="200" height="100"  /> </p>
           </div>

           <table>
               <tr>
                   <td> 
                       <a href="~/menu.aspx" runat="server"> 
                            <img src="images/dine_spaghettibolognese.jpg" alt="Spaghetti Bolognese" width="200" height="170" />
                       </a> 
                   </td>

                   <td> 
                       <a href="~/menu.aspx" runat="server"> 
                       <img src="images/dine_lasagna.png" alt="Lasagna" width="200" height="170"  />
                       </a> 
                   </td>

                   <td> 
                       <a href="~/menu.aspx" runat="server"> 
                       <img src="images/dine_jumboshellswithtomatocreamysauce.jpg" alt="Jumbo Shell with Tomato Creamy Sauce" width="200" height="170" />
                       </a> 
                   </td>

                   <td> 
                       <a href="~/menu.aspx" runat="server"> 
                       <img src="images/dine_salmonmacoronisalad.jpg" alt="Salmon Macoroni Salad" width="200" height="170"  />
                       </a> 
                   </td>
                   
               </tr>
            </table>

           <p> <a href="~/menu.aspx" runat="server"> -click here for more- </a> </p>

       </div>

        <div id="homebottom">

            <table>
               <tr>
                   <td> 
                       <a href="~/groceries.aspx" runat="server"> 
                       <img src="images/pasta_spaghetti.jpg" alt="Menu" width="200" height="170"  />
                       </a> 
                   </td>
                   
                   <td> 
                       <a href="~/groceries.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="200" height="170"  />
                       </a> 
                   </td>
                   
                   <td> 
                       <a href="~/groceries.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="200" height="170"  />
                       </a> 
                   </td>
                   
                   <td> 
                       <a href="~/groceries.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="200" height="170"  />
                       </a> 
                   </td> 
               </tr>
            </table>

           <p> <a href="~/groceries.aspx" runat="server"> -click here for more- </a> </p>

       </div>

    </div>

</asp:Content>


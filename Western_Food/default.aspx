<%@ Page Title="HOME" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Western_Food._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
    <link href="style.css" rel="stylesheet" type="text/css" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="home">

        <div id="chef">
            <img src="images/chefrecommends.jpg" alt="Menu" width="365" height="95"  />  
        </div>

       <div id="hometop">

           <table>
               <tr>
                   <td> 
                       <a href="~/menu.aspx" runat="server"> 
                            <img src="images/dine_spaghettibolognese.jpg" alt="Spaghetti Bolognese" width="120" height="120" />
                       </a> 
                   </td>

                   <td> 
                       <a href="~/menu.aspx" runat="server"> 
                       <img src="images/dine_lasagna.png" alt="Lasagna" width="120" height="120"  />
                       </a> 
                   </td>

                   <td> 
                       <a href="~/menu.aspx" runat="server"> 
                       <img src="images/dine_jumboshellswithtomatocreamysauce.jpg" alt="Jumbo Shell with Tomato Creamy Sauce" width="120" height="120"  />
                       </a> 
                   </td>

                   <td> 
                       <a href="~/menu.aspx" runat="server"> 
                       <img src="images/dine_salmonmacoronisalad.jpg" alt="Salmon Macoroni Salad" width="120" height="120"   />
                       </a> 
                   </td>

                   <td> 
                        <div id="clickformore">
                            <a href="~/menu.aspx" runat="server"> -click here for more- </a>
                        </div>
                   </td>
                   
               </tr>
            </table>

       </div>

        <div id="homebottom">

            <table>
               <tr>
                   <td> 
                       <a href="~/groceries.aspx" runat="server"> 
                       <img src="images/pasta_spaghetti.jpg" alt="Pasta Speghetti" width="120" height="120"  />
                       </a> 
                   </td>
                   
                   <td> 
                       <a href="~/groceries.aspx" runat="server"> 
                       <img src="images/pasta_elbows.jpg" alt="Pasta Elbow" width="120" height="120"  />
                       </a> 
                   </td>
                   
                   <td> 
                       <a href="~/groceries.aspx" runat="server"> 
                       <img src="images/s_traditional.png" alt="Traditional Sauce" width="120" height="120"  />
                       </a> 
                   </td>
                   
                   <td> 
                       <a href="~/groceries.aspx" runat="server"> 
                       <img src="images/s_garlicherb.png" alt="Garlic Herb Sauce" width="120" height="120"  />
                       </a> 
                   </td> 

                   <td> 
                       <div id="clickhereformore"> 
                            <a href="~/groceries.aspx" runat="server"> -click here for more- </a> 
                       </div>
                   </td> 
               </tr>
            </table>

       </div>

    </div>

</asp:Content>


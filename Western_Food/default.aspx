<%@ Page Title="HOME" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Western_Food._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
    <link href="style.css" rel="stylesheet" type="text/css" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="homesearch">
        <asp:TextBox ID="hsearch" runat="server" Width="200px" Height="20px" > Enter keyword here </asp:TextBox> 
        <asp:Button ID="btnSearch" runat="server" Text="Search" Width="100px" Height="25px" />
    </div>

    <div id="home">

       <div id="hometop">

           <table>

               <tr>
                   <td> 
                       <a href="~/menu.aspx" runat="server"> 
                        <img src="images/dine_spaghettibolognese.jpg" alt="Spaghetti Bolognese" width="120" height="120" />
                           </a>
                           <p> Spaghetti Bolognese </p>
                           <p> $4.50/portion </p>
                           <p> Preparation : 7 minutes</p>
                   </td>

                   <td> 
                       <a href="~/menu.aspx" runat="server"> 
                        <img src="images/dine_lasagna.png" alt="Lasagna" width="120" height="120"  />
                        </a>  
                           <p> Lasagna </p>
                           <p> $5.50/portion </p>
                           <p> Preparation : 10 minutes</p>
                        
                   </td>

                   <td> 
                       <a href="~/menu.aspx" runat="server"> 
                           <img src="images/dine_jumboshellswithtomatocreamysauce.jpg" alt="Jumbo Shell with Tomato Creamy Sauce" width="120" height="120"  />
                       </a> 
                               <p> Jumbo Shell with Tomato Creamy Sauce </p>
                               <p> $4.50/portion </p>
                               <p> Preparation : 7 minutes</p>
                       
                   </td>

                   <td> 
                       <a href="~/menu.aspx" runat="server"> 
                           <img src="images/dine_salmonmacoronisalad.jpg" alt="Salmon Macoroni Salad" width="120" height="120"   />
                       </a>        
                               <p> Salmon Macaroni Salad </p>
                               <p> $6.50/portion </p>
                               <p> Preparation : 5 minutes</p>
                        
                   </td>

               </tr>
            </table>

                    <div id="clickformore">
                         <a href="~/menu.aspx" runat="server"> - Click Here For More - </a>
                    </div>
       </div>

        <div id="homebottom">

            <table>
               <tr>
                   <td> 
                       <a href="~/groceries.aspx" runat="server"> 
                       <img src="images/pasta_spaghetti.jpg" alt="Pasta Speghetti" width="120" height="120"  />
                       </a>
                           <p> Spaghetti Pasta </p>
                           <p> $3.50/packet </p> 
                   </td>
                   
                   <td> 
                       <a href="~/groceries.aspx" runat="server"> 
                       <img src="images/pasta_elbows.jpg" alt="Pasta Elbow" width="120" height="120"  />
                       </a> 
                           <p> Elbow Pasta </p>
                           <p> $3.50/packet </p>
                   </td>
                   
                   <td> 
                       <a href="~/groceries.aspx" runat="server"> 
                       <img src="images/s_traditional.png" alt="Traditional Sauce" width="120" height="120"  />
                       </a>
                           <p> Traditional Pasta Sauce </p>
                           <p> $4.50/can </p>
                   </td>
                   
                   <td> 
                       <a href="~/groceries.aspx" runat="server"> 
                       <img src="images/s_garlicherb.png" alt="Garlic Herb Sauce" width="120" height="120"  />
                       </a> 
                           <p> Garlic and Herb Pasta Sauce </p>
                           <p> $4.50/can </p>
                   </td> 

            </table>

            <div id="clickhereformore"> 
                            <a href="~/groceries.aspx" runat="server"> - Click Here For More - </a>
       
            </div>

        </div>
    </div>

</asp:Content>


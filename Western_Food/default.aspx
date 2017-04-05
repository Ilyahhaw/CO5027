<%@ Page Title="HOME" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Western_Food._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
    <link href="style.css" rel="stylesheet" type="text/css" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="home">

       <div id="hometop">

           <table>
               <tr>
                   <td> 
                       <a href="~/.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="200" height="170"  />
                       </a> 
                   </td>

                   <td> 
                       <a href="~/.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="200" height="170"  />
                       </a> 
                   </td>

                   <td> 
                       <a href="~/.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="200" height="170"  />
                       </a> 
                   </td>

                   <td> 
                       <a href="~/.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="200" height="170"  />
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
                       <a href="~/.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="200" height="170"  />
                       </a> 
                   </td>
                   
                   <td> 
                       <a href="~/.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="200" height="170"  />
                       </a> 
                   </td>
                   
                   <td> 
                       <a href="~/.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="200" height="170"  />
                       </a> 
                   </td>
                   
                   <td> 
                       <a href="~/.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="200" height="170"  />
                       </a> 
                   </td> 
               </tr>
            </table>

           <p> <a href="~/groceries.aspx" runat="server"> -click here for more- </a> </p>

       </div>

    </div>

</asp:Content>


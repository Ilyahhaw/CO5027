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
                       <img src="images" alt="Menu" width="220" height="170"  />
                       </a> 
                   </td>

                   <td> 
                       <a href="~/.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="220" height="170"  />
                       </a> 
                   </td>

                   <td> 
                       <a href="~/.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="220" height="170"  />
                       </a> 
                   </td>

                   <td> 
                       <a href="~/.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="220" height="170"  />
                       </a> 
                   </td>
                   
               </tr>
            </table>

            <a href="~/menu.aspx" runat="server"> -click here for more- </a>

       </div>

        <div id="homebottom">

            <table>
               <tr>
                   <td> 
                       <a href="~/.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="220" height="170"  />
                       </a> 
                   </td>
                   
                   <td> 
                       <a href="~/.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="220" height="170"  />
                       </a> 
                   </td>
                   
                   <td> 
                       <a href="~/.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="220" height="170"  />
                       </a> 
                   </td>
                   
                   <td> 
                       <a href="~/.aspx" runat="server"> 
                       <img src="images" alt="Menu" width="220" height="170"  />
                       </a> 
                   </td> 
               </tr>
            </table>

           <a href="~/groceries.aspx" runat="server"> -click here for more- </a>

       </div>

    </div>

</asp:Content>


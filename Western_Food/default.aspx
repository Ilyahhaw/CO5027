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
                       <img src="images/homepage_dinein.jpg" alt="Menu" width="420" height="250"  />
                       </a> 
                   </td>


                   
               </tr>
            </table>

            <a href="~/dineinortakeaway.aspx" runat="server"> -click here for more- </a>

       </div>

        <div id="homebottom">

            <table>
               <tr>
                   <td>  </td>
                   <td>  </td>
                   <td>  </td>
                   <td>  </td> 
               </tr>
            </table>

           <p> -click here for more- </p>

       </div>

    </div>

</asp:Content>


<%@ Page Title="LOGIN / SIGN UP" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Western_Food.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 275px;
        }
        .auto-style2 {
            width: 137px;
        }
        .auto-style3 {
            width: 140px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="Login">
        <h1> LogIn</h1>

        <table style="width: 417px">
            <tr>
                <td class="auto-style2"> Username: </td>
                <td class="auto-style1"> <asp:TextBox ID="txtUserLogin" runat="server" Width="265px"></asp:TextBox> </td>
            </tr>

            <tr>
                <td class="auto-style2"> Password: </td>
                <td class="auto-style1"> <asp:TextBox ID="txtpasswordLogin" runat="server" TextMode="Password" Width="265px"></asp:TextBox> </td>
            </tr>

        </table>

        <asp:Button ID="BtnLogin" runat="server" Text="Log In" />

    </div>

    <div id="Register">
        <h1> Register </h1>

        <table style="width: 415px">
            <tr>
                <td class="auto-style3"> Username: </td>
                <td> <asp:TextBox ID="txtUserRegister" runat="server" Width="255px"></asp:TextBox> </td>
            </tr>

            <tr>
                <td class="auto-style3"> Password: </td>
                <td> <asp:TextBox ID="txtpasswordRegister" runat="server" TextMode="Password" style="margin-left: 1px" Width="255px"></asp:TextBox> </td>
            </tr>

            <tr>
                <td class="auto-style3"> Confirmed Password: </td>
                <td> <asp:TextBox ID="txtConfirmedpassword" runat="server" TextMode="Password" Width="255px"></asp:TextBox> </td>
            </tr>
        </table>

        <asp:Button ID="BtnRegister" runat="server" Text="Register" />

    </div>

</asp:Content>
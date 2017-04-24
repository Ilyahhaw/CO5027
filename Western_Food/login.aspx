<%@ Page Title="LOGIN / SIGN UP" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Western_Food.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="Login">
        <h1> LogIn</h1>

        <table style="width: 399px">
            <tr>
                <td class="auto-style2"> Username: </td>
                <td class="auto-style1"> <asp:TextBox ID="txtUserLogin" runat="server" Width="265px"></asp:TextBox> </td>
            </tr>

            <tr>
                <td class="auto-style2"> Password: </td>
                <td class="auto-style1"> <asp:TextBox ID="txtpasswordLogin" runat="server" TextMode="Password" Width="265px"></asp:TextBox> </td>
            </tr>

            <tr>
                <td> </td>
                <td> <asp:Button ID="btnLogin" runat="server" Text="Log In" /> </td>
            </tr>

        </table>

        

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

            <tr>
                <td> </td>
                <td> <asp:Button ID="btnRegister" runat="server" Text="Register" /> </td>
            </tr>
        </table>

        

    </div>

</asp:Content>
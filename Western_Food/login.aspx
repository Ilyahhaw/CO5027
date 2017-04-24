<%@ Page Title="LOGIN / SIGN UP" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Western_Food.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="login">
        <h1> LogIn</h1>

        <table>
            <tr>
                <td> Username: </td>
                <td> <asp:TextBox ID="txtUserLogin" runat="server"></asp:TextBox> </td>
            </tr>

            <tr>
                <td> Password: </td>
                <td> <asp:TextBox ID="txtpasswordLogin" runat="server" TextMode="Password"></asp:TextBox> </td>
            </tr>

        </table>

        <asp:Button ID="BtnLogin" runat="server" Text="Button" />

    </div>

    <div id="register">
        <h1> Register </h1>

        <table>
            <tr>
                <td> Username: </td>
                <td> <asp:TextBox ID="txtUserRegister" runat="server"></asp:TextBox> </td>
            </tr>

            <tr>
                <td> Password: </td>
                <td> <asp:TextBox ID="txtpasswordRegister" runat="server" TextMode="Password"></asp:TextBox> </td>
            </tr>

            <tr>
                <td> Confirmed Password: </td>
                <td> <asp:TextBox ID="txtConfirmedpassword" runat="server" TextMode="Password"></asp:TextBox> </td>
            </tr>
        </table>

        <asp:Button ID="BtnRegister" runat="server" Text="Button" />

    </div>

</asp:Content>
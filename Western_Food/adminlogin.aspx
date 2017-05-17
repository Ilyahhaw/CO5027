<%@ Page Title="ADMIN LOGIN | Great Taste" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Western_Food.login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="login">
        <h1> LogIn</h1>

        <table>
            <tr>
                <td> <asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtUserLogin" runat="server" Width="265px"></asp:TextBox> </td>
            </tr>

            <tr>
                <td> <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtpasswordLogin" runat="server" TextMode="Password" Width="265px"></asp:TextBox> </td>
            </tr>

            <tr>
                <td> </td>
                <td> 
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                </td>
            </tr>           

        </table>   

        <asp:Literal ID="litLoginResult" runat="server" ></asp:Literal>

    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Western_Food.login" %>

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

   <div id="register">
        <h1> Register </h1>

        <table>
            <tr>
                <td> <asp:Label ID="lblUsernameReg" runat="server" Text="Username: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtUserRegister" runat="server" Width="255px"></asp:TextBox> 
                    <br />
                <asp:RequiredFieldValidator ID="ReqFieldValidatorUsername" runat="server" ErrorMessage="*Required" ControlToValidate="txtUserRegister"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td> <asp:Label ID="lblEmailReg" runat="server" Text="Email: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtEmailRegister" runat="server" Width="255px"></asp:TextBox> 
                     <br />
                     <asp:RegularExpressionValidator ID="RegEmailExValid" runat="server" ErrorMessage="*Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmailRegister"></asp:RegularExpressionValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="ReqFieldValidatorEmail" runat="server" ErrorMessage="*Required" ControlToValidate="txtEmailRegister"></asp:RequiredFieldValidator>
                </td>
                
            </tr>

            <tr>
                <td> <asp:Label ID="lblPasswordReg" runat="server" Text="Password: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtpasswordRegister" runat="server" TextMode="Password" style="margin-left: 1px" Width="255px"></asp:TextBox> 
                     <br />
                     <asp:RequiredFieldValidator ID="ReqFieldValidatorPassword" runat="server" ErrorMessage="*Required" ControlToValidate="txtpasswordRegister"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td> <asp:Label ID="lblConfirmedPasswordReg" runat="server" Text=" Confirmed Password: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtConfirmedpassword" runat="server" TextMode="Password" Width="255px"></asp:TextBox> 
                     <asp:RequiredFieldValidator ID="ReqFieldValidatorConPassword" runat="server" ErrorMessage="*Required" ControlToValidate="txtConfirmedpassword"></asp:RequiredFieldValidator>
                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpasswordRegister" ControlToValidate="txtConfirmedpassword" ErrorMessage="Password must be the same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>

            <tr>
                <td> </td>
                <td> <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /> </td>
            </tr>
        </table>

        <asp:Literal ID="litRegisterResult" runat="server"></asp:Literal>

     </div>

</asp:Content>

<%@ Page Title="Great Taste | Login / Register" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="Western_Food.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <asp:Panel id="loginPanel" DefaultButton="btnLogin" Runat="Server">
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
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" ValidationGroup="one"/>
                </td>
            </tr>           

        </table>   

        <asp:Literal ID="litLoginResult" runat="server" ></asp:Literal>
        
    </asp:Panel>

    
    <asp:Panel id="registerPanel" DefaultButton="btnRegister" Runat="Server">
        <h1> Register </h1>

        <div id="registerp">
            <p><asp:RequiredFieldValidator ID="ReqFieldValidatorUsername" runat="server" ErrorMessage="** Username is Required" ControlToValidate="txtUserRegister" ForeColor="Red"></asp:RequiredFieldValidator></p>
            <p><asp:RegularExpressionValidator ID="RegEmailExValid" runat="server" ErrorMessage="** Invalid Email, example abc@gmail.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmailRegister" ForeColor="Red"></asp:RegularExpressionValidator></p>
            <p><asp:RequiredFieldValidator ID="ReqFieldValidatorEmail" runat="server" ErrorMessage="** Email is Required" ControlToValidate="txtEmailRegister" ForeColor="Red"></asp:RequiredFieldValidator></p>
            <p><asp:RequiredFieldValidator ID="ReqFieldValidatorPassword" runat="server" ErrorMessage="** Password is Required" ControlToValidate="txtpasswordRegister" ForeColor="Red"></asp:RequiredFieldValidator></p>
            <p><asp:RequiredFieldValidator ID="ReqFieldValidatorConPassword" runat="server" ErrorMessage="** Confirmed Password is Required" ControlToValidate="txtConfirmedpassword" ForeColor="Red"></asp:RequiredFieldValidator></p>
            <p><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpasswordRegister" ControlToValidate="txtConfirmedpassword" ErrorMessage="Are you sure your password and confirmed password correct? " ForeColor="Red"></asp:CompareValidator></p>
        </div>

        <table id="tableregister">
            <tr>
                <td> <asp:Label ID="lblUsernameReg" runat="server" Text="Username: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtUserRegister" runat="server" Width="255px"></asp:TextBox> 
                </td>
            </tr>

            <tr>
                <td> <asp:Label ID="lblEmailReg" runat="server" Text="Email: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtEmailRegister" runat="server" Width="255px"></asp:TextBox> 
                </td>    
            </tr>

            <tr>
                <td> <asp:Label ID="lblPasswordReg" runat="server" Text="Password: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtpasswordRegister" runat="server" TextMode="Password" style="margin-left: 1px" Width="255px"></asp:TextBox>  
                </td>
            </tr>

            <tr>
                <td> <asp:Label ID="lblConfirmedPasswordReg" runat="server" Text=" Confirmed Password: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtConfirmedpassword" runat="server" TextMode="Password" Width="255px"></asp:TextBox> 
                </td>
            </tr>

            <tr>
                <td> </td>
                <td> <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" ValidationGroup="two"/> </td>
            </tr>
        </table>

        <asp:Literal ID="litRegisterResult" runat="server"></asp:Literal>

     </asp:Panel>

</asp:Content>

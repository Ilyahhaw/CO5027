<%@ Page Title="CONTACT US" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Western_Food.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
    
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="contactleft"> 
        <h1> Send Us a Message </h1>    
        
        <table>

            <tr> 
                <td> <asp:label id="lblName" runat="server" text="Name: "></asp:label> </td>
                <td> <asp:TextBox ID="txtName" runat="server" Width="300px" Height="20px"></asp:TextBox> </td>
                <td> <asp:RequiredFieldValidator ID="ReqNameValidator" runat="server" ControlToValidate="txtName" ErrorMessage="*Required"></asp:RequiredFieldValidator> </td>
            </tr>

            <tr>
                <td> <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtEmail" runat="server" Width="300px" Height="20px"></asp:TextBox> </td>
                <td> <asp:RegularExpressionValidator ID="RegEmailExValid" runat="server" ErrorMessage="*Required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator> </td>
            </tr>

            <tr>
                <td> <asp:Label ID="lblSubj" runat="server" Text="Subject: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtSubj" runat="server" Width="300px" Height="20px"></asp:TextBox> </td>
            </tr>

            <tr>
                <td> <asp:Label ID="lblMessage" runat="server" Text="Message: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtMsg" runat="server" Height="150px" Width="300px" AutoPostBack="True"></asp:TextBox> </td>
                <td> <asp:RequiredFieldValidator ID="ReqMsgValidator" runat="server" ControlToValidate="txtMsg" ErrorMessage="CANNOT be blank"></asp:RequiredFieldValidator> </td>
            </tr>

        </table>  

        <div id="sendemail"> 
            <asp:Button ID="btnSendEmail" runat="server" Text="Send Message" OnClick="BtnSendEmail_Click" />
        </div>

        <div id="literal">
            <asp:Literal ID="literal1" runat="server" Text=" Your email has been successfully sent.. Thankyou for contact us.." Visible="False"></asp:Literal>
        </div>

    </div>

    <div id="contactright">
        <h1> Get In Touch </h1>

        <p> <img src="images/phone.png" width="20" height="20" /> (+673) 711 8714  </p>
        <p> <img src="images/email.png" width="20" height="20" /> nhbhaw.3788@gmail.com </p>
        <p> <img src="images/facebook.png" width="20" height="20" /> Great Taste Restaurant </p>
        <p> <img src="images/twitter.png" width="20" height="20" /> Great Taste Restaurant </p>
        <p> <img src="images/instagram.png" width="20" height="20" /> Great Taste Restaurant </p>
        <p> <img src="images/location.png" width="20" height="20" /> Great Taste Restaurant </p>
    
        <div id="box">

        <div id="map"></div>        
            <script>
                  var map;
                  function initMap() {
                    map = new google.maps.Map(document.getElementById('map'), {
                        center: { lat: 4.90559, lng: 114.917015 },
                      zoom: 8
                    });
                  }
              </script>

              <script async="async" defer="defer" 
                  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyByeOaZmP3BjUFrkksAMeH-RrEa29C2hDw&callback=initMap">
              </script>
    </div>
    
    </div>

    

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    

</asp:Content>
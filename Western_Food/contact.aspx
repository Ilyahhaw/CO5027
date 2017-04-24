<%@ Page Title="CONTACT US" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Western_Food.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
    
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="contactleft"> 
        <h1> Send Us a Message </h1>    
        
        <div id ="sendmessage">
            <p> Name:  <asp:TextBox ID="txtName" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="reqNameValidator" runat="server" ErrorMessage="Name is Reqired" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </p>

            <p> Email: <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="reqFieldEmail" runat="server" ErrorMessage="Email is Required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegExprChkEMail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </p>

            <p> Subject: <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox> </p>

            <p> Message: <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="ReqMessageValidator" runat="server" ControlToValidate="txtMessage" ErrorMessage="Message cannot be blank"></asp:RequiredFieldValidator>
            </p>

            <asp:Button ID="btnSendEmail" runat="server" Text="Send Message" OnClick="btnSendEmail_Click" />
            <br/>

            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </div>

        <div id="openinghours">
            <img src="images/logo_openinghours.png" alt="openinghours" width="200" height="100" />

            <table>
                <tr>
                    <td> Monday - Thursday </td>
                    <td> 8.30am - 10.00pm </td>
                </tr>

                <tr>
                    <td> Friday </td>
                    <td> <p> 8.00am - 12.00pm </p>
                         <p> 02.30pm - 10.00pm </p>
                    </td>
                </tr>

                <tr>
                    <td> Saturday and Sunday </td>
                    <td> 7.30am - 12.00pm </td>
                </tr>
            </table>

        </div>

    </div>

    <div id="contactright">
        <h1> Get In Touch </h1>

        <p> <img src="images/phone.png" alt="phone" width="20" height="20" /> (+673) 711 8714  </p>
        <p> <img src="images/email.png" alt="email" width="20" height="20" /> nhbhaw.3788@gmail.com </p>
        <p> <img src="images/facebook.png" alt="facebook" width="20" height="20" /> Great Taste Restaurant </p>
        <p> <img src="images/twitter.png" alt="twitter" width="20" height="20" /> Great Taste Restaurant </p>
        <p> <img src="images/instagram.png" alt="instagram" width="20" height="20" /> Great Taste Restaurant </p>
        <p> <img src="images/location.png" alt="direction" width="20" height="20" /> Great Taste Restaurant </p>
    
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
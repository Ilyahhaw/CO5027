<%@ Page Title="CONTACT US" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Western_Food.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
    
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="openinghours">
           
            <table>
                <tr>
                    <td></td>
                    <td> Monday - Thursday </td>
                    <td> Friday </td>
                    <td> Saturday and Sunday </td>
                </tr>

                <tr>
                    <td> <img src="images/logo_openinghours.png" alt="openinghours" width="200" height="90" /> </td>
                    <td> 8.30am - 10.00pm </td>
                    <td> <p> 8.00am - 12.00pm </p>
                         <p> 02.30pm - 10.00pm </p>
                    </td>
                    <td> 7.30am - 12.00pm </td>
                </tr>
            </table>

       </div>

    <div id="contactleft">
        <h1> Send Us a Message </h1>    
        
        <div id ="sendmessage">

            <table>

            <tr> 
                <td> <asp:label id="lblName" runat="server" text="Name: "></asp:label> </td>
                <td> <asp:TextBox ID="txtName" runat="server" Width="345px" Height="20px"></asp:TextBox> </td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*Required"></asp:RequiredFieldValidator> </td>
            </tr>

            <tr>
                <td> <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtEmail" runat="server" Width="345px" Height="20px"></asp:TextBox> </td>
                <td><asp:RequiredFieldValidator ID="reqFieldEmail" runat="server" ErrorMessage="Email is Required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator> 
                    <asp:RegularExpressionValidator ID="RegEmailExValid" runat="server" ErrorMessage="Invaild Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator> 
                </td>
            </tr>

            <tr>
                <td> <asp:Label ID="lblSubject" runat="server" Text="Subject: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtSubject" runat="server" Width="345px" Height="20px"></asp:TextBox> </td>
            </tr>

            <tr>
                <td> <asp:Label ID="lblMessage" runat="server" Text="Message: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtMessage" runat="server" Height="140px" Width="345px" TextMode="MultiLine"></asp:TextBox> </td>
                <td> <asp:RequiredFieldValidator ID="ReqMsgValidator" runat="server" ControlToValidate="txtMessage" ErrorMessage="CANNOT be blank"></asp:RequiredFieldValidator> </td>
            </tr>

        </table>  

        <div id="sendemail"> 
            <asp:Button ID="btnSendEmail" runat="server" Text="Send Message " OnClick="btnSendEmail_Click" />
        </div>

        <div id="literal">
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </div>

        </div>
    </div>

    <div id="contactright">
        <h1> Get In Touch </h1>

            
        <p> <img src="images/location.png" alt="direction" width="20" height="20" /> Great Taste Restaurant </p>
    
        <div id="box">

        <div id="map"></div>       
     
            <script>
                  var map;
                  function initMap() {
                      var lcb = { lat: 4.885731, lng: 114.931669 };
                      map = new google.maps.Map(document.getElementById('map'), {
                        center: lcb,
                      zoom: 18
                      });
                      var marker = new google.maps.Marker({
                          position: lcb,
                          map : map
                      })
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
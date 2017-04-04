<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="map.aspx.cs" Inherits="Western_Food.map" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="box">
        <h3> Direction Map </h3>

        <div id="map"></div>        
            <script>
                  var map;
                  function initMap() {
                    map = new google.maps.Map(document.getElementById('map'), {
                      center: {lat: -34.397, lng: 150.644},
                      zoom: 8
                    });
                  }
              </script>

              <script async="async" defer="defer" 
                  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBxK-M4Ktb92waAlkzPZ3K9HOtQn_xU4QQY&callback=initMap">
              </script>
    </div>

</asp:Content>

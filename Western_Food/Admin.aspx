<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Western_Food.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitle" runat="server" Text="Title" AssociatedControlID="txtTitle"></asp:Label>
            <asp:TextBox ID="txtTitle" runat="server" MaxLength="100"></asp:TextBox>
        </div>
            
        <div>
             <asp:Label ID="lblBody" runat="server" Text="Body" AssociatedControlID="txtBody"></asp:Label>
             <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
            <asp:FileUpload ID="fileuploadControl" runat="server" />
            <p>
                <asp:Label ID="Label2" runat="server" Text="Img Alt"></asp:Label>
                <asp:TextBox ID="txtAltText" runat="server"></asp:TextBox>
            </p>
       
             <asp:Button ID="btnAddEntry" runat="server" Text="Add Blog Entry" OnClick="btnAddEntry_Click" />

            <p>
                <asp:Literal ID="litResult" runat="server"></asp:Literal>
            </p>

        </div>

</asp:Content>

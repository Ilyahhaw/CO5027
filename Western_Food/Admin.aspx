<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Western_Food.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="AddEntry" runat="server">
        <div>
            <h1> Data Entry Product </h1>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="ImgAlt" HeaderText="ImgAlt" SortExpression="ImgAlt" />
                    <asp:BoundField DataField="ImgWidth" HeaderText="ImgWidth" SortExpression="ImgWidth" />
                    <asp:BoundField DataField="ImgHeight" HeaderText="ImgHeight" SortExpression="ImgHeight" />
                    <asp:BoundField DataField="ImgExt" HeaderText="ImgExt" SortExpression="ImgExt" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @original_ProductID AND [ProductName] = @original_ProductName AND [Price] = @original_Price AND [Quantity] = @original_Quantity AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([ImgAlt] = @original_ImgAlt) OR ([ImgAlt] IS NULL AND @original_ImgAlt IS NULL)) AND (([ImgWidth] = @original_ImgWidth) OR ([ImgWidth] IS NULL AND @original_ImgWidth IS NULL)) AND (([ImgHeight] = @original_ImgHeight) OR ([ImgHeight] IS NULL AND @original_ImgHeight IS NULL)) AND (([ImgExt] = @original_ImgExt) OR ([ImgExt] IS NULL AND @original_ImgExt IS NULL))" InsertCommand="INSERT INTO [Product] ([ProductName], [Price], [Quantity], [Description], [ImgAlt], [ImgWidth], [ImgHeight], [ImgExt]) VALUES (@ProductName, @Price, @Quantity, @Description, @ImgAlt, @ImgWidth, @ImgHeight, @ImgExt)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [Price] = @Price, [Quantity] = @Quantity, [Description] = @Description, [ImgAlt] = @ImgAlt, [ImgWidth] = @ImgWidth, [ImgHeight] = @ImgHeight, [ImgExt] = @ImgExt WHERE [ProductID] = @original_ProductID AND [ProductName] = @original_ProductName AND [Price] = @original_Price AND [Quantity] = @original_Quantity AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([ImgAlt] = @original_ImgAlt) OR ([ImgAlt] IS NULL AND @original_ImgAlt IS NULL)) AND (([ImgWidth] = @original_ImgWidth) OR ([ImgWidth] IS NULL AND @original_ImgWidth IS NULL)) AND (([ImgHeight] = @original_ImgHeight) OR ([ImgHeight] IS NULL AND @original_ImgHeight IS NULL)) AND (([ImgExt] = @original_ImgExt) OR ([ImgExt] IS NULL AND @original_ImgExt IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ProductID" Type="Int32" />
                    <asp:Parameter Name="original_ProductName" Type="String" />
                    <asp:Parameter Name="original_Price" Type="Decimal" />
                    <asp:Parameter Name="original_Quantity" Type="Int32" />
                    <asp:Parameter Name="original_Description" Type="String" />
                    <asp:Parameter Name="original_ImgAlt" Type="String" />
                    <asp:Parameter Name="original_ImgWidth" Type="Int32" />
                    <asp:Parameter Name="original_ImgHeight" Type="Int32" />
                    <asp:Parameter Name="original_ImgExt" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="ImgAlt" Type="String" />
                    <asp:Parameter Name="ImgWidth" Type="Int32" />
                    <asp:Parameter Name="ImgHeight" Type="Int32" />
                    <asp:Parameter Name="ImgExt" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="ImgAlt" Type="String" />
                    <asp:Parameter Name="ImgWidth" Type="Int32" />
                    <asp:Parameter Name="ImgHeight" Type="Int32" />
                    <asp:Parameter Name="ImgExt" Type="String" />
                    <asp:Parameter Name="original_ProductID" Type="Int32" />
                    <asp:Parameter Name="original_ProductName" Type="String" />
                    <asp:Parameter Name="original_Price" Type="Decimal" />
                    <asp:Parameter Name="original_Quantity" Type="Int32" />
                    <asp:Parameter Name="original_Description" Type="String" />
                    <asp:Parameter Name="original_ImgAlt" Type="String" />
                    <asp:Parameter Name="original_ImgWidth" Type="Int32" />
                    <asp:Parameter Name="original_ImgHeight" Type="Int32" />
                    <asp:Parameter Name="original_ImgExt" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
      </div>

        <div id="AddNewProduct">
        <div>
            <h1> Add New Product </h1>
            <table style="width: 739px">
                <tr>
                    <td> <asp:Label ID="lblProductName" runat="server" Text="Product Name"></asp:Label> </td>
                    <td> <asp:TextBox ID="txtProductName" runat="server" MaxLength="250" Width="420px"></asp:TextBox> </td>
                </tr>

                <tr>
                    <td> <asp:Label ID="lblDescription" runat="server" Text="Description" ></asp:Label> </td>
                    <td> <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Width="423px"></asp:TextBox> </td>
                </tr>

                <tr>
                    <td> <asp:Label ID="lblPrice" runat="server" Text="Price:" ></asp:Label> </td>
                    <td> <asp:TextBox ID="txtPrice" runat="server" MaxLength="100" Width="420px"></asp:TextBox> </td>
                </tr>

                <tr>
                    <td> <asp:Label ID="lblQuantity" runat="server" Text="Quantity" ></asp:Label> </td>
                    <td> <asp:TextBox ID="txtQuantity" runat="server" MaxLength="100" Width="420px"></asp:TextBox> </td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblProductImage" runat="server" Text="Product Image" ></asp:Label></td>
                    <td><asp:FileUpload ID="fileuploadControl" runat="server" Width="426px" /></td>
                </tr>

                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Img Alt"></asp:Label> </td>
                    <td> <asp:TextBox ID="txtAltText" runat="server" Width="420px"></asp:TextBox> </td>
                </tr>

                <tr>
                    <td> </td>
                    <td> 
                        <asp:Button ID="btnReset" runat="server" Text="Reset" value="Reset" OnClick="btnReset_Click" />
                        <asp:Button ID="btnAddEntry" runat="server" Text="Add Blog Entry" OnClick="btnAddEntry_Click" /> 
                    </td>

                </tr>

                <tr> <asp:Literal ID="litResult" runat="server"></asp:Literal> </tr>
            </table>
            
        </div>
        </div>

    <div>
        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click"  />
    </div>


    </asp:Content>

<%@ Page Title=" PRODUCT DETAILS | Great Taste " Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="Western_Food.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table>
        <tr>
            <td>
                <asp:Image id="imageControl" runat="server" width="300px" Height="300px"/>
            </td>

            <td>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Width="501px">
                    <EditItemTemplate>
                        ProductID:
                        <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
                        <br />
                        ProductName:
                        <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                        <br />
                        Price:
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        <br />
                        Quantity:
                        <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                        <br />
                        Description:
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                        <br />
                        ImgAlt:
                        <asp:TextBox ID="ImgAltTextBox" runat="server" Text='<%# Bind("ImgAlt") %>' />
                        <br />
                        ImgWidth:
                        <asp:TextBox ID="ImgWidthTextBox" runat="server" Text='<%# Bind("ImgWidth") %>' />
                        <br />
                        ImgHeight:
                        <asp:TextBox ID="ImgHeightTextBox" runat="server" Text='<%# Bind("ImgHeight") %>' />
                        <br />
                        ImgExt:
                        <asp:TextBox ID="ImgExtTextBox" runat="server" Text='<%# Bind("ImgExt") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        ProductName:
                        <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                        <br />
                        Price:
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        <br />
                        Quantity:
                        <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                        <br />
                        Description:
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                        <br />
                        ImgAlt:
                        <asp:TextBox ID="ImgAltTextBox" runat="server" Text='<%# Bind("ImgAlt") %>' />
                        <br />
                        ImgWidth:
                        <asp:TextBox ID="ImgWidthTextBox" runat="server" Text='<%# Bind("ImgWidth") %>' />
                        <br />
                        ImgHeight:
                        <asp:TextBox ID="ImgHeightTextBox" runat="server" Text='<%# Bind("ImgHeight") %>' />
                        <br />
                        ImgExt:
                        <asp:TextBox ID="ImgExtTextBox" runat="server" Text='<%# Bind("ImgExt") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        ProductID:
                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                        <br />
                        ProductName:
                        <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
                        <br />
                        Price:
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                        <br />
                        Quantity:
                        <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                        <br />
                        Description:
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                        <br />
                        ImgAlt:
                        <asp:Label ID="ImgAltLabel" runat="server" Text='<%# Bind("ImgAlt") %>' />
                        <br />
                        ImgWidth:
                        <asp:Label ID="ImgWidthLabel" runat="server" Text='<%# Bind("ImgWidth") %>' />
                        <br />
                        ImgHeight:
                        <asp:Label ID="ImgHeightLabel" runat="server" Text='<%# Bind("ImgHeight") %>' />
                        <br />
                        ImgExt:
                        <asp:Label ID="ImgExtLabel" runat="server" Text='<%# Bind("ImgExt") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>

                        
            <div class="products">
                <div> <asp:LinkButton runat="server" ID="btnAddtoCart" Text="Add To Cart"> </asp:LinkButton></div>
            </div>     
            <a href="ShoppingCart.aspx">cart</a>


                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([ProductID] = @ProductID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ProductID" QueryStringField="ProductID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>

    </asp:Content>

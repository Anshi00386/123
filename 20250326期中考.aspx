<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="20250326期中考.aspx.cs" Inherits="_1111410057_鄭安栩.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AdventureWorksLT2022ConnectionString %>" 
                DeleteCommand="DELETE FROM [SalesOrderHeader] WHERE [SalesOrderID] = @SalesOrderID" 
                InsertCommand="INSERT INTO [SalesOrderHeader] ([RevisionNumber], [OrderDate], [DueDate], [ShipDate], [Status], [OnlineOrderFlag], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipToAddressID], [BillToAddressID], [ShipMethod], [CreditCardApprovalCode], [SubTotal], [TaxAmt], [Freight], [TotalDue], [Comment], [rowguid], [ModifiedDate]) VALUES (@RevisionNumber, @OrderDate, @DueDate, @ShipDate, @Status, @OnlineOrderFlag, @SalesOrderNumber, @PurchaseOrderNumber, @AccountNumber, @CustomerID, @ShipToAddressID, @BillToAddressID, @ShipMethod, @CreditCardApprovalCode, @SubTotal, @TaxAmt, @Freight, @TotalDue, @Comment, @rowguid, @ModifiedDate)" 
                SelectCommand="SELECT o.SalesOrderID, o.RevisionNumber, o.OrderDate, o.DueDate, o.ShipDate, o.Status, o.OnlineOrderFlag, o.SalesOrderNumber, o.PurchaseOrderNumber, o.AccountNumber, o.CustomerID, c.[LastName]+'_'+c.[FirstName] as [FullName], o.ShipToAddressID, o.BillToAddressID, o.ShipMethod, o.CreditCardApprovalCode, o.SubTotal, o.TaxAmt, o.Freight, o.TotalDue, o.Comment, o.rowguid, o.ModifiedDate FROM SalesLT.SalesOrderHeader o left join SalesLT.Customer c on o.CustomerID = c.CustomerID WHERE (SalesOrderID = @SalesOrderID)" 
                UpdateCommand="UPDATE [SalesOrderHeader] SET [RevisionNumber] = @RevisionNumber, [OrderDate] = @OrderDate, [DueDate] = @DueDate, [ShipDate] = @ShipDate, [Status] = @Status, [OnlineOrderFlag] = @OnlineOrderFlag, [SalesOrderNumber] = @SalesOrderNumber, [PurchaseOrderNumber] = @PurchaseOrderNumber, [AccountNumber] = @AccountNumber, [CustomerID] = @CustomerID, [ShipToAddressID] = @ShipToAddressID, [BillToAddressID] = @BillToAddressID, [ShipMethod] = @ShipMethod, [CreditCardApprovalCode] = @CreditCardApprovalCode, [SubTotal] = @SubTotal, [TaxAmt] = @TaxAmt, [Freight] = @Freight, [TotalDue] = @TotalDue, [Comment] = @Comment, [rowguid] = @rowguid, [ModifiedDate] = @ModifiedDate WHERE [SalesOrderID] = @SalesOrderID">
                <DeleteParameters>
                    <asp:Parameter Name="SalesOrderID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="RevisionNumber" Type="Byte" />
                    <asp:Parameter Name="OrderDate" Type="DateTime" />
                    <asp:Parameter Name="DueDate" Type="DateTime" />
                    <asp:Parameter Name="ShipDate" Type="DateTime" />
                    <asp:Parameter Name="Status" Type="Byte" />
                    <asp:Parameter Name="OnlineOrderFlag" Type="Boolean" />
                    <asp:Parameter Name="SalesOrderNumber" Type="String" />
                    <asp:Parameter Name="PurchaseOrderNumber" Type="String" />
                    <asp:Parameter Name="AccountNumber" Type="String" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="FullName" Type="String" />
                    <asp:Parameter Name="ShipToAddressID" Type="Int32" />
                    <asp:Parameter Name="BillToAddressID" Type="Int32" />
                    <asp:Parameter Name="ShipMethod" Type="String" />
                    <asp:Parameter Name="CreditCardApprovalCode" Type="String" />
                    <asp:Parameter Name="SubTotal" Type="Decimal" />
                    <asp:Parameter Name="TaxAmt" Type="Decimal" />
                    <asp:Parameter Name="Freight" Type="Decimal" />
                    <asp:Parameter Name="TotalDue" Type="Decimal" />
                    <asp:Parameter Name="Comment" Type="String" />
                    <asp:Parameter Name="rowguid" Type="Object" />
                    <asp:Parameter Name="ModifiedDate" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="SalesOrderID" PropertyName="Text" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="RevisionNumber" Type="Byte" />
                    <asp:Parameter Name="OrderDate" Type="DateTime" />
                    <asp:Parameter Name="DueDate" Type="DateTime" />
                    <asp:Parameter Name="ShipDate" Type="DateTime" />
                    <asp:Parameter Name="Status" Type="Byte" />
                    <asp:Parameter Name="OnlineOrderFlag" Type="Boolean" />
                    <asp:Parameter Name="SalesOrderNumber" Type="String" />
                    <asp:Parameter Name="PurchaseOrderNumber" Type="String" />
                    <asp:Parameter Name="AccountNumber" Type="String" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="ShipToAddressID" Type="Int32" />
                    <asp:Parameter Name="BillToAddressID" Type="Int32" />
                    <asp:Parameter Name="ShipMethod" Type="String" />
                    <asp:Parameter Name="CreditCardApprovalCode" Type="String" />
                    <asp:Parameter Name="SubTotal" Type="Decimal" />
                    <asp:Parameter Name="TaxAmt" Type="Decimal" />
                    <asp:Parameter Name="Freight" Type="Decimal" />
                    <asp:Parameter Name="TotalDue" Type="Decimal" />
                    <asp:Parameter Name="Comment" Type="String" />
                    <asp:Parameter Name="rowguid" Type="Object" />
                    <asp:Parameter Name="ModifiedDate" Type="DateTime" />
                    <asp:Parameter Name="SalesOrderID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksLT2022ConnectionString %>" DeleteCommand="DELETE FROM [SalesOrderDetail] WHERE [SalesOrderID] = @SalesOrderID AND [SalesOrderDetailID] = @SalesOrderDetailID" InsertCommand="INSERT INTO [SalesOrderDetail] ([SalesOrderID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [rowguid], [ModifiedDate]) VALUES (@SalesOrderID, @OrderQty, @ProductID, @UnitPrice, @UnitPriceDiscount, @LineTotal, @rowguid, @ModifiedDate)" SelectCommand="SELECT SalesOrderID, SalesOrderDetailID, OrderQty, ProductID, UnitPrice, UnitPriceDiscount, LineTotal, rowguid, ModifiedDate FROM SalesLT.SalesOrderDetail WHERE (SalesOrderID = @SalesOrderID)" UpdateCommand="UPDATE [SalesOrderDetail] SET [OrderQty] = @OrderQty, [ProductID] = @ProductID, [UnitPrice] = @UnitPrice, [UnitPriceDiscount] = @UnitPriceDiscount, [LineTotal] = @LineTotal, [rowguid] = @rowguid, [ModifiedDate] = @ModifiedDate WHERE [SalesOrderID] = @SalesOrderID AND [SalesOrderDetailID] = @SalesOrderDetailID">
                <DeleteParameters>
                    <asp:Parameter Name="SalesOrderID" Type="Int32" />
                    <asp:Parameter Name="SalesOrderDetailID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="SalesOrderID" Type="Int32" />
                    <asp:Parameter Name="OrderQty" Type="Int16" />
                    <asp:Parameter Name="ProductID" Type="Int32" />
                    <asp:Parameter Name="UnitPrice" Type="Decimal" />
                    <asp:Parameter Name="UnitPriceDiscount" Type="Decimal" />
                    <asp:Parameter Name="LineTotal" Type="Decimal" />
                    <asp:Parameter Name="rowguid" Type="Object" />
                    <asp:Parameter Name="ModifiedDate" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="SalesOrderID" PropertyName="Text" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="OrderQty" Type="Int16" />
                    <asp:Parameter Name="ProductID" Type="Int32" />
                    <asp:Parameter Name="UnitPrice" Type="Decimal" />
                    <asp:Parameter Name="UnitPriceDiscount" Type="Decimal" />
                    <asp:Parameter Name="LineTotal" Type="Decimal" />
                    <asp:Parameter Name="rowguid" Type="Object" />
                    <asp:Parameter Name="ModifiedDate" Type="DateTime" />
                    <asp:Parameter Name="SalesOrderID" Type="Int32" />
                    <asp:Parameter Name="SalesOrderDetailID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksLT2022ConnectionString %>" SelectCommand="SELECT CustomerID, NameStyle, Title, FirstName, MiddleName, LastName, Suffix, CompanyName, SalesPerson, EmailAddress, Phone, PasswordHash, PasswordSalt, rowguid, ModifiedDate FROM SalesLT.Customer"></asp:SqlDataSource>
            
            輸入訂單編號:<br />
            <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="181px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Height="25px" Text="確定" Width="58px" />
            <br />
        </div>
        <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="SalesOrderID" DataSourceID="SqlDataSource1" Height="16px" Width="477px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="SalesOrderID" HeaderText="SalesOrderID" InsertVisible="False" ReadOnly="True" SortExpression="SalesOrderID" />
                    <asp:BoundField DataField="RevisionNumber" HeaderText="RevisionNumber" SortExpression="RevisionNumber" />
                    <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                    <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
                    <asp:BoundField DataField="ShipDate" HeaderText="ShipDate" SortExpression="ShipDate" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:CheckBoxField DataField="OnlineOrderFlag" HeaderText="OnlineOrderFlag" SortExpression="OnlineOrderFlag" />
                    <asp:BoundField DataField="SalesOrderNumber" HeaderText="SalesOrderNumber" ReadOnly="True" SortExpression="SalesOrderNumber" />
                    <asp:BoundField DataField="PurchaseOrderNumber" HeaderText="PurchaseOrderNumber" SortExpression="PurchaseOrderNumber" />
                    <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                    <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                    <asp:BoundField DataField="ShipToAddressID" HeaderText="ShipToAddressID" SortExpression="ShipToAddressID" />
                    <asp:BoundField DataField="BillToAddressID" HeaderText="BillToAddressID" SortExpression="BillToAddressID" />
                    <asp:BoundField DataField="ShipMethod" HeaderText="ShipMethod" SortExpression="ShipMethod" />
                    <asp:BoundField DataField="CreditCardApprovalCode" HeaderText="CreditCardApprovalCode" SortExpression="CreditCardApprovalCode" />
                    <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" SortExpression="SubTotal" />
                    <asp:BoundField DataField="TaxAmt" HeaderText="TaxAmt" SortExpression="TaxAmt" />
                    <asp:BoundField DataField="Freight" HeaderText="Freight" SortExpression="Freight" />
                    <asp:BoundField DataField="TotalDue" HeaderText="TotalDue" ReadOnly="True" SortExpression="TotalDue" />
                    <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                    <asp:BoundField DataField="rowguid" HeaderText="rowguid" SortExpression="rowguid" />
                    <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" SortExpression="ModifiedDate" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        <br />
        <br />
            <asp:GridView ID="GridView4" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SalesOrderID,SalesOrderDetailID" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="SalesOrderID" SortExpression="SalesOrderID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("SalesOrderID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("SalesOrderID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="SalesOrderDetailID" HeaderText="SalesOrderDetailID" InsertVisible="False" ReadOnly="True" SortExpression="SalesOrderDetailID" />
                    <asp:BoundField DataField="OrderQty" HeaderText="OrderQty" SortExpression="OrderQty" />
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                    <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                    <asp:BoundField DataField="UnitPriceDiscount" HeaderText="UnitPriceDiscount" SortExpression="UnitPriceDiscount" />
                    <asp:BoundField DataField="LineTotal" HeaderText="LineTotal" ReadOnly="True" SortExpression="LineTotal" />
                    <asp:BoundField DataField="rowguid" HeaderText="rowguid" SortExpression="rowguid" />
                    <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" SortExpression="ModifiedDate" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
    </form>
</body>
</html>

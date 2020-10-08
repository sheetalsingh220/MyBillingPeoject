<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="BILLING.List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-color:aqua;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="276px" Width="661px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Tbill" HeaderText="Tbill" SortExpression="Tbill" />
                <asp:BoundField DataField="Catbill" HeaderText="Catbill" SortExpression="Catbill" />
                <asp:BoundField DataField="Amtbill" HeaderText="Amtbill" SortExpression="Amtbill" />
                <asp:BoundField DataField="Dateentry" HeaderText="Dateentry" SortExpression="Dateentry" />
                <asp:BoundField DataField="Due" HeaderText="Due" SortExpression="Due" />
                <asp:BoundField DataField="Paymode" HeaderText="Paymode" SortExpression="Paymode" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sheetalDBConnectionString %>" SelectCommand="SELECT * FROM [Bill]"></asp:SqlDataSource>
    </form>
</body>
</html>

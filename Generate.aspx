<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Generate.aspx.cs" Inherits="BILLING.Generate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 70%;
        }
        body{
            background-color:aqua;
        }
        .auto-style2 {
            width: 108px;
            background-color: #993300;
        }
        .auto-style3 {
            width: 100px;
            background-color: #993300;
        }
        .auto-style4 {
            width: 100px;
        }
        .auto-style6 {
            width: 164px;
        }
        .auto-style7 {
            width: 108px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2">Bill Generation </td>
                    <td class="auto-style3">WebFrom</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Bill Title</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Bill Category</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Family</asp:ListItem>
                            <asp:ListItem>Personal</asp:ListItem>
                            <asp:ListItem>Office</asp:ListItem>
                            <asp:ListItem>Social</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Bill Amount</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Date of Entry</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Due Date</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Payment Mode</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Net Bnaking</asp:ListItem>
                            <asp:ListItem>UPI Transfer</asp:ListItem>
                            <asp:ListItem>Offline</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Bill Status</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>Paid</asp:ListItem>
                            <asp:ListItem>Due</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate Bill" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="First.aspx.cs" Inherits="BILLING.First" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            padding: inherit;
        }
        .auto-style1 {
            padding:30px inherit;
            font-size: x-large;
        }
        body{
            background-color:aqua;
        }
    </style>
</head>
<body style="text-align: center; height: 42px" >
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" BackColor="#66FF33" BorderColor="Maroon" BorderStyle="Ridge" BorderWidth="3px" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal" StaticSubMenuIndent="30px" Width="50%" style="font-weight: 700" cellpadding-widths="30px" CssClass="auto-style1" ForeColor="#663300" Height="30px">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Login.aspx" Text="Login" Value="Login"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Registration.aspx" Text="Registration" Value="Registration"></asp:MenuItem>
                    <asp:MenuItem Text="About" Value="About"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
    </form>
</body>
</html>

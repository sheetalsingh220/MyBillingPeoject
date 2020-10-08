<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Billl.aspx.cs" Inherits="BILLING.Billl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            color: #FFFF00;
            background-color: #006666;
            text-decoration: underline;
        }
        
        .auto-style2 {
            text-align: center;
        }
        .auto-style1 {
            font-style: italic;
            font-weight: bold;
            font-size: x-large;
            text-align: center;
        }
        body{
            background-color:aqua;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="auto-style2">
            <asp:Menu ID="Menu2" runat="server" CssClass="auto-style1" ForeColor="Yellow" OnMenuItemClick="Menu2_MenuItemClick" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Generate.aspx" Text="Generate" Value="Generate"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Billl.aspx" Text="Bill" Value="Bill"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/List.aspx" Text="All List" Value="All List"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Due.aspx" Text="Due Bills" Value="Due Bills"></asp:MenuItem>
                </Items>
            </asp:Menu>
            </div>
            </strong>
        </div>
    </form>
</body>
</html>

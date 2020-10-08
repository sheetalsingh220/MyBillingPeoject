<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BILLING.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            background-color: #FF6600;
        }
        body{
            background-color:aqua;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 class="auto-style2">WELCOME TO E-BILLING</h1>
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="New User" />
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Existing user" />
        </p>
    </form>
</body>
</html>

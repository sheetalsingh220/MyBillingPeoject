<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BILLING.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
        }
        .auto-style2 {
            background-color: #999966;
        }
        .auto-style3 {
            width: 254px;
            background-color: #999966;
        }
        .auto-style4 {
            width: 254px;
        }
        .auto-style5 {
            width: 177px;
            background-color: #999966;
        }
        .auto-style6 {
            width: 177px;
        }
        body{
            background-color:aqua;
        }
        .auto-style7 {
            width: 177px;
            height: 30px;
        }
        .auto-style8 {
            width: 254px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5"><strong></strong></td>
                    <td class="auto-style3"><strong>Login Page</strong></td>
                    <td class="auto-style2"><strong></strong></td>
                </tr>
                <tr>
                    <td class="auto-style6">Username</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Password</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

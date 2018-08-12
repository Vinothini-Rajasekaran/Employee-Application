<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paycheck.aspx.cs" Inherits="Lav_Vino_Project.Paycheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <link href="Style.css" rel="stylesheet" type="text/css" />

    <title></title>
</head>
<body>
    <div runat="server" align="right">  
        <asp:HyperLink runat="server" href="Home_Page.aspx" CssClass="btn" style="text-decoration:none">Home</asp:HyperLink>    
        <asp:HyperLink runat="server" href="Login.aspx" CssClass="btn" style="text-decoration:none">Logout</asp:HyperLink>
    </div>
    <form id="form1" runat="server">
     
        <table id="paycheck" visible="false">
            <tr>
                <td>
                    <asp:ListBox ID="ListBox1" runat="server">
                    </asp:ListBox><br />
                </td>
            </tr>
        </table>
        <asp:Button align="left" ID="pay_button" runat="server" CssClass="btn" OnClick="Paycheck_Click" Text="paycheck" />
    </form>
</body>
</html>

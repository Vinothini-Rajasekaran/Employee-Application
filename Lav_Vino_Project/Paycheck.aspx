<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paycheck.aspx.cs" Inherits="Lav_Vino_Project.Paycheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <link href="Style.css" rel="stylesheet" type="text/css" />

    <title></title>
</head>
<body class="home">
    <div runat="server" align="right">  
        <br />
        <asp:HyperLink runat="server" href="Home_Page.aspx" CssClass="btn" style="text-decoration:none">Home</asp:HyperLink>    
        <asp:HyperLink runat="server" href="Login.aspx" CssClass="btn" style="text-decoration:none">Logout</asp:HyperLink>
    </div>
    <form id="form1" runat="server">
     
        <asp:PlaceHolder runat="server" ID="ph"></asp:PlaceHolder>
    </form>
</body>
</html>

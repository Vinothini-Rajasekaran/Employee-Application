<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="Lav_Vino_Project.Notifications" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <link href="Style.css" rel="stylesheet" type="text/css" />

    <title></title>
</head>
<body class="home">
   
    <form id="form1" runat="server">
        <div runat="server">
        <h3 runat="server" style="color:white;">
         <asp:Button align="right" style="float:right" margin-right="1em" runat="server" Text="Logout" CssClass="btn" ID="Logout" OnClick="logout_Click"></asp:Button>
            <asp:Button align="right" style="float:right" runat="server" Text="Home" CssClass="btn" ID="home" OnClick="home_Click"></asp:Button>        
                Task Planner</h3>
        
        </div>
            <asp:PlaceHolder runat="server" ID="ph"></asp:PlaceHolder>
        
    </form>
</body>
</html>

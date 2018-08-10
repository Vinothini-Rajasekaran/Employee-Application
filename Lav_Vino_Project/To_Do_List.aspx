<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="To_Do_List.aspx.cs" Inherits="Lav_Vino_Project.To_Do_List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <link href="Style.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div runat="server" align="right">
                        
            <asp:Button runat="server" Text="Home" CssClass="btn" ID="home" OnClick="home_Click"></asp:Button>         

        </div>
    </form>
</body>
</html>

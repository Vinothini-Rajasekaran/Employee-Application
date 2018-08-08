<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Lav_Vino_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
 
      <link href="Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1 align="center" class="color">Employee App</h1>
    <h2 align="center" class="color">Login</h2>

  <div class="form">
    <form  runat="server" method="post" action="">
          <asp:Image ID="image" ImageUrl="images/image.png" runat="server" Width="104px" />
           <div class="login-content"> 
            <asp:TextBox  class="field" placeholder="Username" runat="server" ID="username" required></asp:TextBox>
            <asp:TextBox class="field" placeholder="Password" runat="server" ID="password" required></asp:TextBox>
            <asp:button class="btn" runat="server" placeholder="login" Text="Login" ID="login" onClick="login_Click"/></asp:button>
             

            <asp:HyperLink runat="server" href="Signup.aspx">Not a User? Signup</asp:HyperLink>
           </div>
    </form>
      
  </div>
</body>
</html>

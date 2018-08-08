<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Lav_Vino_Project.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
 
      <link href="Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1 align="center" class="color">Employee App</h1>
    <h2 align="center" class="color">SignUp</h2>

  <div class="signup-form">
    <form runat="server" method="post" action="">
           <div class="signup-content"> 
            <asp:TextBox  class="field" placeholder="Username" runat="server" ID="signup_username" required></asp:TextBox>
            <asp:TextBox class="field" placeholder="Password" runat="server" ID="signup_password" Textmode="Password" required></asp:TextBox>
            <asp:TextBox class="field" placeholder="Employee_id" runat="server" ID="signup_eid" required></asp:TextBox>
            <asp:button class="btn" runat="server" placeholder="Signup" Text="Signup" ID="signup" OnClick="signup_Click"></asp:button>
           </div>
    </form>
  </div>
</body>
</html>


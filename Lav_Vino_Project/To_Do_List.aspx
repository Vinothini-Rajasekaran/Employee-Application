<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="To_Do_List.aspx.cs" Inherits="Lav_Vino_Project.To_Do_List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <link href="Style.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body class="home">
    
    
    <form id="form2" runat="server" action="" method="post">
        <div runat="server">
        <h3 runat="server" style="color:white;">
         <asp:Button align="right" style="float:right" margin-right="1em" runat="server" Text="Logout" CssClass="btn" ID="Logout" OnClick="logout_Click"></asp:Button>
            <asp:Button align="right" style="float:right" runat="server" Text="Home" CssClass="btn" ID="home" OnClick="home_Click"></asp:Button>        
                To Do List</h3>
        
        </div>
  
         <div runat="server" align="left">            
             <asp:TextBox  class="to-form" placeholder="Task Name" runat="server" ID="tname" required></asp:TextBox>
           </div>

        <p>
            <asp:TextBox class="to-form" placeholder="Duration" runat="server" ID="duration"  required></asp:TextBox>
            </p>
        <p>
            <asp:TextBox class="to-form" placeholder="Start Date" runat="server" ID="sdate" required></asp:TextBox>
            </p>
        <p>
            <asp:TextBox class="to-form" placeholder="End Date" runat="server" ID="edate" required></asp:TextBox>
             </p>
        <p>
             <asp:TextBox class="to-form" placeholder="Status" runat="server" ID="status" required></asp:TextBox>
            </p>
        <p>
            <asp:TextBox class="to-form" placeholder="Description" runat="server" ID="desc" required></asp:TextBox>
          
             </p>
<p>
            <asp:TextBox class="to-form" placeholder="Employee No" runat="server" ID="emp_no" required></asp:TextBox>
          
             </p>
        <p>
          
             <asp:button class="btn" runat="server" placeholder="Add" Text="Add" ID="add" OnClick="add_Click"></asp:button>
           </p>
            
    </form>
</body>
</html>

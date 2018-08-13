<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_Page.aspx.cs" Inherits="Lav_Vino_Project.Home_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="Style.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>      
    
     <body class="home">
        <marquee direction="left" style=" text-decoration:wavy;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:50px;">
                <asp:Label ID="text" runat="server"  ForeColor="Cyan" Text="Everyday in everything I'm getting better and better!"></asp:Label>
        </marquee>
         <div runat="server" align="right">
             <asp:HyperLink runat="server" href="Login.aspx" CssClass="btn" style="text-decoration:none">Logout</asp:HyperLink>
         </div>
       
         <div class="row">
         <div class="column">
         <form runat="server" style="height: 554px">  
          <asp:button class="btn" runat="server"  Text="Personal_Info" ID="personal_info" onClick="personal_info_Click" Width="268px"/>
           

           <p>
          <asp:button class="btn" runat="server" Text="Employee_Directory" ID="employee_dir" onClick="employee_dir_Click" Width="268px"/>
           </p>
           <p>
          <asp:button class="btn" runat="server"  Text="Notifications" ID="notifications" onClick="notifications_Click" Width="268px"/>
           </p>
           <p>
          <asp:button class="btn" runat="server"  Text="To_Do_List" ID="to_do_list" onClick="to_do_list_Click" Width="268px"/>
           </p>
           <p>
          <asp:button class="btn" runat="server"  Text="Paycheck" ID="paycheck" onClick="paycheck_Click" Width="268px"/>
           </p>
     </form>
     </div>
     <div class="column">
         <marquee direction="Left" behaviour="slide">

       <!--  <asp:HyperLink runat="server" ID="first" NavigateUrl="~/News.aspx">
             <asp:Image runat="server"  ImageUrl="~/images/1.jpg" Width="70%" Height="20%"/><br />
         </asp:HyperLink>
        
         <asp:HyperLink runat="server" ID="second" NavigateUrl="~/News.aspx">    
        <asp:Image runat="server"  ImageUrl="~/images/2.jpg" Width="70%" Height="20%"/><br />
        </asp:HyperLink>

        <asp:HyperLink runat="server" ID="third" NavigateUrl="~/News.aspx">
             <asp:Image runat="server"  ImageUrl="~/images/3.jpg" Width="70%" Height="20%"/><br />
        </asp:HyperLink>

        <asp:HyperLink runat="server" ID="fourth" NavigateUrl="~/News.aspx">
             <asp:Image runat="server"  ImageUrl="~/images/4.jpg" Width="70%" Height="20%"/><br />
        </asp:HyperLink>

        <asp:HyperLink runat="server" ID="five" NavigateUrl="~/News.aspx">
             <asp:Image runat="server"  ImageUrl="~/images/5.jpg" Width="70%" Height="20%"/><br />
        </asp:HyperLink>-->

            <asp:PlaceHolder runat="server" ID="pl"></asp:PlaceHolder>
         </marquee>
          

     </div>
     </div>
</body>
</html>

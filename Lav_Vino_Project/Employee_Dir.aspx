<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_Dir.aspx.cs" Inherits="Lav_Vino_Project.Employee_dir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <link href="Style.css" rel="stylesheet" type="text/css" />

    <title></title>
</head>
    <body class="home">
    <form id="form1" runat="server">
        <div runat="server" align="right">
            <asp:Button runat="server" Text="Home" CssClass="btn" ID="home" OnClick="home_Click"></asp:Button>        
            <asp:Button runat="server" Text="Logout" CssClass="btn" ID="Logout" OnClick="logout_Click"></asp:Button>  
        </div>
        <div runat="server" >
            <div id="search1" runat="server">
                <asp:TextBox ID="Search_name" runat="server" placeholder="Employee Name"></asp:TextBox>
                <asp:Button ID="Search" runat="server" OnClick="Search_Click" Text="Search" />
            </div>
            <!--<asp:Image runat="server" ID="Emp_img" Visible="false"/>-->
            <asp:Table ID="Table1" 
            runat="server" 
            Visible="false"
            Font-Size="X-Large" 
            Width="550" 
            CellPadding="5"
            CellSpacing="5"
            >
            
                <asp:TableRow><asp:TableCell Width="20%" ForeColor="White" Font-Size="Medium">Employee_No</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="eno"  Cssclass="info-field" Font-Size="Large"></asp:Label></asp:TableCell>
                </asp:TableRow>

                 <asp:TableRow><asp:TableCell ForeColor="White" Font-Size="Medium">First Name</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="fname"  Cssclass="info-field" Font-Size="Large"></asp:Label>
                </asp:TableCell></asp:TableRow>
                
                <asp:TableRow><asp:TableCell ForeColor="White" Font-Size="Medium">Last Name</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="lname" Cssclass="info-field" Font-Size="Large"></asp:Label></asp:TableCell></asp:TableRow>
                 
                 <asp:TableRow><asp:TableCell ForeColor="White" Font-Size="Medium">Date of Birth</asp:TableCell>
                 <asp:TableCell><asp:Label runat="server" ID="bday" Cssclass="info-field" Font-Size="Large"></asp:Label></asp:TableCell></asp:TableRow>
               
                <asp:TableRow><asp:TableCell ForeColor="White" Font-Size="Medium">Gender</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="gender"  Cssclass="info-field" Font-Size="Large"></asp:Label></asp:TableCell></asp:TableRow>
               
                <asp:TableRow><asp:TableCell ForeColor="White" Font-Size="Medium">Department</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="dname"  Cssclass="info-field" Font-Size="Large"></asp:Label></asp:TableCell></asp:TableRow>
                
                <asp:TableRow><asp:TableCell ForeColor="White" Font-Size="Medium">Hire Date</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="hdate"  Cssclass="info-field" Font-Size="Large"></asp:Label></asp:TableCell>
                </asp:TableRow>

                </asp:Table>       

        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personal_Info.aspx.cs" Inherits="Lav_Vino_Project.Personal_Info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <link href="Style.css" rel="stylesheet" type="text/css" />


    <title></title>
</head>
<body class="home">
    <form id="form1" runat="server">
        <div runat="server" >
            
            <asp:Table ID="Table1" 
            runat="server" 
            Font-Size="X-Large" 
            Width="550" 
            BorderWidth="2"
            CellPadding="5"
            CellSpacing="5"
            >
            
                <asp:TableRow><asp:TableCell>Employee_No</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="eno"  Cssclass="info-field"></asp:Label></asp:TableCell>
                </asp:TableRow>

                 <asp:TableRow><asp:TableCell>First Name</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="fname"  Cssclass="info-field"></asp:Label>
                </asp:TableCell></asp:TableRow>
                
                <asp:TableRow><asp:TableCell>Last Name</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="lname" Cssclass="info-field"></asp:Label></asp:TableCell></asp:TableRow>
                 
                 <asp:TableRow><asp:TableCell>Date of Birth</asp:TableCell>
                 <asp:TableCell><asp:Label runat="server" ID="bday" Cssclass="info-field"></asp:Label></asp:TableCell></asp:TableRow>
               
                <asp:TableRow><asp:TableCell>Gender</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="gender"  Cssclass="info-field"></asp:Label></asp:TableCell></asp:TableRow>
               
                <asp:TableRow><asp:TableCell>Department</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="hdate"  Cssclass="info-field"></asp:Label></asp:TableCell></asp:TableRow>
                
                <asp:TableRow><asp:TableCell>Hire Date</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="dname"  Cssclass="info-field"></asp:Label></asp:TableCell>
                </asp:TableRow>

                </asp:Table>
              <asp:Button runat="server" Text="Home" CssClass="btn" ID="home" OnClick="home_Click"></asp:Button>         
        </div>
    </form>
</body>
</html>

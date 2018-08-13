<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pay.aspx.cs" Inherits="Lav_Vino_Project.Pay" %>

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
        <asp:Button runat="server" Text="Logout" CssClass="btn" ID="logout" OnClick="logout_Click"></asp:Button>
        
        </div>
        <div runat="server">
             <asp:Table ID="Table1" 
            runat="server" 
            Font-Size="X-Large" 
            Width="550" 
            CellPadding="5"
            CellSpacing="5" >
            
                <asp:TableRow><asp:TableCell ForeColor="White" Width="20%" Font-Size="Medium">From Date</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="fdate"  Cssclass="info-field" Font-Size="Large"></asp:Label></asp:TableCell>
                </asp:TableRow>

                 <asp:TableRow><asp:TableCell ForeColor="White" Font-Size="Medium">To Date</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="tdate"  Cssclass="info-field" Font-Size="Large"></asp:Label>
                </asp:TableCell></asp:TableRow>
                
                <asp:TableRow><asp:TableCell ForeColor="White" Font-Size="Medium">Salary</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="salary" Cssclass="info-field" Font-Size="Large"></asp:Label></asp:TableCell></asp:TableRow>
                 
                 <asp:TableRow><asp:TableCell ForeColor="White" Font-Size="Medium">Federal Tax</asp:TableCell>
                 <asp:TableCell><asp:Label runat="server" ID="ftax" Cssclass="info-field" Font-Size="Large"></asp:Label></asp:TableCell></asp:TableRow>
               
                <asp:TableRow><asp:TableCell ForeColor="White" Font-Size="Medium">State Tax</asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="stax"  Cssclass="info-field" Font-Size="Large"></asp:Label></asp:TableCell></asp:TableRow>
              

                </asp:Table>
                       
        
        </div>
        </div>
    </form>
</body>
</html>

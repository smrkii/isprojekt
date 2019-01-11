<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Festival.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="CSS.css"> 
    <title></title>
</head>
<body>
    <div id="log">
    <form id="aa" runat="server">
    <asp:Button class="gumb" ID="Pregled" runat="server" Text="Preglej vstopnice" OnClick="Pregled_Click" />
    <asp:Button class="gumb" ID="Rezervacija" runat="server" Text="Rezerviraj se" OnClick="Rezervacija_Click" />
        <asp:Button class="gumb" ID="Odjava" runat="server" Text="Odjava" OnClick="Odjava_Click" />
        </form>
        </div>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Festival.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="CSS.css"> 
    <title></title>
</head>
<body>
    <div id="log">
    <form id="form1" runat="server">
        <div>
            <asp:Label  ID="Label3" runat="server" Text="Uporabnisko ime:"></asp:Label><asp:TextBox class="text" ID="Up_ime" runat="server"></asp:TextBox>
        </div>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Geslo:"></asp:Label><asp:TextBox class="text" ID="Geslo" runat="server"></asp:TextBox>
        </p>
        <asp:button class="gumb" ID="Prijava" runat="server" Text="Prijava" OnClick="Prijava_Click" />
        <asp:button class="gumb" ID="Registracija" runat="server" Text="Registracija" OnClick="Registracija_Click" />
    </form>
        </div>
</body>
</html>

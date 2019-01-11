<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Festival.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="CSS.css"> 
    <title></title>
</head>
<body>
    <div id="register">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ime"></asp:Label><asp:TextBox ID="Ime" class="text" runat="server" OnTextChanged="Ime_TextChanged"></asp:TextBox>
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Priimek"></asp:Label><asp:TextBox ID="Priimek" class="text" runat="server"></asp:TextBox>
            </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Uporabnisko ime"></asp:Label><asp:TextBox ID="Up_ime" class="text" runat="server"></asp:TextBox>
            </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Geslo"></asp:Label><asp:TextBox ID="Geslo" class="text" runat="server" type="password" ></asp:TextBox>
            </p>
        <p>
            <asp:Button class="gumb" ID="Prijava" runat="server" Text="Prijava" OnClick="Prijava_Click" />
            <asp:Button class="gumb" ID="Registracija" runat="server" Text="Registracija" OnClick="Registracija_Click" />
        </p>
    </form>
        </div>
</body>
</html>

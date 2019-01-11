<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Festival.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="CSS.css"> 
    <title></title>
    <link rel="stylesheet" type="text/css" href="CSS.css"> 
</head>
<body>
    <div id="log">
    <form id="form1" runat="server">
        
            <asp:Button class="gumb" ID="AddUporabnik" runat="server" Text="Dodaj Uporabnika" OnClick="AddUporabnik_Click" />
            <asp:Button class="gumb" ID="AddFestival" runat="server" Text="Dodaj Festival" OnClick="AddFestival_Click" />
            <asp:Button class="gumb" ID="AddDržava" runat="server" Text="Dodaj Državo" OnClick="AddDržava_Click" />
            <asp:Button class="gumb" ID="AddNastopajoči" runat="server" Text="Dodaj Nastopajoče" OnClick="AddNastopajoči_Click" />
            <asp:Button class="gumb" ID="AddKraj" runat="server" Text="Dodaj Kraj" OnClick="AddKraj_Click" />
            <asp:Button class="gumb" ID="AddLokacija" runat="server" Text="Dodaj lokacijo na festivalu " OnClick="AddLokacija_Click" />
            <asp:Button class="gumb" ID="Logoff" runat="server" Text="Odjava " OnClick="Nazaj_Click" />

      
    </form>
          </div>
</body>
</html>

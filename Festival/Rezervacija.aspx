<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rezervacija.aspx.cs" Inherits="Festival.Rezervacija" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="CSS.css"> 
    <script>
           
        function val() {
             var e = document.getElementById("Lokacije");

            
            document.getElementById("cenlok").value = e.options[e.selectedIndex].text; 

            document.getElementById("Konec").value = +document.getElementById("cenlok").value + + document.getElementById("Cena").value;

            //document.getElementById("Dnevi").value = document.getElementById("from_date").getTime() + document.getElementById("to_date").getTime();

            var date1 = new Date(document.getElementById("from_date").value);
            var date2 = new Date(document.getElementById("to_date").value);
            var rezultat = (date2 - date1) / (24 * 3600 * 1000) + 1;
            if (rezultat <= 0) {
                
                document.getElementById("Konec").value = "Napacen datum";
                document.getElementById("Zakljuci").style.display = "none"
            }
            else {
                document.getElementById("Konec").value = (+document.getElementById("cenlok").value + + document.getElementById("Cena").value) * rezultat;
                document.getElementById("Zakljuci").style.display = "block";
            }
            document.getElementById("Dnevi").value = rezultat;
            
        }
        
    </script>


    <title></title>
</head>

<body style="height: 414px" onload="val()">
    <div id="rezervacija">
    <form id="form1" runat="server" style="margin:auto">

        <asp:Label ID="Opis_Ime" runat="server" Text="Ime: " style="display:none;visibility: hidden;"></asp:Label><asp:TextBox ID="Ime" runat="server" Value="" style="display:none;visibility: hidden;"></asp:TextBox>
        <p>
        <asp:Label ID="Opis_Priimek" runat="server" Text="Priimek: " style="display:none;visibility: hidden;"></asp:Label><asp:TextBox ID="Priimek" runat="server" style="display:none;visibility: hidden;"></asp:TextBox>
        </p>
        <asp:Label ID="Opis_Festival" runat="server" Text="Festival: "></asp:Label><asp:DropDownList class="dropdown" ID="Festivali" runat="server" DataSourceID="SqlDataSource2" DataTextField="Ime_Festivala" DataValueField="Id" OnSelectedIndexChanged="Festivali_SelectedIndexChanged" AutoPostBack="True" style="width: 88px" onchange="val()"></asp:DropDownList>
        <p>
        <asp:Label ID="Opis_Lokacija" runat="server" Text="Cena lokacije v €: "></asp:Label><asp:DropDownList class="dropdown" ID="Lokacije" runat="server"  DataSourceID="SqlDataSource5" DataTextField="Cena_Lokacije" DataValueField="ID_Festivala" onchange="val()">
                <asp:ListItem Value="11">Brez Prenočišča</asp:ListItem>
            </asp:DropDownList>
        </p>
        <asp:Label ID="Opis_OD" runat="server" Text="OD: "></asp:Label><asp:TextBox ID="from_date" class="dropdown" runat="server" placeholder="From" type="date" onchange="val()"></asp:TextBox>
        <p>
        <asp:Label ID="Opis_DO" runat="server" Text="DO: "></asp:Label><asp:TextBox ID="to_date" class="dropdown" runat="server" placeholder="From"  type="date" onchange="val()"></asp:TextBox>
        <p>
        <asp:TextBox ID="Cena" runat="server" text="" style="display:none"></asp:TextBox>
            <asp:TextBox ID="cenlok" runat="server" style="display:none"></asp:TextBox>
            <asp:TextBox ID="Dnevi" runat="server" style="display:none"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="Koncna cena: "></asp:Label><asp:TextBox ID="Konec" runat="server" text="" class="koncnacena"></asp:TextBox>
           
        
            <asp:SqlDataSource 
                ID="SqlDataSource2" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:FestivalConnectionString %>" 
                SelectCommand="SELECT * FROM [Festival]" OnSelecting="SqlDataSource2_Selecting">
                 
            </asp:SqlDataSource>

           
        
            <asp:sqldatasource 
                ID="SqlDataSource5"
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:FestivalConnectionString %>" 
                
               SelectCommand="SELECT [ID_Festivala], [Cena_Lokacije] FROM [Lokacija_Na_festivalu] where ID_Festivala =@idFes " OnSelecting="SqlDataSource5_Selecting">
                <SelectParameters>
                    <asp:Parameter Name="idFes" Type="Int32" />
            </SelectParameters>
            </asp:sqldatasource>

         <p><asp:Button class="gumb" ID="GoBack" runat="server" Text="Nazaj " OnClick="GoBack_Click"/>
             <asp:Button class="gumb" ID="Zakljuci" runat="server" Text="Potrdi" OnClick="Zakljuci_Click" />
    </form>
        </div>
</body>
</html>

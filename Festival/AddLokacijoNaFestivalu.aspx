<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddLokacijoNaFestivalu.aspx.cs" Inherits="Festival.AddLokacijoNaFestivalu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="CSS.css"> 
    <title></title>
</head>
<body>
    <div id="log">
    <form id="form1" runat="server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="ManageLokacijaNaFestivalu">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            ID_Festivala:
            <asp:TextBox ID="ID_FestivalaTextBox" runat="server" Text='<%# Bind("ID_Festivala") %>' />
            <br />
            Kapaciteta:
            <asp:TextBox ID="KapacitetaTextBox" runat="server" Text='<%# Bind("Kapaciteta") %>' />
            <br />
            Zasedenost:
            <asp:TextBox ID="ZasedenostTextBox" runat="server" Text='<%# Bind("Zasedenost") %>' />
            <br />
            Cena_Lokacije:
            <asp:TextBox ID="Cena_LokacijeTextBox" runat="server" Text='<%# Bind("Cena_Lokacije") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ID_Festivala:
            <asp:TextBox ID="ID_FestivalaTextBox" runat="server" Text='<%# Bind("ID_Festivala") %>' />
            <br />
            Kapaciteta:
            <asp:TextBox ID="KapacitetaTextBox" runat="server" Text='<%# Bind("Kapaciteta") %>' />
            <br />
            Zasedenost:
            <asp:TextBox ID="ZasedenostTextBox" runat="server" Text='<%# Bind("Zasedenost") %>' />
            <br />
            Cena_Lokacije:
            <asp:TextBox ID="Cena_LokacijeTextBox" runat="server" Text='<%# Bind("Cena_Lokacije") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            ID_Festivala:
            <asp:Label ID="ID_FestivalaLabel" runat="server" Text='<%# Bind("ID_Festivala") %>' />
            <br />
            Kapaciteta:
            <asp:Label ID="KapacitetaLabel" runat="server" Text='<%# Bind("Kapaciteta") %>' />
            <br />
            Zasedenost:
            <asp:Label ID="ZasedenostLabel" runat="server" Text='<%# Bind("Zasedenost") %>' />
            <br />
            Cena_Lokacije:
            <asp:Label ID="Cena_LokacijeLabel" runat="server" Text='<%# Bind("Cena_Lokacije") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="ManageLokacijaNaFestivalu" runat="server" ConnectionString="<%$ ConnectionStrings:FestivalConnectionString %>" SelectCommand="SELECT * FROM [Lokacija_Na_festivalu]" DeleteCommand="DELETE FROM [Lokacija_Na_festivalu] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Lokacija_Na_festivalu] ([ID_Festivala], [Kapaciteta], [Zasedenost], [Cena_Lokacije]) VALUES (@ID_Festivala, @Kapaciteta, @Zasedenost, @Cena_Lokacije)" UpdateCommand="UPDATE [Lokacija_Na_festivalu] SET [ID_Festivala] = @ID_Festivala, [Kapaciteta] = @Kapaciteta, [Zasedenost] = @Zasedenost, [Cena_Lokacije] = @Cena_Lokacije WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_Festivala" Type="Int32" />
                <asp:Parameter Name="Kapaciteta" Type="Int32" />
                <asp:Parameter Name="Zasedenost" Type="Int32" />
                <asp:Parameter Name="Cena_Lokacije" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_Festivala" Type="Int32" />
                <asp:Parameter Name="Kapaciteta" Type="Int32" />
                <asp:Parameter Name="Zasedenost" Type="Int32" />
                <asp:Parameter Name="Cena_Lokacije" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button class="gumb" ID="Logoff" runat="server" Text="Nazaj " OnClick="Nazaj_Click" />
    </form>
        </div>
</body>
</html>

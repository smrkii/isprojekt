<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFestival.aspx.cs" Inherits="Festival.AddFestival" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="CSS.css"> 
    <title></title>
</head>
<body>
    <div id="log">
    <form id="form1" runat="server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="ManageFestival">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            ID_Kraja:
            <asp:TextBox ID="ID_KrajaTextBox" runat="server" Text='<%# Bind("ID_Kraja") %>' />
            <br />
            Ime_Festivala:
            <asp:TextBox ID="Ime_FestivalaTextBox" runat="server" Text='<%# Bind("Ime_Festivala") %>' />
            <br />
            Trajanje_Od:
            <asp:TextBox ID="Trajanje_OdTextBox" runat="server" Text='<%# Bind("Trajanje_Od") %>' />
            <br />
            Trajanje_Do:
            <asp:TextBox ID="Trajanje_DoTextBox" runat="server" Text='<%# Bind("Trajanje_Do") %>' />
            <br />
            Cena_Na_Dan:
            <asp:TextBox ID="Cena_Na_DanTextBox" runat="server" Text='<%# Bind("Cena_Na_Dan") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ID_Kraja:
            <asp:TextBox ID="ID_KrajaTextBox" runat="server" Text='<%# Bind("ID_Kraja") %>' />
            <br />
            Ime_Festivala:
            <asp:TextBox ID="Ime_FestivalaTextBox" runat="server" Text='<%# Bind("Ime_Festivala") %>' />
            <br />
            Trajanje_Od:
            <asp:TextBox ID="Trajanje_OdTextBox" runat="server" Text='<%# Bind("Trajanje_Od") %>' />
            <br />
            Trajanje_Do:
            <asp:TextBox ID="Trajanje_DoTextBox" runat="server" Text='<%# Bind("Trajanje_Do") %>' />
            <br />
            Cena_Na_Dan:
            <asp:TextBox ID="Cena_Na_DanTextBox" runat="server" Text='<%# Bind("Cena_Na_Dan") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            ID_Kraja:
            <asp:Label ID="ID_KrajaLabel" runat="server" Text='<%# Bind("ID_Kraja") %>' />
            <br />
            Ime_Festivala:
            <asp:Label ID="Ime_FestivalaLabel" runat="server" Text='<%# Bind("Ime_Festivala") %>' />
            <br />
            Trajanje_Od:
            <asp:Label ID="Trajanje_OdLabel" runat="server" Text='<%# Bind("Trajanje_Od") %>' />
            <br />
            Trajanje_Do:
            <asp:Label ID="Trajanje_DoLabel" runat="server" Text='<%# Bind("Trajanje_Do") %>' />
            <br />
            Cena_Na_Dan:
            <asp:Label ID="Cena_Na_DanLabel" runat="server" Text='<%# Bind("Cena_Na_Dan") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="ManageFestival" runat="server" ConnectionString="<%$ ConnectionStrings:FestivalConnectionString %>" SelectCommand="SELECT * FROM [Festival]" DeleteCommand="DELETE FROM [Festival] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Festival] ([ID_Kraja], [Ime_Festivala], [Trajanje_Od], [Trajanje_Do], [Cena_Na_Dan]) VALUES (@ID_Kraja, @Ime_Festivala, @Trajanje_Od, @Trajanje_Do, @Cena_Na_Dan)" UpdateCommand="UPDATE [Festival] SET [ID_Kraja] = @ID_Kraja, [Ime_Festivala] = @Ime_Festivala, [Trajanje_Od] = @Trajanje_Od, [Trajanje_Do] = @Trajanje_Do, [Cena_Na_Dan] = @Cena_Na_Dan WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_Kraja" Type="Int32" />
                <asp:Parameter Name="Ime_Festivala" Type="String" />
                <asp:Parameter Name="Trajanje_Od" Type="DateTime" />
                <asp:Parameter Name="Trajanje_Do" Type="DateTime" />
                <asp:Parameter Name="Cena_Na_Dan" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_Kraja" Type="Int32" />
                <asp:Parameter Name="Ime_Festivala" Type="String" />
                <asp:Parameter Name="Trajanje_Od" Type="DateTime" />
                <asp:Parameter Name="Trajanje_Do" Type="DateTime" />
                <asp:Parameter Name="Cena_Na_Dan" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button class="gumb" ID="Logoff" runat="server" Text="Nazaj " OnClick="Nazaj_Click" />
    </form>
        </div>
</body>
</html>

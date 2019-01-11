<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUporabnika.aspx.cs" Inherits="Festival.AddUporabnika" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="CSS.css"> 
</head>
<body>
    <div id="log">
    <form id="form1" runat="server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Ime_Obiskovalca:
            <asp:TextBox ID="Ime_ObiskovalcaTextBox" runat="server" Text='<%# Bind("Ime_Obiskovalca") %>' />
            <br />
            Priimek_Obiskovalca:
            <asp:TextBox ID="Priimek_ObiskovalcaTextBox" runat="server" Text='<%# Bind("Priimek_Obiskovalca") %>' />
            <br />
            Uporabniško_Ime:
            <asp:TextBox ID="Uporabniško_ImeTextBox" runat="server" Text='<%# Bind("Uporabniško_Ime") %>' />
            <br />
            Geslo:
            <asp:TextBox ID="GesloTextBox" runat="server" Text='<%# Bind("Geslo") %>' />
            <br />
            admin:
            <asp:CheckBox ID="adminCheckBox" runat="server" Checked='<%# Bind("admin") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Ime_Obiskovalca:
            <asp:TextBox ID="Ime_ObiskovalcaTextBox" runat="server" Text='<%# Bind("Ime_Obiskovalca") %>' />
            <br />
            Priimek_Obiskovalca:
            <asp:TextBox ID="Priimek_ObiskovalcaTextBox" runat="server" Text='<%# Bind("Priimek_Obiskovalca") %>' />
            <br />
            Uporabniško_Ime:
            <asp:TextBox ID="Uporabniško_ImeTextBox" runat="server" Text='<%# Bind("Uporabniško_Ime") %>' />
            <br />
            Geslo:
            <asp:TextBox ID="GesloTextBox" runat="server" Text='<%# Bind("Geslo") %>' />
            <br />
            admin:
            <asp:CheckBox ID="adminCheckBox" runat="server" Checked='<%# Bind("admin") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Ime_Obiskovalca:
            <asp:Label ID="Ime_ObiskovalcaLabel" runat="server" Text='<%# Bind("Ime_Obiskovalca") %>' />
            <br />
            Priimek_Obiskovalca:
            <asp:Label ID="Priimek_ObiskovalcaLabel" runat="server" Text='<%# Bind("Priimek_Obiskovalca") %>' />
            <br />
            Uporabniško_Ime:
            <asp:Label ID="Uporabniško_ImeLabel" runat="server" Text='<%# Bind("Uporabniško_Ime") %>' />
            <br />
            Geslo:
            <asp:Label ID="GesloLabel" runat="server" Text='<%# Bind("Geslo") %>' />
            <br />
            admin:
            <asp:CheckBox ID="adminCheckBox" runat="server" Checked='<%# Bind("admin") %>' Enabled="false" />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FestivalConnectionString %>" DeleteCommand="DELETE FROM [Obiskovalec] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Obiskovalec] ([Ime_Obiskovalca], [Priimek_Obiskovalca], [Uporabniško_Ime], [Geslo], [admin]) VALUES (@Ime_Obiskovalca, @Priimek_Obiskovalca, @Uporabniško_Ime, @Geslo, @admin)" SelectCommand="SELECT * FROM [Obiskovalec]" UpdateCommand="UPDATE [Obiskovalec] SET [Ime_Obiskovalca] = @Ime_Obiskovalca, [Priimek_Obiskovalca] = @Priimek_Obiskovalca, [Uporabniško_Ime] = @Uporabniško_Ime, [Geslo] = @Geslo, [admin] = @admin WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ime_Obiskovalca" Type="String" />
                <asp:Parameter Name="Priimek_Obiskovalca" Type="String" />
                <asp:Parameter Name="Uporabniško_Ime" Type="String" />
                <asp:Parameter Name="Geslo" Type="String" />
                <asp:Parameter Name="admin" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ime_Obiskovalca" Type="String" />
                <asp:Parameter Name="Priimek_Obiskovalca" Type="String" />
                <asp:Parameter Name="Uporabniško_Ime" Type="String" />
                <asp:Parameter Name="Geslo" Type="String" />
                <asp:Parameter Name="admin" Type="Boolean" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button class="gumb" ID="Logoff" runat="server" Text="Nazaj " OnClick="Nazaj_Click" />
    </form>
        </div>
</body>
</html>

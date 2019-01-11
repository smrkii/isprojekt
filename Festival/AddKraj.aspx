<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddKraj.aspx.cs" Inherits="Festival.AddKraj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="CSS.css"> 
    <title></title>
</head>
<body>
    <div id="log">
    <form id="form1" runat="server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="ManageKraj">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            ID_Države:
            <asp:TextBox ID="ID_DržaveTextBox" runat="server" Text='<%# Bind("ID_Države") %>' />
            <br />
            Ime_Kraja:
            <asp:TextBox ID="Ime_KrajaTextBox" runat="server" Text='<%# Bind("Ime_Kraja") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ID_Države:
            <asp:TextBox ID="ID_DržaveTextBox" runat="server" Text='<%# Bind("ID_Države") %>' />
            <br />
            Ime_Kraja:
            <asp:TextBox ID="Ime_KrajaTextBox" runat="server" Text='<%# Bind("Ime_Kraja") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            ID_Države:
            <asp:Label ID="ID_DržaveLabel" runat="server" Text='<%# Bind("ID_Države") %>' />
            <br />
            Ime_Kraja:
            <asp:Label ID="Ime_KrajaLabel" runat="server" Text='<%# Bind("Ime_Kraja") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="ManageKraj" runat="server" ConnectionString="<%$ ConnectionStrings:FestivalConnectionString %>" SelectCommand="SELECT * FROM [Kraj]" DeleteCommand="DELETE FROM [Kraj] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Kraj] ([ID_Države], [Ime_Kraja]) VALUES (@ID_Države, @Ime_Kraja)" UpdateCommand="UPDATE [Kraj] SET [ID_Države] = @ID_Države, [Ime_Kraja] = @Ime_Kraja WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_Države" Type="Int32" />
                <asp:Parameter Name="Ime_Kraja" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_Države" Type="Int32" />
                <asp:Parameter Name="Ime_Kraja" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button class="gumb" ID="Logoff" runat="server" Text="Nazaj " OnClick="Nazaj_Click" />
    </form>
        </div>
</body>
</html>

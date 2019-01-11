<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDrzava.aspx.cs" Inherits="Festival.AddDrzava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="CSS.css"> 
    <title></title>
</head>
<body>
    <div id="log">
    <form id="form1" runat="server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="ManageDrzava">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Ime_Države:
            <asp:TextBox ID="Ime_DržaveTextBox" runat="server" Text='<%# Bind("Ime_Države") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Ime_Države:
            <asp:TextBox ID="Ime_DržaveTextBox" runat="server" Text='<%# Bind("Ime_Države") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Ime_Države:
            <asp:Label ID="Ime_DržaveLabel" runat="server" Text='<%# Bind("Ime_Države") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="ManageDrzava" runat="server" ConnectionString="<%$ ConnectionStrings:FestivalConnectionString %>" DeleteCommand="DELETE FROM [Država] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Država] ([Ime_Države]) VALUES (@Ime_Države)" SelectCommand="SELECT * FROM [Država]" UpdateCommand="UPDATE [Država] SET [Ime_Države] = @Ime_Države WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ime_Države" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ime_Države" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button class="gumb" ID="Logoff" runat="server" Text="Nazaj " OnClick="Nazaj_Click" />
    </form>
        </div>
</body>
</html>

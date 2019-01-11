<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNastopajoce.aspx.cs" Inherits="Festival.AddNastopajoce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="CSS.css"> 
    <title></title>
</head>
<body>
    <div id="log">
    <form id="form1" runat="server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="ManageNastopajoci">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Id:
            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Ime_Festivala" DataValueField="Id" SelectedValue='<%# Bind("Id") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Ime_Festivala] FROM [Festival]"></asp:SqlDataSource>
            <br />
            Ime_Nastopajočega:
            <asp:TextBox ID="Ime_NastopajočegaTextBox" runat="server" Text='<%# Bind("Ime_Nastopajočega") %>' />
            <br />
            Nastop_Od:
            <asp:TextBox ID="Nastop_OdTextBox" runat="server" Text='<%# Bind("Nastop_Od") %>' />
            <br />
            Nastop_Do:
            <asp:TextBox ID="Nastop_DoTextBox" runat="server" Text='<%# Bind("Nastop_Do") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Id:
            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
            <br />
            Id:
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Ime_Festivala" DataValueField="Id" SelectedValue='<%# Bind("Id") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Ime_Festivala] FROM [Festival]"></asp:SqlDataSource>
            <br />
            Ime_Nastopajočega:
            <asp:TextBox ID="Ime_NastopajočegaTextBox" runat="server" Text='<%# Bind("Ime_Nastopajočega") %>' />
            <br />
            Nastop_Od:
            <asp:TextBox ID="Nastop_OdTextBox" runat="server" Text='<%# Bind("Nastop_Od") %>' />
            <br />
            Nastop_Do:
            <asp:TextBox ID="Nastop_DoTextBox" runat="server" Text='<%# Bind("Nastop_Do") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Bind("Id") %>' />
            <br />
            Ime_Nastopajočega:
            <asp:Label ID="Ime_NastopajočegaLabel" runat="server" Text='<%# Bind("Ime_Nastopajočega") %>' />
            <br />
            Nastop_Od:
            <asp:Label ID="Nastop_OdLabel" runat="server" Text='<%# Bind("Nastop_Od") %>' />
            <br />
            Nastop_Do:
            <asp:Label ID="Nastop_DoLabel" runat="server" Text='<%# Bind("Nastop_Do") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="ManageNastopajoci" runat="server" ConnectionString="<%$ ConnectionStrings:FestivalConnectionString %>" SelectCommand="SELECT * FROM [Nastopajoči]">
        </asp:SqlDataSource>
        <asp:Button class="gumb" ID="Logoff" runat="server" Text="Nazaj " OnClick="Nazaj_Click" />
    </form>
        </div>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pregled.aspx.cs" Inherits="Festival.Pregled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" type="text/css" href="CSS.css"> 
    <title></title>
    <style type="text/css">
        #form1 {
            height: 152px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <span>Festival:
                <asp:Label ID="FestivalLabel" runat="server" Text='<%# Eval("Festival") %>' />
                <br />
                Velja Od:
                <asp:Label ID="Velja_OdLabel" runat="server" Text='<%# Eval("[Velja Od]") %>' />
                <br />
                Velja Do:
                <asp:Label ID="Velja_DoLabel" runat="server" Text='<%# Eval("[Velja Do]") %>' />
                <br />
                
                Cena vstopnice:
                <asp:Label ID="Cena_vstopniceLabel" runat="server" Text='<%# Eval("[Cena vstopnice]") %>' />
           
                </span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span>Festival:
                <asp:TextBox ID="FestivalTextBox" runat="server" Text='<%# Bind("Festival") %>' />
                <br />
                Velja Od:
                <asp:TextBox ID="Velja_OdTextBox" runat="server" Text='<%# Bind("[Velja Od]") %>' />
                <br />
                Velja Do:
                <asp:TextBox ID="Velja_DoTextBox" runat="server" Text='<%# Bind("[Velja Do]") %>' />
                <br />
               
                Cena vstopnice:
                <asp:TextBox ID="Cena_vstopniceTextBox" runat="server" Text='<%# Bind("[Cena vstopnice]") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            
                </span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span>Festival:
                <asp:TextBox ID="FestivalTextBox" runat="server" Text='<%# Bind("Festival") %>' />
                <br />
                Velja Od:
                <asp:TextBox ID="Velja_OdTextBox" runat="server" Text='<%# Bind("[Velja Od]") %>' />
                <br />
                Velja Do:
                <asp:TextBox ID="Velja_DoTextBox" runat="server" Text='<%# Bind("[Velja Do]") %>' />
                <br />
                
                Cena vstopnice:
                <asp:TextBox ID="Cena_vstopniceTextBox" runat="server" Text='<%# Bind("[Cena vstopnice]") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
               
                </span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span>Festival:
                <asp:Label ID="FestivalLabel" runat="server" Text='<%# Eval("Festival") %>' />
                <br />
                Velja Od:
                <asp:Label ID="Velja_OdLabel" runat="server" Text='<%# Eval("[Velja Od]") %>' />
                <br />
                Velja Do:
                <asp:Label ID="Velja_DoLabel" runat="server" Text='<%# Eval("[Velja Do]") %>' />
                <br />
                
                Cena vstopnice:
                <asp:Label ID="Cena_vstopniceLabel" runat="server" Text='<%# Eval("[Cena vstopnice]") %>' />
                
                
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;font-family: Verdana, Arial, Helvetica, sans-serif;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Festival:
                <asp:Label ID="FestivalLabel" runat="server" Text='<%# Eval("Festival") %>' />
                <br />
                Velja Od:
                <asp:Label ID="Velja_OdLabel" runat="server" Text='<%# Eval("[Velja Od]") %>' />
                <br />
                Velja Do:
                <asp:Label ID="Velja_DoLabel" runat="server" Text='<%# Eval("[Velja Do]") %>' />
                <br />
         
                Cena vstopnice:
                <asp:Label ID="Cena_vstopniceLabel" runat="server" Text='<%# Eval("[Cena vstopnice]") %>' />
                
           
                </span>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource 
            ID="SqlDataSource1" 
            runat="server"
            ConnectionString="<%$ ConnectionStrings:FestivalConnectionString %>" 
            SelectCommand="SELECT Festival.Ime_Festivala AS Festival, Vstopnica.Velja_Od AS [Velja Od], Vstopnica.Velja_Do AS [Velja Do], Vstopnica.Cena AS [Cena vstopnice] FROM Vstopnica INNER JOIN Festival ON Vstopnica.ID_Festivala = Festival.Id WHERE (Vstopnica.ID_Obiskovalca = @id)" OnSelecting="SqlDataSource1_Selecting">
            <SelectParameters>
                    <asp:SessionParameter Name="id" SessionField="UserID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button class="gumb1" ID="nazaj" runat="server" Text="Nazaj" OnClick="Nazaj_Click" />
    </form>
</body>
</html>

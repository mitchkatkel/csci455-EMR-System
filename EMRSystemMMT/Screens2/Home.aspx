<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EMRSystemMMT.Screens2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Menu ID="homeMenu" runat="server" OnMenuItemClick="homeMenu_MenuItemClick">
            <Items>
                <asp:MenuItem Text="Schedule Appoitment" Value="0"></asp:MenuItem>
                <asp:MenuItem Text="View Appoitment" Value="1"></asp:MenuItem>
                <asp:MenuItem Text="Patient Information" Value="2"></asp:MenuItem>
                <asp:MenuItem Text="View Bills" Value="3"></asp:MenuItem>
                <asp:MenuItem Text="Order Test" Value="4"></asp:MenuItem>
                <asp:MenuItem Selected="True" Text="Add Prescitpion" Value="5"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="EMRSystemMMT.Screens2.Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Calendar ID="Calendar1" runat="server" Height="500px" OnSelectionChanged="Calendar1_SelectionChanged" Width="777px"></asp:Calendar>
    </form>
</body>
</html>

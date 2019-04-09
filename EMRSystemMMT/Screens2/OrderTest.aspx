<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderTest.aspx.cs" Inherits="EMRSystemMMT.Screens2.OrderTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Date<br />
            <asp:TextBox ID="DateTxtBox" runat="server"></asp:TextBox>
            <br />
            Test Type<br />
            <asp:DropDownList ID="TestTypeDropDown" runat="server">
            </asp:DropDownList>
            <br />
            Description<br />
            <asp:TextBox ID="DescriptionTxtBox" runat="server"></asp:TextBox>
            <br />
            Cost<br />
            <asp:TextBox ID="CostTxtBox" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>

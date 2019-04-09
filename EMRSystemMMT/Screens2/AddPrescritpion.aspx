<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPrescritpion.aspx.cs" Inherits="EMRSystemMMT.Screens2.Prescritpion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        DatePrescriptionNameQuantity<div>
        <asp:TextBox ID="DateTxtBox" runat="server"></asp:TextBox>
        <asp:TextBox ID="PrescriptionTxtBox" runat="server" ></asp:TextBox>
        <asp:TextBox ID="QuantityTxtBox" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="SaveBtn" runat="server" Text="Save/Update" OnClick="SaveBtn_Click" />
            <asp:Button ID="CancelBtn" runat="server" Text="Cancel" OnClick="CancelBtn_Click" />
        </div>
    </form>
</body>
</html>

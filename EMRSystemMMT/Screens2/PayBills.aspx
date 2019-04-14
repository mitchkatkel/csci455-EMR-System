<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayBills.aspx.cs" Inherits="EMRSystemMMT.Screens2.PayBills" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
}
</style>
</head>
<body>
    <ul>
  <li><a class="active" href="Home.aspx">Home</a></li>
  <li><a href="Calendar.aspx">Schedule Appoitment</a></li>
  <li><a href="ViewAppointment.aspx">View Appointment</a></li>
  <li><a href="PatientInfo.aspx">Patient Information</a></li>
  <li><a href="ViewBills.aspx">View Bills</a></li>
  <li><a href="OrderTest.aspx">Order Test</a></li>
  <li><a href="AddPrescritpion.aspx">Add Prescription</a></li>
</ul>
    <form id="form1" runat="server">
        <div>
            Credit Card Info<br />
            Name On Card<br />
            <asp:TextBox ID="NameOnCardTxtBox" runat="server"></asp:TextBox>
            <br />
            Card Number<br />
            <asp:TextBox ID="CardNumberTxtBox" runat="server"></asp:TextBox>
            <br />
            CSV<br />
            <asp:TextBox ID="CSVTxtBox" runat="server"></asp:TextBox>
            <br />
            Expiration<br />
            <asp:TextBox ID="ExpirationTxtBox" runat="server"></asp:TextBox>
            <br />
            <br />
            Billing Address<br />
            Address<br />
            <asp:TextBox ID="AddressTxtBox" runat="server"></asp:TextBox>
            <br />
            City<br />
            <asp:TextBox ID="CityTxtBox" runat="server"></asp:TextBox>
            <br />
            State<br />
            <asp:TextBox ID="StateTxtBox" runat="server"></asp:TextBox>
            <br />
            Zip<br />
            <asp:TextBox ID="ZipTxtBox" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>

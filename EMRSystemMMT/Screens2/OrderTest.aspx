<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderTest.aspx.cs" Inherits="EMRSystemMMT.Screens2.OrderTest" %>

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

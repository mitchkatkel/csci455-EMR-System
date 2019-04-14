<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EMRSystemMMT.Screens2.WebForm1" %>

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

    <form id="form1" runat="server">

<ul>
  <li><a class="active" href="Home.aspx">Home</a></li>
  <li><a href="Calendar.aspx">Schedule Appoitment</a></li>
  <li><a href="ViewAppointment.aspx">View Appointment</a></li>
  <li><a href="PatientInfo.aspx">Patient Information</a></li>
  <li><a href="ViewBills.aspx">View Bills</a></li>
  <li><a href="OrderTest.aspx">Order Test</a></li>
  <li><a href="AddPrescritpion.aspx">Add Prescription</a></li>
  <li><a href="LogIn.aspx">Log Out</a></li>
</ul>
        <div style="width: 500px; height: 300px; text-align: center; vertical-align: middle; background-color: aliceblue; margin: auto;">
        <asp:Label ID="WelcomeLabel" runat="server" Text="Welcome!" Style="width: 500px; height: 300px; text-align: center; vertical-align: middle;"></asp:Label>
            <br /> 
        <asp:Label ID="NavigationLabel" runat="server" Text="Use the top navigation bar to complete your task." Style="width: 100px; height: 100px; text-align: center; vertical-align: middle;"></asp:Label>
            </div>
            </form>

</body>
</html>
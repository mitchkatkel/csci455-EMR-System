<%@ Page Language="C#" AutoEventWireup="true" Inherits="EMRSystemMMT.Screens2.Calendar" Codebehind="Calendar.aspx.cs" %>

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
  <li><a href="LogIn.aspx">Log Out</a></li>
</ul>

    <form id="form1" runat="server">
        </br>
        <div style="width: 777px; height: 500px; text-align: center; vertical-align: middle; background-color: aliceblue; margin: auto;">
        <asp:Calendar ID="Calendar1" runat="server" Height="500px" OnSelectionChanged="Calendar1_SelectionChanged" Width="777px" BackColor="AliceBlue" align ="center"></asp:Calendar>
        </div>
    </form>
</body>
</html>

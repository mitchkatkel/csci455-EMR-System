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

<style type="text/css">
label {
    float: left;    
    width: 8em;    
}

label.text {
  width: 8em;
}
</style>
    <form id="form1" runat="server">
        <br />
        <div><label>Date</label><asp:TextBox ID="DateTxtBox" runat="server"></asp:TextBox></div>
        <br />
        <div><label>Test Type</label><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></div>
        <br />
        <div><label>Description</label><asp:TextBox ID="DescriptionTxtBox" runat="server"></asp:TextBox></div>
        <br />
        <div><label> Cost</label><asp:TextBox ID="CostTxtBox" runat="server"></asp:TextBox></div>
    </form>
</body>
</html>

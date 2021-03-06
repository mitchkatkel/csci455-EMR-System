﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPrescritpion.aspx.cs" Inherits="EMRSystemMMT.Screens2.Prescritpion" %>

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

body { text-align: center; }
     /* center all items within body, this property is inherited */
body > * { text-align: left; }
     /* left-align the CONTENTS all items within body, additionally
        you can add this text-align: left property to all elements
        manually */
form { display: inline-block; }
     /* reduces the width of the form to only what is necessary */
</style>
</head>
<body>
    <ul>
  <li><a class="active" href="StaffHome.aspx">Home</a></li>
  <li><a href="StaffCalendarSearch.aspx">Schedule Appoitment</a></li>
  <li><a href="ViewPatientAppointmentSearch.aspx">View Appointment</a></li>
  <li><a href="PatientInfoSearch.aspx">Patient Information</a></li>
  <li><a href="ViewPatientBillsSearch.aspx">View Bills</a></li>
  <li><a href="OrderTestSearch.aspx">Order Test</a></li>
    <li><a href="AddPrescirptionSearch.aspx">Add Prescription</a></li>
  <li><a href="LogIn.aspx">Log Out</a></li>
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
        <div>
            <label> Date</label>
            <asp:TextBox ID="DateTxtBox" runat="server" Enabled="False" ></asp:TextBox>
        </div>
        <br />
        <div><label> Prescription Name</label><asp:TextBox ID="PrescriptionTxtBox" runat="server" ></asp:TextBox></div>
        <br />
        <div><label> Quantity</label><asp:TextBox ID="QuantityTxtBox" runat="server"></asp:TextBox></div>
        <br />
        <div>
            <br />
            <asp:Button ID="SaveBtn" runat="server" Text="Save/Update" OnClick="SaveBtn_Click" />
            <asp:Button ID="CancelBtn" runat="server" Text="Cancel" OnClick="CancelBtn_Click" />
        </div>
    </form>
</body>
</html>

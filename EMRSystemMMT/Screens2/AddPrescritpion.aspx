<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPrescritpion.aspx.cs" Inherits="EMRSystemMMT.Screens2.Prescritpion" %>

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

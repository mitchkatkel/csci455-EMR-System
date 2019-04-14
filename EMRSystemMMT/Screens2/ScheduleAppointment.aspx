<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ScheduleAppointment.aspx.cs" Inherits="EMRSystemMMT.Screens2.ScheduleAppointment" %>

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
        </div>
        Date:
        <asp:TextBox ID="DateTextBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; Time:
        <asp:DropDownList ID="TimeDropDownList" runat="server" OnSelectedIndexChanged="TimeDropDownList_SelectedIndexChanged">
            <asp:ListItem>8:00 AM</asp:ListItem>
            <asp:ListItem>9:00 AM</asp:ListItem>
            <asp:ListItem>10:00 AM</asp:ListItem>
            <asp:ListItem>11:00 AM</asp:ListItem>
            <asp:ListItem>12:00 PM</asp:ListItem>
            <asp:ListItem>1:00 PM</asp:ListItem>
            <asp:ListItem>2:00 PM</asp:ListItem>
            <asp:ListItem>3:00 PM</asp:ListItem>
            <asp:ListItem>4:00 PM</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp; Doctor:
        <asp:DropDownList ID="DoctorDropDownList" runat="server">
        </asp:DropDownList>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" />
        &nbsp;
        <asp:Button ID="Button2" runat="server" Text="Cancel" />
    </form>
</body>
</html>

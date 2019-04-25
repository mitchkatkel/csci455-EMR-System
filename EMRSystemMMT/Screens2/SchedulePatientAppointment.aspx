<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SchedulePatientAppointment.aspx.cs" Inherits="EMRSystemMMT.Screens2.SchedulePatientAppointment" %>

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
    <form id="form2" runat="server">
        <br />
        <div>
            <label> Date</label>
            <asp:TextBox ID="DateTextBox" runat="server"></asp:TextBox>
        </div>
        <br />
        <div><label> Time</label>
            <asp:DropDownList ID="TimeDropDownList" runat="server">
            <asp:ListItem>8:00</asp:ListItem>
            <asp:ListItem>9:00</asp:ListItem>
            <asp:ListItem>10:00</asp:ListItem>
            <asp:ListItem>11:00</asp:ListItem>
            <asp:ListItem>12:00</asp:ListItem>
            <asp:ListItem>13:00</asp:ListItem>
            <asp:ListItem>14:00</asp:ListItem>
            <asp:ListItem>15:00</asp:ListItem>
            <asp:ListItem>16:00</asp:ListItem>
        </asp:DropDownList>
        </div>
        <br />
        <div><label> Doctor</label><asp:DropDownList ID="DoctorDropDownList" runat="server" >
        </asp:DropDownList></div>
        <br />
        <div>
            <label> Description</label>
            <asp:TextBox ID="DescriptionTxtBox" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <br />
            <asp:Button ID="SaveBtn" runat="server" Text="Save/Update" OnClick="SaveBtn_Click" />
            <asp:Button ID="CancelBtn" runat="server" Text="Cancel" OnClick="CancelBtn_Click" />
        </div>
    </form>
</body>
</html>

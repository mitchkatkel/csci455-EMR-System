<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderTestSearch.aspx.cs" Inherits="EMRSystemMMT.Screens2.OrderTestSearch" %>

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
    <form id="form1" runat="server">
        <style type="text/css">
            label {
                float: left;
                width: 8em;
            }

                label.text {
                    width: 8em;
                }
            textBx {
                float: left;
                width: 30em;
            }
        </style>
        <div style="width: 800px; height: 75px; text-align: center; vertical-align: middle; background-color: aliceblue; margin: auto;">
            <br />
            <label> Search</label>
            <textBx><asp:TextBox ID="SearchBar" runat="server" Width="500px"></asp:TextBox></textBx>
            &nbsp;
            &nbsp;
            <asp:Button ID="SearchBtn" runat="server" Text="Search" OnClick="SearchBtn_Click" />
        </div>
        <br />
        <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />

    </form>
</body>
</html>


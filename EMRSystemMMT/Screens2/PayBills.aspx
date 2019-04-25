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
          <li><a class="active" href="PatientHome.aspx">Home</a></li>
  <li><a href="Calendar.aspx">Schedule Appoitment</a></li>
  <li><a href="ViewAppointment.aspx">View Appointment</a></li>
  <li><a href="PatientInfo.aspx">Patient Information</a></li>
  <li><a href="ViewBills.aspx">View Bills</a></li>
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
        </style>
        <br />
        Credit Card Info<br />
        <div>
            <label>Name on Card</label><asp:TextBox ID="NameOnCardTxtBox" runat="server"></asp:TextBox></div>
        <br />
        <div>
            <label>Card Number</label><asp:TextBox ID="CardNumberTxtBox" runat="server"></asp:TextBox></div>
        <br />
        <div>
            <label>CSV</label><asp:TextBox ID="CSVTxtBox" runat="server"></asp:TextBox></div>
        <br />
        <div>
            <label>Expiration</label><asp:TextBox ID="ExpirationTxtBox" runat="server"></asp:TextBox></div>
        <br />
        <br />
        Billing Address<br />
        <div>
            <label>Address</label><asp:TextBox ID="AddressTxtBox" runat="server"></asp:TextBox></div>
        <br />
        <div>
            <label>City</label><asp:TextBox ID="CityTxtBox" runat="server"></asp:TextBox></div>
        <br />
        <div>
            <label>State</label><asp:TextBox ID="StateTxtBox" runat="server"></asp:TextBox></div>
        <br />
        <div>
            <label>Zip</label><asp:TextBox ID="ZipTxtBox" runat="server"></asp:TextBox></div>
        <div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Pay" OnClick="SaveBtn_Click" />
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="CancelBtn_Click" />
        </div>
    </form>
</body>
</html>

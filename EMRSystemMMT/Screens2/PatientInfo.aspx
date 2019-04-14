﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientInfo.aspx.cs" Inherits="EMRSystemMMT.Screens2.PatientInfo" %>

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
        <div>
        </div>
        <asp:Menu ID="mnuTabs" runat="server" Orientation="Horizontal" BackColor="#999999" BorderStyle="Outset" OnMenuItemClick="mnuTabs_MenuItemClick">
            <Items>
                <asp:MenuItem Text="General" Value="0"></asp:MenuItem>
                <asp:MenuItem Text="History" Value="1"></asp:MenuItem>
                <asp:MenuItem Text="Contacts" Value="2"></asp:MenuItem>
                <asp:MenuItem Text="Finance" Value="3"></asp:MenuItem>
                <asp:MenuItem Selected="True" Text="Presriptions" Value="4"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:MultiView ID="multiTabs" runat="server" ActiveViewIndex="0">
            <asp:View ID="generalTab" runat="server">
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
                <div>
                    <label>First Name</label><asp:TextBox ID="FirstNameTxtBox" runat="server"></asp:TextBox>
                </div>
                <br />
                <div>
                    <label>Last Name</label>
                    <asp:TextBox ID="LastNameTxtBox" runat="server"></asp:TextBox>
                </div>
                <br />
                <div>
                    <label>Social Security Number</label><asp:TextBox ID="SSNTxtBox" runat="server"></asp:TextBox>
                </div>
                <br />
                <div>
                    <label>Date of Birth</label><asp:TextBox ID="DOBTxtBox" runat="server"></asp:TextBox>
                </div>
                <br />
                <div>
                    <label>Address</label><asp:TextBox ID="AddressTxtBox" runat="server"></asp:TextBox>
                </div>
                <br />
                <div>
                    <label>Home Phone</label><asp:TextBox ID="HomePhoneTxtBox" runat="server"></asp:TextBox>
                </div>
                <br />
                <div>
                    <label>Cell Phone</label><asp:TextBox ID="CellPhoneTxtBox" runat="server"></asp:TextBox>
                </div>
                <br />

            </asp:View>
            <asp:View ID="historyTab" runat="server">
                <asp:GridView ID="historyGridView" runat="server" CellPadding="10" GridLines="Vertical" OnSelectedIndexChanged="historyGridView_SelectedIndexChanged" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <br />
            </asp:View>
            <asp:View ID="contactsTab" runat="server">
                Contacts<asp:GridView ID="contactsGridView" runat="server" CellPadding="10" GridLines="Vertical" OnSelectedIndexChanged="contactsGridView_SelectedIndexChanged" AllowSorting="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <br />
            </asp:View>
            <asp:View ID="financeTab" runat="server">
                <style type="text/css">
                    label {
                        float: left;
                        width: 9em;
                    }
                        label.text {
                            width: 9em;
                        }
                </style>
                <div><label> Insurance Company</label><asp:TextBox ID="InsuranceCoTxtBox" runat="server"></asp:TextBox></div>
                <br />
                <div><label> Insurance ID</label><asp:TextBox ID="InsuranceIDTxtBox" runat="server"></asp:TextBox></div>
                <br />
                <div><label> Medicade ID</label><asp:TextBox ID="MedicadeIDTxtBox" runat="server"></asp:TextBox></div>
                <br />
                <div><label> Medicare ID</label><asp:TextBox ID="MedicareIDTxtBox" runat="server"></asp:TextBox></div>
                <br />
                <div><label>Current Balance</label><asp:TextBox ID="BalanceTxtBox" runat="server"></asp:TextBox></div>
                <br />
            </asp:View>
            <asp:View ID="PrescirptionsTab" runat="server">
                Prescriptions<asp:GridView ID="PrescriptionGridView" runat="server" CellPadding="10" GridLines="Vertical" OnSelectedIndexChanged="contactsGridView_SelectedIndexChanged" AllowSorting="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <br />
            </asp:View>
        </asp:MultiView>
        <div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Save/Update" OnClick="SaveBtn_Click" />
            &nbsp;
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="CancelBtn_Click" />
        </div>
    </form>
</body>
</html>

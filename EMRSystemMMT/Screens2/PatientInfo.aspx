<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientInfo.aspx.cs" Inherits="EMRSystemMMT.Screens2.PatientInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
        </div>
        <asp:Menu ID="mnuTabs" runat="server" Orientation="Horizontal" BackColor="#999999" BorderStyle="Outset" OnMenuItemClick="mnuTabs_MenuItemClick">
            <Items>
                <asp:MenuItem Text="General" Value="0"></asp:MenuItem>
                <asp:MenuItem Text="History" Value="1"></asp:MenuItem>
                <asp:MenuItem Text="Contacts" Value="2"></asp:MenuItem>
                <asp:MenuItem Selected="True" Text="Finance" Value="3"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:MultiView ID="multiTabs" runat="server" ActiveViewIndex="0">
            <asp:View ID="generalTab" runat="server">
                <asp:Label ID="FirstName" runat="server" Text="First Name"></asp:Label>
                <br />
                <asp:TextBox ID="FirstNameTxtBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="LastName" runat="server" Text="LastName"></asp:Label>
                <br />
                <asp:TextBox ID="LastNameTxtBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="SSN" runat="server" Text="Social Security Number"></asp:Label>
                <br />
                <asp:TextBox ID="SSNTxtBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="DOB" runat="server" Text="Date of Birth"></asp:Label>
                <br />
                <asp:TextBox ID="DOBTxtBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Address" runat="server" Text="Address"></asp:Label>
                <br />
                <asp:TextBox ID="AddressTxtBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="HomePhone" runat="server" Text="Home Phone"></asp:Label>
                <br />
                <asp:TextBox ID="HomePhoneTxtBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="CellPhone" runat="server" Text="Cell Phone"></asp:Label>
                <br />
                <asp:TextBox ID="CellPhoneTxtBox" runat="server"></asp:TextBox>
                <br />
            </asp:View>
            <asp:View ID="historyTab" runat="server">
                <br />
            </asp:View>
            <asp:View ID="contactsTab" runat="server">
                Contacts<br />
            </asp:View>
            <asp:View ID="financeTab" runat="server">
                <br />
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>

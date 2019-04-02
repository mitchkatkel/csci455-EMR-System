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
        <asp:Menu ID="mnuTabs" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="GeneralTab" Value="0"></asp:MenuItem>
                <asp:MenuItem Text="HistoryTab" Value="1"></asp:MenuItem>
                <asp:MenuItem Text="ContactsTab" Value="2"></asp:MenuItem>
                <asp:MenuItem Selected="True" Text="FinanceTab" Value="3"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:MultiView ID="multiTabs" runat="server" ActiveViewIndex="0">
            <asp:View ID="generalTab" runat="server">
                General
            </asp:View>
            <asp:View ID="historyTab" runat="server">
                History
            </asp:View>
            <asp:View ID="contactsTab" runat="server">
                Contacts
            </asp:View>
            <asp:View ID="financeTab" runat="server">
                Finance
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>

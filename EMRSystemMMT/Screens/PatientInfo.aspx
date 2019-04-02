<%@ Page Language="VB" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
</head>
<body>
    <form id="form1" runat="server">   
        Patient Information<asp:Menu ID="mnuTabs" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="General Info." Value="0"></asp:MenuItem>
                <asp:MenuItem Text="History" Value="1"></asp:MenuItem>
                <asp:MenuItem Text="Contacts" Value="2"></asp:MenuItem>
                <asp:MenuItem Selected="True" Text="Finance" Value="3"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:MultiView ID="multiTabs" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                General
            </asp:View>
            <asp:View ID="View2" runat="server">
                History
            </asp:View>
            <asp:View ID="View3" runat="server">
                Contacts
            </asp:View>
            <asp:View ID="View4" runat="server">
                Finance
            </asp:View>
        </asp:MultiView>
    </form>
    </body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="output.aspx.cs" Inherits="certificate.output" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Check and Generate Certificate</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Enter your Email"></asp:Label><br />
            <asp:TextBox ID="emailInput" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="submitBtn" runat="server" Text="Check and Generate Certificate" OnClick="submitBtn_Click" /><br />
            <asp:Button ID="Button1" runat="server" Text="Input Page" PostBackUrl="input.aspx" />
        </div>
    </form>
</body>
</html>

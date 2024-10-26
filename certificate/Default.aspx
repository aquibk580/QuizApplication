<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="certificate.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Select Programming Language</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #333;
        }

        .language-button {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Select a Programming Language</h1>
            <asp:Button ID="btnC" runat="server" Text="c" CssClass="language-button" OnClick="btnLanguage_Click" />
            <asp:Button ID="btnCPlusPlus" runat="server" Text="cpp" CssClass="language-button" OnClick="btnLanguage_Click" />
            <asp:Button ID="btnCSharp" runat="server" Text="csharp" CssClass="language-button" OnClick="btnLanguage_Click" />
            <asp:Button ID="btnJava" runat="server" Text="java" CssClass="language-button" OnClick="btnLanguage_Click" />
            <asp:Button ID="btnhtml" runat="server" Text="html" CssClass="language-button" OnClick="btnLanguage_Click" />

            <asp:Button ID="btnJS" runat="server" Text="javascript" CssClass="language-button" OnClick="btnLanguage_Click" />
            <asp:Button ID="btnCSS" runat="server" Text="css" CssClass="language-button" OnClick="btnLanguage_Click" />
            <asp:Button ID="btnSQL" runat="server" Text="sql" CssClass="language-button" OnClick="btnLanguage_Click" />
            <asp:Button ID="btnPLSQL" runat="server" Text="plsql" CssClass="language-button" OnClick="btnLanguage_Click" />
            <asp:Button ID="btnASPNET" runat="server" Text="aspnet" CssClass="language-button" OnClick="btnLanguage_Click" />
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="score.aspx.cs" Inherits="certificate.score" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quiz Result</title>
    <style>
      
        body {
            margin: 0;
            padding: 0;
            font-family: 'Montserrat', sans-serif;
        }
        nav {
            display: flex;
            justify-content: space-between;
            padding: 20px 56px;
            color: #240038;
        }
        .logo-container {
            display: flex;
            align-items: center;
        }
        .logo {
            width: 68px;
            height: auto;
        }
        .site-title {
            font-size: 40px;
            font-weight: 500;
            margin-left: 20px;
        }
        .nav-links {
            display: flex;
            align-items: center;
        }
        .nav-link {
            font-size: 30px;
            padding: 0 32px;
            text-decoration: none;
            color: #240038;
            transition: border-bottom 0.1s ease-in;
        }
        .nav-link:hover {
            border-bottom: 4px solid #240038;
        }
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #fff;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .dropdown-item {
            color: #240038;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            font-size: 20px;
        }
        .dropdown-item:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navigation Section -->
        <nav>
            <div class="logo-container">
                <asp:Image ID="imgLogo" runat="server" ImageUrl="~/images/ask.png" CssClass="logo" AlternateText="Logo" />
                <h1 class="site-title">CERTIFIED QUIZ</h1>
            </div>
            <div class="nav-links">
                <asp:HyperLink ID="lnkHome" runat="server" NavigateUrl="~/home.aspx" CssClass="nav-link">HOME</asp:HyperLink>
                <div class="dropdown">
                    <span class="nav-link">DOX</span>
                       <div class="dropdown-content">
                        <asp:HyperLink ID="lnkCLanguage" runat="server" NavigateUrl="./dox.aspx?lang=c" CssClass="dropdown-item">C LANGUAGE</asp:HyperLink>
                        <asp:HyperLink ID="lnkCPP" runat="server" NavigateUrl="dox.aspx?lang=cpp" CssClass="dropdown-item">CPP </asp:HyperLink>
                        <asp:HyperLink ID="lnkJava" runat="server" NavigateUrl="dox.aspx?lang=java" CssClass="dropdown-item">JAVA </asp:HyperLink>
                        <asp:HyperLink ID="lnkCSharp" runat="server" NavigateUrl="dox.aspx?lang=csharp" CssClass="dropdown-item">C# </asp:HyperLink>
                        <asp:HyperLink ID="lnkHTML" runat="server" NavigateUrl="dox.aspx?lang=html" CssClass="dropdown-item">HTML </asp:HyperLink>
                        <asp:HyperLink ID="lnkCSS" runat="server" NavigateUrl="dox.aspx?lang=css" CssClass="dropdown-item">CSS </asp:HyperLink>
                        <asp:HyperLink ID="lnkJavaScript" runat="server" NavigateUrl="dox.aspx?lang=javascript" CssClass="dropdown-item">JAVA SCRIPT</asp:HyperLink>
                        <asp:HyperLink ID="lnkASPNET" runat="server" NavigateUrl="dox.aspx?lang=aspnet" CssClass="dropdown-item">ASP.NET</asp:HyperLink>
                        <asp:HyperLink ID="lnkSQL" runat="server" NavigateUrl="dox.aspx?lang=sql" CssClass="dropdown-item">SQL </asp:HyperLink>
                        <asp:HyperLink ID="lnkPLSQL" runat="server" NavigateUrl="dox.aspx?lang=plsql" CssClass="dropdown-item">PL/SQL</asp:HyperLink>
                    </div>
                </div>
                <div class="dropdown">
                    <span class="nav-link">QUIZ</span>
                    <div class="dropdown-content">
                        <asp:HyperLink ID="lnkProgramming" runat="server" NavigateUrl="#programming" CssClass="dropdown-item">PROGRAMMING</asp:HyperLink>
                        <asp:HyperLink ID="lnkWebDevelopment" runat="server" NavigateUrl="#web" CssClass="dropdown-item">WEB DEVELOPMENT</asp:HyperLink>
                        <asp:HyperLink ID="lnkDatabase" runat="server" NavigateUrl="#db" CssClass="dropdown-item">DATA BASE</asp:HyperLink>
                    </div>
                </div>
                <asp:HyperLink ID="lnkAbout" runat="server" NavigateUrl="~/Abouts.aspx" CssClass="nav-link">ABOUTS</asp:HyperLink>
            </div>
        </nav>


        <!-- Result Section -->
        <div id="passed" runat="server" visible="true" style="width:90vw;  display:flex; justify-content:center; align-items:center; background-color:white;">
            <div style="display:flex; max-width:fit-content; gap:45px; align-items:center;">
                <asp:Image ID="img" runat="server" AlternateText="Computer with Balloons" style="width:500px; height:auto;" />
                <div style="display:flex; flex-direction:column; justify-content:center; align-items:center; text-align:center;">
                    <asp:Label ID="Label3" runat="server" style=" font-family: 'Montserrat', sans-serif; font-size:24px; font-weight:bold;  color:#240038; margin-bottom:20px;"></asp:Label>
                    <span style="font-size:56px; font-weight:600; color: #240038; font-family: 'Montserrat', sans-serif;  margin-bottom:20px;">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </span>
                    <div style="display:flex; gap:10px;">
                        <asp:HyperLink ID="lnkHomePassed" runat="server" NavigateUrl="~/home.aspx" style="text-decoration:none;">
                            <input type="button" value="Home" style="background:#641395; font-family: 'Montserrat', sans-serif; color:white; border:none; border-radius:5px; width:125px; padding:10px; cursor:pointer;" />
                        </asp:HyperLink>
                        <asp:Button ID="LnkCertificate" onClick="LnkCertificate_Click" runat="server" Text="Certificate" style="background:#641395; font-family:Montserrat, sans-serif; color:white; border:none; border-radius:5px; width:125px; padding:10px; cursor:pointer;" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Section -->
        <footer style=" display: flex;justify-content: center; align-items: center; margin-top: 100px; padding: 20px 0; font-family: 'Montserrat', sans-serif;">

        <asp:Label ID="lblFooterTitle" runat="server"  Text="© CERTIFIED QUIZ |" style="  color: #240038;
            font-size: 40px;
            font-weight: 500;
            margin-right: 10px;
" />
            <asp:Label ID="IbIFooterSubtitle" runat="server" Text="SAHYOG COLLEGE OF IT AND MGMT"  style=" color: rgba(36, 0, 56, 0.62);
            font-size: 32px;
            font-weight: 400;
"/>

        </footer>
    </form>
</body>
</html>
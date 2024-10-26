<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dox.aspx.cs" Inherits="certificate.dox" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Certified Quiz | C Documentation</title>
    <style>
    .dropdown-item,.nav-link{color:#240038;text-decoration:none}.button,.download-btn{cursor:pointer;font-size:20px}body{font-family:Arial,sans-serif;margin:0;padding:0}nav{display:flex;justify-content:space-between;padding:20px 56px;color:#240038}.logo-container,.nav-links{display:flex;align-items:center}.logo{width:68px;height:auto}.site-title{font-size:40px;font-weight:500;margin-left:20px}.nav-link{font-size:30px;padding:0 32px;transition:border-bottom .1s ease-in}.nav-link:hover{border-bottom:4px solid #240038}.dropdown{position:relative;display:inline-block}.dropdown-content{display:none;position:absolute;background-color:#fff;min-width:160px;box-shadow:0 8px 16px 0 rgba(0,0,0,.2);z-index:1}.dropdown:hover .dropdown-content{display:block}.dropdown-item{padding:12px 16px;display:block;font-size:20px}.buttons,.container,.documentation,.footer,.image-area,.navigation{display:flex;display:flex}.dropdown-item:hover{background-color:#f1f1f1}.container{justify-content:space-between;align-items:center;height:59vh;padding:0 50px}.documentation{flex-direction:column;background-color:#fff;border-radius:10px;padding:20px;box-shadow:0 4px 12px rgba(0,0,0,.1);height:100%;width:42%;margin:40px 30px 40px 20px;overflow:hidden scroll}.documentation h2{justify-self:center;align-self:center}.navigation{flex-direction:column;align-items:center;margin-left:60px}.download-btn{background-color:#fff;padding:20px 50px;border:2px solid #641395;border-radius:5px;transition:background-color .3s,color .3s;margin-left:25px}.buttons{gap:20px;margin-bottom:20px}.button{width:80px;height:50px;background-color:#641395;border:2px solid transparent;border-radius:50%;color:#fff;transition:background-color .3s,color .3s,border-color .3s}.button:hover{background-color:#fff;color:#240038;border-color:#240038}.download-btn:hover{background-color:#641395;color:#fff}.image-area{flex:1;height:75%;background-color:#fff;justify-content:center;align-items:center;flex-direction:column;gap:25px}.image-area img{max-width:100%;max-height:100%}.footer{justify-content:center;align-items:center;margin-top:60px;padding:20px 0;font-family:Montserrat,sans-serif}.footer-title{color:#240038;font-size:40px;font-weight:500;margin-right:10px}.footer-subtitle{color:rgba(36,0,56,.62);font-size:32px;font-weight:400}@media screen and (max-width:768px){.nav-links,nav{flex-direction:column}nav{align-items:center;padding:20px}.logo-container{margin-bottom:20px}.site-title{font-size:32px}.nav-links{align-items:center}.nav-link{font-size:24px;padding:10px 0}.dropdown-content{position:static;box-shadow:none;margin-top:10px}.footer{flex-direction:column;text-align:center}.footer-title{font-size:28px;margin-right:0;margin-bottom:10px}.footer-subtitle{font-size:20px}}.document:root{--scrollbar-width:10px}::-webkit-scrollbar{width:var(--scrollbar-width)}::-webkit-scrollbar-thumb{background-color:var(--scrollbar-thumb-color)}::-webkit-scrollbar-track{background-color:var(--scrollbar-track-color)}
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <nav>
            <div class="logo-container">
                <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Files/illustration/ask.png" CssClass="logo"
                    AlternateText="Logo" />
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
                        <asp:HyperLink ID="lnkProgramming" runat="server" NavigateUrl="~/home.aspx"
                            CssClass="dropdown-item">PROGRAMMING</asp:HyperLink>
                        <asp:HyperLink ID="lnkWebDevelopment" runat="server" NavigateUrl="~/home.aspx"
                            CssClass="dropdown-item">WEB DEVELOPMENT</asp:HyperLink>
                        <asp:HyperLink ID="lnkDatabase" runat="server" NavigateUrl="~/home.aspx" CssClass="dropdown-item">
                                DATA BASE</asp:HyperLink>
                    </div>
                </div>
                <asp:HyperLink ID="lnkAbout" runat="server" NavigateUrl="~/Abouts.aspx" CssClass="nav-link">ABOUTS
                </asp:HyperLink>
            </div>
        </nav>
        <div class="container">
            <div class="documentation" id="documentationContent">
            </div>

            <div class="image-area">
                <asp:Image ID="DocImage" runat="server" ImageUrl="~/Files/illustration/illu.png" AlternateText="Image Placeholder" />
                <asp:Button ID="DownloadButton" runat="server" Text="Download" CssClass="download-btn" OnClick="DownloadButton_Click" />
            </div>
        </div>
        <footer class="footer">
            <asp:Label ID="lblFooterTitle" runat="server" CssClass="footer-title" Text="© CERTIFIED QUIZ  |" />
            <asp:Label ID="lblFooterSubtitle" runat="server" CssClass="footer-subtitle"
                Text="SAHYOG COLLEGE OF IT AND MGMT" />
        </footer>
    </form>
    <script> function loadContent(t) { const e = (new Date).getTime(); fetch(`dox.json?t=${e}`).then((t => t.json())).then((e => { const n = e[t]?.sections; let o = ""; n ? n.forEach((t => { o += `<h2 style="color: #a73df8;">${t.title}</h2>`, o += `<p style="line-height: 1.6;">${t.content.replace(/\n/g, "<br>")}</p>` })) : o = "<p>No sections available for this language.</p>", document.getElementById("documentationContent").innerHTML = o })).catch((t => { console.error("Error fetching JSON data:", t), document.getElementById("documentationContent").innerHTML = "<p>Error loading content.</p>" })) } loadContent('<%= ViewState["CurrentLang"] %>'); </script>
</body>

</html>

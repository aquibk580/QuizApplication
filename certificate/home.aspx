<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="certificate.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quiz - Home</title>
          <style>
        body {
            font-family: 'Montserrat', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            padding-bottom: 40px;
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
        .hero {
            display: flex;
            justify-content: space-between;
            padding: 80px 80px;
        }
        .hero-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .hero-title {
            color: #240038;
            font-size: 58px;
            font-weight: 600;
            margin: 0;
        }
        .hero-subtitle {
            color: #240038;
            font-size: 38px;
            font-weight: 500;
            margin: 10px 0;
        }
        .hero-text {
            color: rgba(36, 0, 56, 0.6);
            font-size: 20px;
            max-width: 746px;
        }
        .hero-image {
            width: 500px;
            height: auto;
        }
        .section-title {
            font-size: 48px;
            font-weight: 500;
            text-align: center;
            margin-top: 96px;
        }
        .card-container {
            display: flex;
            justify-content: space-between;
            margin: 40px 64px;
        }
        .card {
            width: 600px;
            height: 493px;
            background-color: white;
            border-radius: 12px;
            box-shadow: -20px 40px 44px 10px #e0e0e0;
            display: flex;
            flex-direction: column;
            padding: 28px;
            transition: transform 0.3s ease-in-out;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card-image {
            width: 151px;
            margin: 0 auto 56px auto;
        }
        .card-title {
            font-size: 32px;
            font-weight: 500;
        }
        .card-text {
            margin-top: 10px;
        }
        .button-container {
            display: flex;
            width: 100%;
            margin-top: 20px;
        }
        .button {
            width: 250px;
            height: 50px;
            font-size: 24px;
            border-radius: 8px;
            transition: all 0.3s;
            cursor: pointer;
        }
        .primary-button {
            background-color: #641395;
            color: white;
            border: none;
        }
        .primary-button:hover {
            background-color: white;
            color: #641395;
            border: 2px solid #641395;
        }
        .secondary-button {
            background-color: white;
            color: #641395;
            border: 2px solid #641395;
            margin-left: 20px;
        }
        .secondary-button:hover {
            background-color: #641395;
            color: white;
        }
        .footer {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 60px;
            padding: 20px 0;
            font-family: 'Montserrat', sans-serif;
        }
        .footer-title {
            color: #240038;
            font-size: 40px;
            font-weight: 500;
            margin-right: 10px;
        }
        .footer-subtitle {
            color: rgba(36, 0, 56, 0.62);
            font-size: 32px;
            font-weight: 400;
        }


         @media screen and (max-width: 768px) {
        nav {
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        .logo-container {
            margin-bottom: 20px;
        }

        .site-title {
            font-size: 32px;
        }

        .nav-links {
            flex-direction: column;
            align-items: center;
        }

        .nav-link {
            font-size: 24px;
            padding: 10px 0;
        }

        .dropdown-content {
            position: static;
            box-shadow: none;
            margin-top: 10px;
        }

        .hero {
            flex-direction: column;
            padding: 40px 20px;
        }

        .hero-content {
            text-align: center;
        }

        .hero-title {
            font-size: 40px;
        }

        .hero-subtitle {
            font-size: 28px;
        }

        .hero-text {
            font-size: 16px;
        }

        .hero-image {
            width: 100%;
            max-width: 300px;
            margin-top: 30px;
        }

        .section-title {
            font-size: 36px;
            margin-top: 60px;
        }

        .card-container {
            flex-direction: column;
            margin: 20px;
        }

        .card {
            width: 80%;
            height: auto;
            margin-bottom: 30px;
            margin-right:auto;
            margin-left:auto;
        }

        .card-image {
            width: 100px;
            margin-bottom: 30px;
        }

        .card-title {
            font-size: 28px;
        }

        .card-text {
            font-size: 16px;
        }

        .button-container {
            flex-direction: column;
        }

        .button {
            width: 100%;
            margin-bottom: 10px;
            font-size: 18px
        }

        .secondary-button {
            margin-left: 0;
            
        }

        .footer {
            flex-direction: column;
            text-align: center;
        }

        .footer-title {
            font-size: 28px;
            margin-right: 0;
            margin-bottom: 10px;
        }

        .footer-subtitle {
            font-size: 20px;
        }
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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

        <section class="hero">
            <div class="hero-content">
                <h1 class="hero-title">SAHYOG COLLEGE</h1>
                <h2 class="hero-subtitle">PRESENTS CERTIFIED QUIZ</h2>
                <p class="hero-text">Enhance your coding skills with our comprehensive quiz certifications in C, C++, Java, and more! Study with expert-curated documentation and test your knowledge with questions designed to reinforce your learning. Achieve certifications that showcase your expertise!</p>
            </div>
            <asp:Image ID="imgHero" runat="server" ImageUrl="~/images/hpage.png" CssClass="hero-image" AlternateText="Hero Image" />
        </section>

        <h2 id="programming" class="section-title">PROGRAMMING LANGUAGE</h2>

        <div class="card-container">
            <div class="card">
                <asp:Image ID="imgCLogo" runat="server" ImageUrl="~/images/C_Logo.png" CssClass="card-image" AlternateText="C Logo" />
                <h3 class="card-title">C LANGUAGE</h3>
                <p class="card-text">Master the fundamentals of C programming with our detailed documentation and quiz-based certification. Learn key concepts, strengthen your problem-solving skills, and earn a certification to validate your expertise in this foundational programming language.</p>
                <div class="button-container">
                    <asp:Button ID="btnCQuiz" runat="server" Text="QUIZ" CssClass="button primary-button" OnClick="btnCQuiz_Click" />
                    <asp:Button ID="c" onClick="btnLanguage_Click" runat="server" Text="DOCUMENTATION" CssClass="button secondary-button" />
                </div>
            </div>

            <div class="card">
                <asp:Image ID="imgCppLogo" runat="server" ImageUrl="~/images/c-.png" CssClass="card-image" AlternateText="C++ Logo" />
                <h3 class="card-title">CPP</h3>
                <p class="card-text">Enhance your C++ skills with our comprehensive documentation and quiz-based certification. Explore object-oriented programming, sharpen your coding abilities, and earn a certification to showcase your C++ expertise.</p>
                <div class="button-container">
                    <asp:Button ID="btnCppQuiz" runat="server" Text="QUIZ" CssClass="button primary-button" OnClick="btnCppQuiz_Click" />
                    <asp:Button ID="cpp" onClick="btnLanguage_Click" runat="server" Text="DOCUMENTATION" CssClass="button secondary-button" />
                </div>
            </div>
        </div>

        <div class="card-container">
            <div class="card">
                <asp:Image ID="imgCSharpLogo" runat="server" ImageUrl="~/images/c-sharp.png" CssClass="card-image" AlternateText="C# Logo" />
                <h3 class="card-title">C SHARP</h3>
                <p class="card-text">Unlock the power of C# with our in-depth documentation and quiz-based certification. Dive into object-oriented programming, improve your coding skills, and earn a certification that highlights your C# proficiency.</p>
                <div class="button-container">
                    <asp:Button ID="btnCSharpQuiz" runat="server" Text="QUIZ" CssClass="button primary-button" OnClick="btnCSharpQuiz_Click" />
                    <asp:Button ID="csharp" onClick="btnLanguage_Click" runat="server" Text="DOCUMENTATION" CssClass="button secondary-button" />
                </div>
            </div>

            <div class="card">
                <asp:Image ID="imgJavaLogo" runat="server" ImageUrl="~/images/program.png" CssClass="card-image" AlternateText="Java Logo" />
                <h3 class="card-title">JAVA</h3>
                <p class="card-text">Advance your Java programming skills with our extensive documentation and quiz-based certification. Master object-oriented concepts, refine your coding techniques, and earn a certification to demonstrate your Java expertise.</p>
                <div class="button-container">
                    <asp:Button ID="btnJavaQuiz" runat="server" Text="QUIZ" CssClass="button primary-button" OnClick="btnJavaQuiz_Click" />
                    <asp:Button ID="java" onClick="btnLanguage_Click" runat="server" Text="DOCUMENTATION" CssClass="button secondary-button" />
                </div>
            </div>
        </div>

        <h2 id="web" class="section-title">WEB DEVELOPMENT</h2>

        <div class="card-container">
            <div class="card">
                <asp:Image ID="imgHtmlLogo" runat="server" ImageUrl="~/images/html.png" CssClass="card-image" AlternateText="HTML Logo" />
                <h3 class="card-title">HTML</h3>
                <p class="card-text">Build your web development foundation with our HTML documentation and quiz-based certification. Learn essential tags, structure web pages, and earn a certification that validates your HTML skills.</p>
                <div class="button-container">
                    <asp:Button ID="btnHtmlQuiz" runat="server" Text="COMING SOON" CssClass="button primary-button" />
                    <asp:Button ID="html" onClick="btnLanguage_Click" runat="server" Text="DOCUMENTATION" CssClass="button secondary-button" />
                </div>
            </div>

            <div class="card">
                <asp:Image ID="imgCssLogo" runat="server" ImageUrl="~/images/css-3.png" CssClass="card-image" AlternateText="CSS Logo" />
                <h3 class="card-title">CSS</h3>
                <p class="card-text">Strengthen your web design skills with our CSS documentation and quiz-based certification. Learn to style and layout web pages with precision, and earn a certification that highlights your creativity and proficiency in CSS.</p>
                <div class="button-container">
                    <asp:Button ID="btnCssQuiz" runat="server" Text="QUIZ" CssClass="button primary-button" OnClick="btnCssQuiz_Click" />
                    <asp:Button ID="css" onClick="btnLanguage_Click" runat="server" Text="DOCUMENTATION" CssClass="button secondary-button" />
                </div>
            </div>
        </div>

        <div class="card-container">
            <div class="card">
                <asp:Image ID="imgJsLogo" runat="server" ImageUrl="~/images/js.png" CssClass="card-image" AlternateText="JavaScript Logo" />
                <h3 class="card-title">JAVA SCRIPT</h3>
                <p class="card-text">Boost your JavaScript skills with our detailed documentation and quiz-based certification. Master dynamic web development, enhance interactivity, and earn a certification to showcase your JavaScript expertise.</p>
                <div class="button-container">
                    <asp:Button ID="btnJsQuiz" runat="server" Text="QUIZ" CssClass="button primary-button" OnClick="btnJsQuiz_Click" />
                    <asp:Button ID="javascript" onClick="btnLanguage_Click" runat="server" Text="DOCUMENTATION" CssClass="button secondary-button" />
                </div>
            </div>

            <div class="card">
                <asp:Image ID="imgAspNetLogo" runat="server" ImageUrl="~/images/asp.png" CssClass="card-image" AlternateText="ASP.NET Logo" />
                <h3 class="card-title">ASP.NET</h3>
                <p class="card-text">Enhance your web application development skills with our ASP.NET documentation and quiz-based certification. Learn to build dynamic, data-driven websites, and earn a certification that showcases your expertise in ASP.NET.</p>
                <div class="button-container">
                    <asp:Button ID="btnAspNetQuiz" runat="server" Text="QUIZ" CssClass="button primary-button" OnClick="btnAspNetQuiz_Click"/>
                    <asp:Button ID="aspnet" onClick="btnLanguage_Click" runat="server" Text="DOCUMENTATION" CssClass="button secondary-button" />
                </div>
            </div>
        </div>

        <h2 id="db" class="section-title">DATA BASE</h2>

        <div class="card-container">
            <div class="card">
                <asp:Image ID="imgSqlLogo" runat="server" ImageUrl="~/images/sql-file-format.png" CssClass="card-image" AlternateText="SQL Logo" />
                <h3 class="card-title">SQL</h3>
                <p class="card-text">Master database management with our SQL documentation and quiz-based certification. Learn to write complex queries, manage data efficiently, and earn a certification that validates your expertise in SQL. Unlock the potential of data-driven decision-making.</p>
                <div class="button-container">
                    <asp:Button ID="btnSqlQuiz" runat="server" Text="QUIZ" CssClass="button primary-button" OnClick="btnSqlQuiz_Click"/>
                    <asp:Button ID="sql" onClick="btnLanguage_Click" runat="server" Text="DOCUMENTATION" CssClass="button secondary-button" />
                </div>
            </div>

            <div class="card">
                <asp:Image ID="imgPlSqlLogo" runat="server" ImageUrl="~/images/pl-file-format-variant.png" CssClass="card-image" AlternateText="PL/SQL Logo" />
                <h3 class="card-title">PL/SQL</h3>
                <p class="card-text">Elevate your database programming skills with our PL/SQL documentation and quiz-based certification. Discover how to write powerful procedures and functions, and earn a certification that validates your proficiency in PL/SQL.</p>
                <div class="button-container">
                    <asp:Button ID="btnPlSqlQuiz" runat="server" Text="QUIZ" CssClass="button primary-button" OnClick="btnPlSqlQuiz_Click"/>
                    <asp:Button ID="plsql" onClick="btnLanguage_Click" runat="server" Text="DOCUMENTATION" CssClass="button secondary-button" />
                </div>
            </div>
        </div>

        <footer class="footer">
            <asp:Label ID="lblFooterTitle" runat="server" CssClass="footer-title" Text="© CERTIFIED QUIZ  |" />
            <asp:Label ID="lblFooterSubtitle" runat="server" CssClass="footer-subtitle" Text="SAHYOG COLLEGE OF IT AND MGMT" />
        </footer>

    </form>
</body>
</html>

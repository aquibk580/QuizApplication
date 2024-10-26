<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Abouts.aspx.cs" Inherits="certificate.Abouts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Certified quiz</title>
    <link href="https://fonts.googleapis.com/css2?family=Poiret+One&family=Montserrat:wght@400;700&display=swap" rel="stylesheet" />
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
        
        .intro-section {
            display: flex;
            justify-content: space-between;
            padding: 5rem;
            transition: transform 0.3s ease-in-out;
        }
        .intro-section:hover {
            transform: scale(1.05);
        }
        .text-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            max-width: 700px;
        }
        .main-title {
            font-size: 38px;
            color: #240038;
            font-weight: 500;
        }
        .description {
            font-size: 20px;
            color: rgba(36, 0, 56, 0.91);
            margin-top: 1rem;
        }
        .intro-image {
            width: 500px;
            height: auto;
        }
        /* Team Section */
        .centered-title {
    text-align: center;
}

        .team-section {
            display: flex;
            justify-content: space-between;
            margin: 3.5rem 7rem;
        }
        .team-card {
            background-color: #fff;
            box-shadow: -10px 7px 31px rgba(0, 0, 0, 0.1);
            width: 305px;
            height:auto;
            padding: 1rem;
            border-radius: 8px;
            text-align: start;
            transition: transform 0.3s ease-in-out;
        }
        .team-card:hover {
            transform: scale(1.05);
        }
        .team-image {
            height: 300px;
            width: auto;
            border: 1px solid rgba(0, 0, 0, 0.33);
            border-radius: 8px;
            margin-bottom: 1rem;
        }
        .team-name {
            font-size: 24px;
            color: #240038;
            font-weight: 500;
        }
        .team-role {
            font-size: 16px;
            color: rgba(36, 0, 56, 0.52);
        }
        /* Contact Section */
        .contact-section {
            text-align: center;
            margin-top: 5rem;
        }
        .section-title {
            font-size: 48px;
            font-weight: 500;
            color: #240038;
            margin-bottom: 2rem;
        }
        .contact-message {
            font-size: 20px;
            color: #240038;
            font-weight: 500;
        }
        .contact-form {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 1rem;
            border: 2px solid rgba(0, 0, 0, 0.31);
            padding: 1.25rem;
            border-radius: 8px;
            width: 80%;
            margin: auto;
        }
        .form-inputs {
            display: flex;
            gap: 1rem;
            margin-top: 1rem;
        }
        .contact-input {
            width: 200px;
            padding-left: 1rem;
            height: 30px;
            border: 2px solid rgba(36, 0, 56, 0.69);
            border-radius: 8px;
        }
        .submit-button {
            background-color: #800000;
            color: #fff;
            padding: 0.25rem 1rem;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .submit-button:hover {
            background-color: #c40000;
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
                        <asp:HyperLink ID="lnkCLanguage" runat="server" NavigateUrl="#" CssClass="dropdown-item">C LANGUAGE</asp:HyperLink>
                        <asp:HyperLink ID="lnkCPP" runat="server" NavigateUrl="#" CssClass="dropdown-item">CPP</asp:HyperLink>
                        <asp:HyperLink ID="lnkJava" runat="server" NavigateUrl="#" CssClass="dropdown-item">JAVA</asp:HyperLink>
                        <asp:HyperLink ID="lnkCSharp" runat="server" NavigateUrl="#" CssClass="dropdown-item">C#</asp:HyperLink>
                        <asp:HyperLink ID="lnkHTML" runat="server" NavigateUrl="#" CssClass="dropdown-item">HTML</asp:HyperLink>
                        <asp:HyperLink ID="lnkCSS" runat="server" NavigateUrl="#" CssClass="dropdown-item">CSS</asp:HyperLink>
                        <asp:HyperLink ID="lnkJavaScript" runat="server" NavigateUrl="#" CssClass="dropdown-item">JAVA SCRIPT</asp:HyperLink>
                        <asp:HyperLink ID="lnkASPNET" runat="server" NavigateUrl="#" CssClass="dropdown-item">ASP.NET</asp:HyperLink>
                        <asp:HyperLink ID="lnkSQL" runat="server" NavigateUrl="#" CssClass="dropdown-item">SQL</asp:HyperLink>
                        <asp:HyperLink ID="lnkPLSQL" runat="server" NavigateUrl="#" CssClass="dropdown-item">PL/SQL</asp:HyperLink>
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

        <!-- Intro Section -->
        <section class="intro-section">
            <div class="text-container">
                <h1 class="main-title">Welcome to Sahyog College's Quiz & Certification Platform</h1>
                <p class="description">Our interactive website helps students enhance skills in programming, web development, databases, backend, frontend, and more. Play quizzes and earn certifications from Sahyog College.</p>
            </div>
            <asp:Image ID="Image1" runat="server" CssClass="intro-image" ImageUrl="~/images/ab2 (convert.io).png" AlternateText="Intro Image" />
        </section>

        <!-- Learn & Grow Section -->
        <section class="intro-section" style="padding-top: 6rem;">
            <asp:Image ID="Image2" runat="server" CssClass="intro-image" ImageUrl="~/images/ab1 (convert.io).png" AlternateText="Learn Image" />
            <div class="text-container">
                <h1 class="main-title">LEARN & GROW</h1>
                <p class="description">Access comprehensive study material in our Documentation Section, prepare well, and ace your quizzes with confidence!</p>
            </div>
        </section>

        <section class="intro-section">
            <div class="text-container">
                <h1 class="main-title">TEAM CONTRIBUTION</h1>
                <p class="description">This website is the result of a collaborative effort from a dedicated team of students and developers, all working towards creating a seamless learning experience for our students.</p>
            </div>
            <asp:Image ID="Image3" runat="server" CssClass="intro-image" ImageUrl="~/images/ab4 (convert.io).png" AlternateText="Intro Image" />
        </section>

        <!-- Team Section Title -->
        <h1 id="programming" class="section-title centered-title">TEAM</h1>

        <!-- Team Members Section -->
        <section class="team-section">
            <div class="team-card">
                <asp:Image ID="TeamImage1" runat="server" CssClass="team-image" ImageUrl="~/images/RAZA.png" AlternateText="Team Member" />
                <h2 class="team-name">SYED KUMAIL RAZA</h2>
                <p class="team-role">INTEGRATION</p>
            </div>
            <div class="team-card">
                <asp:Image ID="TeamImage2" runat="server" CssClass="team-image" ImageUrl="~/images/SHADAB.png" AlternateText="Team Member" />
                <h2 class="team-name">SHADAB SHAIKH</h2>
                <p class="team-role">CERTIFICATE PAGE, DATA FETCHING</p>
            </div>
            <div class="team-card">
                <asp:Image ID="TeamImage3" runat="server" CssClass="team-image" ImageUrl="~/images/ZAID.png" AlternateText="Team Member" />
                <h2 class="team-name">ZAID YARGATTI</h2>
                <p class="team-role">CERTIFICATE PAGE, DATA FETCHING</p>
            </div>
        </section>

        <section class="team-section">
            <div class="team-card">
                <asp:Image ID="TeamImage4" runat="server" CssClass="team-image" ImageUrl="~/images/REHAN.png" AlternateText="Team Member" />
                <h2 class="team-name">MOHAMMAD RAIHAN</h2>
                <p class="team-role">DOCUMENTATION PAGE, PDF DOWNLOAD</p>
            </div>
            <div class="team-card">
                <asp:Image ID="TeamImage5" runat="server" CssClass="team-image" ImageUrl="~/images/SUMIT.png" AlternateText="Team Member" />
                <h2 class="team-name">SUMIT KHANDE</h2>
                <p class="team-role">DOCUMENTATION PAGE, PDF DOWNLOAD</p>
            </div>
            <div class="team-card">
                <asp:Image ID="TeamImage6" runat="server" CssClass="team-image" ImageUrl="~/images/RIZWAN.png" AlternateText="Team Member" />
                <h2 class="team-name">RIZWAN SHAIKHE</h2>
                <p class="team-role">DOCUMENTATION PAGE, PDF DOWNLOAD</p>
            </div>
        </section>

        <section class="team-section">
            <div class="team-card">
                <asp:Image ID="Image4" runat="server" CssClass="team-image" ImageUrl="~/images/YASH.png" AlternateText="Team Member" />
                <h2 class="team-name">YASH SINGH</h2>
                <p class="team-role">RESULT PAGE</p>
            </div>
            <div class="team-card">
                <asp:Image ID="Image5" runat="server" CssClass="team-image" ImageUrl="~/images/AADARSH.png" AlternateText="Team Member" />
                <h2 class="team-name">AADARSH MISHRA</h2>
                <p class="team-role">QUIZ PAGE , DATABASE</p>
            </div>
            <div class="team-card">
                <asp:Image ID="Image6" runat="server" CssClass="team-image" ImageUrl="~/images/AQUIB.png" AlternateText="Team Member" />
                <h2 class="team-name">AQUIB KHAN</h2>
                <p class="team-role">QUIZ PAGE , DATABASE</p>
            </div>
        </section>

        <section class="team-section">
            <div class="team-card">
                <asp:Image ID="Image7" runat="server" CssClass="team-image" ImageUrl="~/images/abhi.png" AlternateText="Team Member" />
                <h2 class="team-name">ABHISHEK KHATALE</h2>
                <p class="team-role">HOME PAGE , ABOUTS PAGE, DESIGNING, ADMIN PANNEL</p>
            </div>
        </section>

        <!-- Contact Section -->
        <h1 class="section-title centered-title">CONTACT US</h1>
        <div class="contact-form">
            <label for="contact" class="contact-message">FOR ANY QUERIES SUBMIT YOUR CONTACT NUMBER WE WILL REACH OUT TO YOU AS SOON AS POSSIBLE</label>
            <div class="form-inputs">
                <asp:TextBox ID="ContactInput" runat="server" CssClass="contact-input" MaxLength="10" placeholder="Contact no"></asp:TextBox>
                <asp:TextBox runat="server" ID="MessageInput" CssClass="contact-input" placeholder="Message"></asp:TextBox>
                <asp:Button ID="SubmitButton" runat="server" CssClass="submit-button" Text="Submit" OnClick="SubmitButton_Click" />
            </div>
        </div>

        <footer class="footer">
            <asp:Label ID="lblFooterTitle" runat="server" CssClass="footer-title" Text="© CERTIFIED QUIZ  |" />
            <asp:Label ID="lblFooterSubtitle" runat="server" CssClass="footer-subtitle" Text="SAHYOG COLLEGE OF IT AND MGMT" />
        </footer>

    </form>
</body>
</html>

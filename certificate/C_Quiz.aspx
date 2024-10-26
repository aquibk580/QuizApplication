<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="C_Quiz.aspx.cs" Inherits="certificate.C_Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title runat="server" ID="lang"></title>
     <link href="~/StyleSheet.css" rel="stylesheet" type="text/css" />

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
                        <asp:HyperLink ID="lnkProgramming" runat="server" NavigateUrl="~/home.aspx"
                            CssClass="dropdown-item">PROGRAMMING</asp:HyperLink>
                        <asp:HyperLink ID="lnkWebDevelopment" runat="server" NavigateUrl="~/home.aspx"
                            CssClass="dropdown-item">WEB DEVELOPMENT</asp:HyperLink>
                        <asp:HyperLink ID="lnkDatabase" runat="server" NavigateUrl="~/home.aspx" CssClass="dropdown-item">
                                DATA BASE</asp:HyperLink>
                    </div>
                </div>
                <asp:HyperLink ID="lnkAbout" runat="server" NavigateUrl="~/about.aspx" CssClass="nav-link">ABOUTS</asp:HyperLink>
            </div>
        </nav>
        
       <main>
            <div id="timeoutModal" class="modal-overlay">
             <div class="modal">
                <h2>Time's Up!</h2>
                <p>Unfortunately, your time has expired. Aap ka samay samaapt hota hai</p>
                <asp:Button ID="Submit1" runat="server" Text="Submit" class="close-btn" onclick="Submit_Click" />
            </div>
        </div>
             <asp:Label ID="Label1" runat="server" CssClass="Label1"  Font-Bold="True" Font-Size="50px" ForeColor="#9900FF"  ></asp:Label>
             <section class="hero">
              <asp:Image ID="imgHero" runat="server"  CssClass="hero-image" AlternateText="Hero Image" ImageUrl="~/images/quiz.png" />
              <div class="hero-content">
                <h1 class="hero-title">QUIZ ALREADY STARTED</h1>
                <h2 class="hero-subtitle">YOU ARE RUNNING OUT OF TIME</h2>
              <p class="hero-text" runat="server" id="timer">05:00</p>
            </div>
        </section>



            <div>
    
            <div class="q_container">
            <asp:Repeater ID="RepeaterQuestions" runat="server">
                <ItemTemplate>
                  <div class="questions">
                      
                        <h3><%# Eval("qid")  %> . <%# Eval("qtext") %></h3>
                        
             <div class="all_options">
    <div class="option">
        <div class="single">
            <label class="radio-label">
                <asp:RadioButton ID="R1" runat="server" Value='<%# Eval("optiona") %>' GroupName="options" style="height:30px; width:auto;"/>
              <span class="radio-text"><%# Eval("optiona")%></span>
            </label>
        </div>
        <div class="single">
            <label class="radio-label">
                <asp:RadioButton ID="R2" runat="server" Value='<%# Eval("optionb") %>' GroupName="options" />
              <span class="radio-text"><%# Eval("optionb") %></span>
            </label>
        </div>
    </div>
    <div class="option">
        <div class="single">
            <label class="radio-label">
                <asp:RadioButton ID="R3" runat="server" Value='<%# Eval("optionc") %>' GroupName="options" />
            <span class="radio-text"><%# Eval("optionc") %></span>
            </label>
        </div>
        <div class="single">
            <label class="radio-label">
                <asp:RadioButton ID="R4" runat="server" Value='<%# Eval("optiond") %>' GroupName="options" />
             <span class="radio-text"><%# Eval("optiond") %></span>
            </label>
        </div>
    </div>
</div>

                 </div>
                
                  

                </ItemTemplate>
            </asp:Repeater>

            <br />
              <asp:Button ID="Submit" CssClass="Button" runat="server" Text="Submit" OnClick="Submit_Click" />
                <asp:Label ID="result" runat="server" Text=""></asp:Label>
            </div>
        </div>
       </main>

         <footer class="footer">
            <asp:Label ID="lblFooterTitle" runat="server" CssClass="footer-title" Text="© CERTIFIED QUIZ  |" />
            <asp:Label ID="lblFooterSubtitle" runat="server" CssClass="footer-subtitle" Text="SAHYOG COLLEGE OF IT AND MGMT" />
        </footer>
    </form>
    <script type="text/javascript">
    // Set the starting time in minutes
        var totalTime = 5 * 60 ; // 5 minutes in seconds

        // Function to update the timer display
        function startTimer() {
            var timerDisplay = document.getElementById("timer");

            // Set interval to update the timer every second
            var timerInterval = setInterval(function () {
                var minutes = Math.floor(totalTime / 60);
                var seconds = totalTime % 60;

                // Format the seconds to always display two digits
                seconds = seconds < 10 ? "0" + seconds : seconds;

                // Display the countdown
                timerDisplay.innerHTML = minutes + ":" + seconds;

                // If the timer runs out, stop the interval and show the modal
                if (totalTime <= 0) {
                    clearInterval(timerInterval);
                    showTimeoutModal();  // Show the modal
                }

                // Decrement the total time by 1 second
                totalTime--;
            }, 1000); // Update every 1 second
        }

        // Function to display the timeout modal
        function showTimeoutModal() {
            document.getElementById('timeoutModal').style.display = 'flex';
        }

        // Function to submit the form when the "Submit Now" button is clicked
        function submitForm() {
            document.getElementById("form1").submit();
        }

        // Start the timer as soon as the page loads
        window.onload = function () {
            startTimer();
        };
    </script>

</body>
</html>

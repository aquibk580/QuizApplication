<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="certificatePage.aspx.cs" Inherits="certificate.certificatePage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Certified Quiz Certificate</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <style>


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
<body style="margin: 0; padding: 0; font-family: 'Montserrat', sans-serif; background-color: #f0f0f0;">
   <form id="grid" runat="server">
    <div runat="server" id="cert" class="big" style="width: 75%; height: 490px; padding-top: 15px; padding-bottom: 15px; background-color: white; margin: 20px auto; box-shadow: 0 0 10px rgba(0,0,0,0.1); display: flex; border-radius: 10px; overflow: hidden;">
        <div class="purple" style="width: 20%; height: 92%; background-image: linear-gradient(to bottom,#240038 , #66009E); color: white; padding: 20px; margin-left: 12px; border-radius: 10px;">
            <div class="info" style="margin-top: 33%;">
                <h2 style="font-size: 3.3rem; margin: 0; font-weight: 200;">TO</h2>
                <asp:Literal ID="litName" runat="server"></asp:Literal>
                <p style="font-size: 12px; margin: 5px 0;">
                    <asp:Literal ID="litEmail" runat="server"></asp:Literal><br />
                    <asp:Literal ID="litPhone" runat="server"></asp:Literal>
                </p>
            </div>
            <div style="margin-top: 85%;">
                <p style="font-size: 14px; margin: 5px 0;">Date: <asp:Literal ID="litDate" runat="server"></asp:Literal></p>
                <p style="font-size: 14px; margin: 5px 0;">Time: <asp:Literal ID="litTime" runat="server"></asp:Literal></p>
                <p style="font-size: 14px; margin: 5px 0;">Score: <asp:Literal ID="litScore" runat="server"></asp:Literal></p>
            </div>
        </div>
        <div style="width: 70%; padding: 20px; box-sizing: border-box; margin-left: 3%;">
            <div style="display: flex; align-items: center; margin-bottom: 20px; margin-left: 15%; margin-top: 10%;">
                <div style="margin-top: 10%; width: 50px; height: 50px; border-radius: 5px; display: flex; justify-content: center; align-items: center; margin-right: 10px;">
                    <img src="images/logo.png" alt="">
                </div>
                <h1 style="font-size: 3rem; color: #240038; margin: 0; font-weight: 700; margin-top: 10%;">CERTIFIED QUIZ</h1>
            </div>
            <p style="font-size: 1rem; color: #240038; line-height: 1.5; display: block; text-align: center; margin-left: 10%;">
                <b style="font-weight: 600;">SAHYOG COLLEGE OF IT AND MGMT</b> PROUDLY PRESENTS YOU A CERTIFICATE ON COMPLETING A QUIZ IN <asp:Literal ID="litLanguage" runat="server"></asp:Literal> LANGUAGE
            </p>
            <div style="display: flex; justify-content: space-between; margin-top: 18%;">
                <div style="text-align: center;">
                    <img src="images/sign.png" alt="Principal Sign" style="margin-bottom: 10px;">
                    <p style="font-size: 14px; margin: 0;">PRINCIPAL SIGN</p>
                </div>
                <div style="text-align: center;">
                    <img src="images/sign.png" alt="Principal Sign" style="margin-bottom: 10px;">
                    <p style="font-size: 14px; margin: 0;">PRINCIPAL SIGN</p>
                </div>
            </div>
        </div>
    </div>
    
    <asp:Button ID="DownloadButton" runat="server" Text="DOWNLOAD" 
        Font-Names="Montserrat" ForeColor="White" Height="42px" 
        style="margin: 20px; padding: 10px; background-image: linear-gradient(to bottom,#240038 , #66009E); border: none; border-radius: 5px; cursor: pointer; margin-left: 30%; height: 47px; width: 9%;" 
        OnClientClick="downloadPDF(); return false;" />

    <asp:Button ID="B1" runat="server" Text="HOME" 
        Font-Names="Montserrat" ForeColor="White" Height="42px" 
        style="margin-left: 20%; height:47px; width:9%; cursor:pointer; background-image: linear-gradient(to bottom,#240038 , #66009E); padding:10px; border:none; border-radius:5px;" 
        OnClick="B1_Click" />

        </form>

    <footer class="footer">
    <label class="footer-title">© CERTIFIED QUIZ  |</label>
    <label class="footer-subtitle">SAHYOG COLLEGE OF IT AND MGMT</label>
</footer>

    <script>
        function downloadPDF() {
            html2canvas(document.getElementById('cert')).then(function (canvas) {
                // Get the image data from the canvas
                const imgData = canvas.toDataURL('image/png');

                // Create a new jsPDF instance
                const { jsPDF } = window.jspdf;
                const pdf = new jsPDF('l', 'pt', [1000, 600]); // Custom width and height

                // Add the image to the PDF
                pdf.addImage(imgData, 'PNG', 0, 0, pdf.internal.pageSize.getWidth(), pdf.internal.pageSize.getHeight());

                // Save the PDF
                pdf.save('certificate.pdf');
            }).catch(function (error) {
                console.error('Error capturing screenshot:', error);
            });
        }
    </script>
</body>
</html>

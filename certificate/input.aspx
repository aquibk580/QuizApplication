<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="input.aspx.cs" Inherits="certificate.input" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Form</title>
</head>
<body style="display: flex; justify-content: center; align-items: center; height: 100vh; background-color: #f4f4f4; margin: 0;">
    <form id="form1" runat="server">
        <div style="background-color: #fff; padding: 30px; border-radius: 10px; box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1); max-width: 500px; width: 100%;">
            <div style="display: grid; grid-template-columns: 1fr 1fr; grid-gap: 20px;">
                <!-- Name Input -->
                <asp:TextBox ID="name" runat="server" placeholder="Enter Your Name"
                    style="padding: 10px; border: 2px solid #5a0d80; border-radius: 5px; outline: none; font-size: 16px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="name"
                    ErrorMessage="Name is required." ForeColor="red" Display="Dynamic"
                    style="grid-column: 1 / 2; margin-top: 2px; font-size: 14px;"></asp:RequiredFieldValidator>

                <!-- Phone Input -->
                <asp:TextBox ID="phone" runat="server" placeholder="Enter Your Number"
                    style="padding: 10px; border: 2px solid #5a0d80; border-radius: 5px; outline: none; font-size: 16px;"></asp:TextBox>

                <!-- Email Input -->
                <asp:TextBox ID="email" runat="server" placeholder="Enter Your Email"
                    style="grid-column: 1 / 3; padding: 10px; border: 2px solid #5a0d80; border-radius: 5px; outline: none; font-size: 16px; width:44%;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="email"
                    ErrorMessage="Email is required." ForeColor="red" Display="Dynamic"
                    style="grid-column: 1 / 3; margin-top: 2px; font-size: 14px;"></asp:RequiredFieldValidator>

                <!-- Start Quiz Button -->
                
                <asp:Button ID="LoginHome" runat="server" OnClick="LoginHome_Click" Text="GO TO HOME" 
                    style="grid-column: 1 / 2; padding: 12px; background-color: #5a0d80; color: #fff; border: none; border-radius: 5px; font-size: 16px; cursor: pointer;" />
              
            </div>
        </div>
    </form>
</body>
</html>

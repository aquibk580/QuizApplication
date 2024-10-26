<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="certificate.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel</title>
    <style>
        /* Center the content */
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            font-family: Arial, sans-serif;
        }

        /* Style for the table */
        .styled-table {
            width: 100%;
            max-width: 600px;
            border-collapse: collapse;
            margin-top: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
            border-radius: 8px;
            overflow: hidden;
        }

        .styled-table th,
        .styled-table td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #dddddd;
        }

        .styled-table thead tr {
            background-color: #007bff;
            color: #ffffff;
            text-align: left;
            font-weight: bold;
        }

        .styled-table tbody tr:nth-child(even) {
            background-color: #f3f3f3;
        }

        .styled-table tbody tr:hover {
            background-color: #f1f1f1;
        }

        /* Additional styling for TextBox and Button */
        .input-field, .login-button {
            margin-top: 15px;
        }
        
        .login-button {
            background-color: #007bff;
            color: #fff;
            border-radius: 5px;
            padding: 8px 20px;
            font-size: 16px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-button:hover {
            background-color: #0056b3;
        }

        .message-label {
            margin-top: 15px;
            font-size: 16px;
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- Password input -->
            <asp:TextBox ID="TextBox1" runat="server" Width="258px" Height="35px"
                         CssClass="input-field"
                         style="padding: 8px; border-radius: 5px; border: 1px solid #ccc; font-size: 16px;"
                         placeholder="Enter password"></asp:TextBox>
            
            <!-- Login button -->
            <asp:Button ID="Button1" runat="server" Text="Login"
                        OnClick="Button1_Click"
                        CssClass="login-button" />
            
            <!-- Message label for login feedback -->
            <asp:Label ID="MessageLabel" runat="server" CssClass="message-label"></asp:Label>
            
            <!-- Repeater Control for Displaying Contact Numbers and Messages -->
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <!-- Table header for contact and message -->
                    <table class="styled-table">
                        <thead>
                            <tr>
                                <th>Contact</th>
                                <th>Message</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <!-- Table row for each contact and message -->
                    <tr>
                        <td><%# Eval("contact") %></td>
                        <td><%# Eval("message") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                        </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>

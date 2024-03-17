<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PassengerCheckIn.aspx.cs" Inherits="BiometricSystem.PassengerCheckIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .left-content {
            padding-top: 120px;
            padding-left: 30px;
            background-color: #ffffff;
            font-family: 'Segoe UI';
            padding: 20px;
        }
        .table-row {
            padding-top: 10px;
        }
        .rounded-input {
            border-radius: 20px;
            padding: 10px;
            width: 80%;
            font-size: 16px;
        }
        .rounded-button {
            border-radius: 20px;
            padding: 10px 20px;
            background-color: red;
            color: white;
            border: none;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        .right-content {
            padding: 20px;
        }
        .large-image {
            border-radius: 20px;
            width: 100%;
            max-height: 80vh; 
            object-fit: cover; 
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%;">
            <tr>
                <td class="left-content">
                    <asp:Table ID="Table1" runat="server">
                        <asp:TableRow CssClass="table-row centered-text">
                            <asp:TableCell><center>
                                <asp:Image ID="Image1" runat="server" ImageUrl="https://i.ibb.co/gV2VHp7/BB-AIRLINES-1.png" />  
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow CssClass="table-row centered-text">
                            <asp:TableCell ColumnSpan="2">
                                <asp:Label ID="Label1" runat="server" Text="Check In Now" style="font-size:40px; text-align:center;"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow CssClass="table-row">
                            <asp:TableCell>
                                <asp:Label ID="Label2" runat="server" Text="Enter Reference Number" style="font-size:16px;"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow CssClass="table-row">
                            <asp:TableCell>
                                <asp:TextBox ID="tbReferenceNumber" CssClass="rounded-input" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow CssClass="table-row">
                            <asp:TableCell>
                                <asp:Label ID="Label3" runat="server" Text="Enter Last Name" style="font-size:16px;"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow CssClass="table-row">
                            <asp:TableCell>
                                <asp:TextBox ID="tbPassengerLastName" CssClass="rounded-input" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow CssClass="table-row">
                            <asp:TableCell ColumnSpan="2">
                                <asp:Button ID="Button1" CssClass="rounded-button" runat="server" Text="Check In" style="width:200px;" OnClick="GoToPassengerConfirmation" />
                            </asp:TableCell>
                        </asp:TableRow>
                       
                    </asp:Table>
                </td>
                <td class="right-content">
                    <img src="https://i.ibb.co/ZGhwTMX/helena-lopes-e3-OUQGT9b-WU-unsplash.jpg" class="large-image" alt="Large Image"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

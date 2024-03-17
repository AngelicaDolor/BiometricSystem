<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PassengerConfirmation.aspx.cs" Inherits="BiometricSystem.PassengerConfirmation" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: white;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .table-row {
            padding-top: 10px;
        }
        .rounded-input {
            border-radius: 20px;
            padding: 10px;
            width: 100%;
            font-size: 16px;
            border: 1px solid #ccc;
            box-sizing: border-box;
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
        .calendar {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="align-content:center">
            <table>
                <tr>
                    <td class="left-content">
                        <asp:Table ID="Table1" runat="server">
                            <asp:TableRow CssClass="table-row">
                                <asp:TableCell>
                                    <asp:Image ID="Image1" runat="server" src="https://i.ibb.co/gV2VHp7/BB-AIRLINES-1.png" />  
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow CssClass="table-row">
                                <asp:TableCell>
                                    <asp:Label ID="Label1" runat="server" Text="Confirm Passenger Information" style="font-size:24px; text-align:center; display: block;"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow CssClass="table-row" style="text-align:left">
                                <asp:TableCell>
                                    <asp:Label ID="ReferenceNumber" runat="server" Text="ReferenceNumber"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="lblReferenceNumber" runat="server" Text="Label"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow CssClass="table-row" style="text-align:left">
                                <asp:TableCell>
                                    <asp:Label ID="first_name" runat="server" Text="First Name"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="lblFirstName" runat="server" Text="Label"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow CssClass="table-row" style="text-align:left">
                                <asp:TableCell>
                                    <asp:Label ID="last_name" runat="server" Text="Last Name"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="lblLastName" runat="server" Text="Label"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow CssClass="table-row" style="text-align:left">
                                <asp:TableCell>
                                    <asp:Label ID="date_of_birth" runat="server" Text="Date of Birth"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Calendar ID="CalDOB" CssClass="calendar" runat="server"></asp:Calendar>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow CssClass="table-row" style="text-align:left">
                                <asp:TableCell>
                                    <asp:Label ID="gender" runat="server" Text="Gender"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:DropDownList ID="ddGender" runat="server">
                                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                    </asp:DropDownList>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow CssClass="table-row" style="text-align:left">
                                <asp:TableCell>
                                    <asp:Label ID="country_of_citizenship" runat="server" Text="Country of Citizenship"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:DropDownList ID="ddCountryofCitizenship" runat="server"></asp:DropDownList>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow CssClass="table-row" style="text-align:left">
                                <asp:TableCell>
                                    <asp:Label ID="country_of_residence" runat="server" Text="Country of Residence"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:DropDownList ID="ddCountryofResidence" runat="server"></asp:DropDownList>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow CssClass="table-row" style="text-align:left">
                                <asp:TableCell>
                                    <asp:Label ID="passport_number" runat="server" Text="Passport Number"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="lblPassportNumber" runat="server" Text="Label"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow CssClass="table-row">
                                <asp:TableCell ColumnSpan="2">
                                    <asp:Button ID="Button1" CssClass="rounded-button" runat="server" Text="Confirm" style="width:200px;" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>


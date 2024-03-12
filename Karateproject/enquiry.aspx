<%@ Page Title="" Language="C#" MasterPageFile="~/Viwer.Master" AutoEventWireup="true" CodeBehind="enquiry.aspx.cs" Inherits="Karateproject.enquiry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td style="width: 258px">
                    &nbsp;</td>
                <td style="width: 200px">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label9" runat="server" BackColor="#0066FF" BorderColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Enquiry Form"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label7" runat="server" Text="First Name"></asp:Label>
                </td>
                <td style="width: 200px">
                    <asp:Label ID="Label8" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:TextBox ID="txtFirstName" runat="server" EnableTheming="True"></asp:TextBox>
                </td>
                <td style="width: 200px">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label4" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td style="width: 200px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px; height: 50px;">
                    <asp:TextBox ID="txtEmailID" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td style="width: 200px; height: 50px;">
                    </td>
                <td style="height: 50px"></td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label5" runat="server" Text="Message"></asp:Label>
                </td>
                <td style="width: 200px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td style="width: 200px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label6" runat="server" Text="Additional Details"></asp:Label>
                </td>
                <td style="width: 200px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:TextBox ID="txtAdditionalDetails" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td style="width: 200px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="#99FF99" Font-Bold="True" Font-Italic="True" />
                </td>
                <td style="width: 200px">
                    <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    &nbsp;</td>
                <td style="width: 200px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>

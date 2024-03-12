<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="studentapplymatch.aspx.cs" Inherits="Karateproject.studentapplymatch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td style="width: 236px">&nbsp;</td>
                <td style="width: 299px">&nbsp;</td>
                <td>
                    <asp:Label ID="Label15" runat="server" BackColor="#3366FF" BorderColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Apply For Match"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 236px">
                    <asp:Label ID="Label10" runat="server" Text="Name Of Student"></asp:Label>
                </td>
                <td style="width: 299px">
                    <asp:TextBox ID="txtNameOfStudent" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 236px">
                    <asp:Label ID="Label11" runat="server" Text="Match Date"></asp:Label>
                </td>
                <td style="width: 299px">
                    <asp:TextBox ID="txtMatchDate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 236px">
                    <asp:Label ID="Label12" runat="server" Text="Match Name"></asp:Label>
                </td>
                <td style="width: 299px">
                    <asp:TextBox ID="txtMatchName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 236px">
                    <asp:Label ID="Label13" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td style="width: 299px">
                    <asp:TextBox ID="txtEmailID" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 236px">
                    <asp:Label ID="Label14" runat="server" Text="Mobile Number"></asp:Label>
                </td>
                <td style="width: 299px">
                    <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 236px">
                    <asp:Button ID="btnSubmit" runat="server" BackColor="#99FF99" Font-Bold="True" Font-Italic="False" Text="Submit" />
                </td>
                <td style="width: 299px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>

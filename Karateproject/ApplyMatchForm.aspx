<%@ Page Title="" Language="C#" MasterPageFile="~/student.Master" AutoEventWireup="true" CodeBehind="ApplyMatchForm.aspx.cs" Inherits="Karateproject.ApplyMatchForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td style="width: 221px">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label6" runat="server" BackColor="#0066FF" BorderColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Apply Match Form"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 221px">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 221px; height: 50px">
                    <asp:Label ID="Label3" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td style="height: 50px">
                    <asp:TextBox ID="txtEmailID" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td style="height: 50px"></td>
            </tr>
            <tr>
                <td style="width: 221px">
                    <asp:Label ID="Label4" runat="server" Text="Mobile No."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMobileNo" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 221px">
                    <asp:Label ID="Label5" runat="server" Text="Match Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="txtMatchName" runat="server" DataSourceID="SqlDataSource1" DataTextField="m_matchname" DataValueField="m_matchname">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KaratedatabaseConnectionString %>" SelectCommand="SELECT [m_matchname] FROM [matchform]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 221px">
                    <asp:Button ID="Button1" runat="server" BackColor="#66FF66" Font-Bold="True" Font-Italic="True" Text="Submit" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>

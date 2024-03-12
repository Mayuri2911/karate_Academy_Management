<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="matchfeedback.aspx.cs" Inherits="Karateproject.matchfeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                    <asp:Label ID="Label5" runat="server" BackColor="#0066FF" BorderColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Match Feedback"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 323px">
                <asp:Label ID="Label2" runat="server" Text="Match Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="drdMatchName" runat="server" DataSourceID="SqlDataSource1" DataTextField="m_matchname" DataValueField="m_matchname">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KaratedatabaseConnectionString %>" SelectCommand="SELECT [m_matchname] FROM [matchform]"></asp:SqlDataSource>
            </td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 323px">
                <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 323px">
                <asp:Button ID="btnSubmit" runat="server" BackColor="#99FF99" Text="Submit" OnClick="btnSubmit_Click" />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cancel" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</form>
</asp:Content>

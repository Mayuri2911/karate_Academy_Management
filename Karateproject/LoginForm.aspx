<%@ Page Title="" Language="C#" MasterPageFile="~/Viwer.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Karateproject.LoginForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td style="width: 185px">&nbsp;</td>
            <td style="width: 285px">&nbsp;</td>
            <td>
                    <asp:Label ID="Label5" runat="server" BackColor="#0066FF" BorderColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Login Form"></asp:Label>
                </td>
        </tr>
        <tr>
            <td style="width: 185px">
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            </td>
            <td style="width: 285px">
                <asp:TextBox ID="txtUserName" runat="server" Width="259px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 185px">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 285px">
                <asp:TextBox ID="txtPassword" runat="server" Width="261px" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 185px">
                <asp:Label ID="Label3" runat="server" Text="Type"></asp:Label>
            </td>
            <td style="width: 285px">
                <asp:DropDownList ID="drdAdmin" runat="server">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 185px; height: 50px;">
                <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#66FF66" Font-Bold="True" OnClick="btnLogin_Click" />
            </td>
            <td style="width: 285px; height: 50px;"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td style="height: 50px;" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="New Student Registration" OnClick="Button1_Click" />
            </td>
            <td style="height: 50px">&nbsp;</td>
        </tr>
    </table>
</form>
</asp:Content>

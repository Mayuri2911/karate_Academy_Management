<%@ Page Title="" Language="C#" MasterPageFile="~/Viwer.Master" AutoEventWireup="true" CodeBehind="studentregistrationform.aspx.cs" Inherits="Karateproject.studentregistrationform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td style="width: 258px">&nbsp;</td>
                <td style="width: 383px">&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" BackColor="#3399FF" BorderColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Font-Underline="True" ForeColor="Black" Text="Student Registration Form"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 258px; height: 50px;">
                    <asp:Label ID="Label2" runat="server" Text="First name"></asp:Label>
                </td>
                <td style="width: 383px; height: 50px;">
                    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td style="height: 50px"></td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
                <td style="width: 383px">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px; height: 50px;">
                    <asp:Label ID="Label4" runat="server" Text="DOB"></asp:Label>
                </td>
                <td style="width: 383px; height: 50px;">
                    <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td style="height: 50px"></td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label11" runat="server" Text="Mobile Number"></asp:Label>
                </td>
                <td style="width: 383px">
                    <asp:TextBox ID="txtMobileNumber" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label12" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td style="width: 383px">
                    <asp:TextBox ID="txtEmailID" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label13" runat="server" Text="Gender"></asp:Label>
                </td>
                <td style="width: 383px">
                    <asp:DropDownList ID="drdGender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label14" runat="server" Text="Address"></asp:Label>
                </td>
                <td style="width: 383px">
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label15" runat="server" Text="Coach Assign"></asp:Label>
                </td>
                <td style="width: 383px">
                    <asp:DropDownList ID="drdCoachAssign" runat="server" DataSourceID="SqlDataSource1" DataTextField="c_name" DataValueField="c_name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KaratedatabaseConnectionString %>" SelectCommand="SELECT [c_name] FROM [CoachTable]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label16" runat="server" Text="Batch Time"></asp:Label>
                </td>
                <td style="width: 383px">
                    <asp:DropDownList ID="drdBatchTime" runat="server" >
                        <asp:ListItem>10-12</asp:ListItem>
                        <asp:ListItem>12-2</asp:ListItem>
                        <asp:ListItem>3-5</asp:ListItem>
                        <asp:ListItem>5-7</asp:ListItem>
                        <asp:ListItem>7-9</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label17" runat="server" Text="Username"></asp:Label>
                </td>
                <td style="width: 383px">
                    <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:Label ID="Label18" runat="server" Text="Password"></asp:Label>
                </td>
                <td style="width: 383px">
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </td>
                <td style="width: 383px">
                    <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginForm.aspx">Go Back To Login</asp:HyperLink>
                </td>
                <td style="width: 383px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">&nbsp;</td>
                <td style="width: 383px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>

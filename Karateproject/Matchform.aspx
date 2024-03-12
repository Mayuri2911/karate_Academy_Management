<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Matchform.aspx.cs" Inherits="Karateproject.Matchform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td style="width: 130px">
                    <asp:Label ID="txtid" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label19" runat="server" BackColor="#0066FF" BorderColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Match Form"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 130px">
                    <asp:Label ID="Label16" runat="server" Text=" Match Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMatch" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnApplyMatch" runat="server" OnClick="btnApplyMatch_Click" Text="View Apply Match" />
                </td>
            </tr>
            <tr>
                <td style="width: 130px">
                    <asp:Label ID="Label17" runat="server" Text="Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDate" runat="server" TextMode="Date" ></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 130px">
                    <asp:Label ID="Label18" runat="server" Text="Description"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="#99FF99" Font-Bold="True" OnClick="btnSubmit_Click" />
                &nbsp;&nbsp;&nbsp; <asp:Button ID="btnUpdate" runat="server" BackColor="Black" Font-Bold="True" Font-Italic="True" ForeColor="White" OnClick="btnUpdate_Click" Text="Update" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnDelete" runat="server" BackColor="Black" Font-Bold="True" Font-Italic="True" ForeColor="White" OnClick="btnDelete_Click" Text="Delete" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
                </td>
            </tr>
            <tr>
                <td style="width: 130px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 130px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <Columns>
                            <asp:TemplateField HeaderText = "Sr No" ItemStyle-Width="100">
                                <ItemTemplate>
                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="m_matchname" HeaderText="Match Name"/>
                            <asp:BoundField DataField="m_date" HeaderText="Match Date"/>
                            <asp:BoundField DataField="m_discription" HeaderText="Match Description"/>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnSelect" runat="server" CommandArgument='<%#Eval("m_id")%>' OnCommand="btnSelect_Command" Text="Select" ></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>

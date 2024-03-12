<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Resultdeclareform.aspx.cs" Inherits="Karateproject.Resultdeclareform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td style="width: 189px">
                    <asp:Label ID="txtid" runat="server"></asp:Label>
                </td>
                <td style="width: 306px"></td>
                <td>
                    <asp:Label ID="Label4" runat="server" BackColor="#6699FF" BorderColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Result Declaration Form"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 189px">
                    <asp:Label ID="Label2" runat="server" Text="Match Name"></asp:Label>
                </td>
                <td style="width: 306px">
                    <asp:DropDownList ID="txtMatchName" runat="server" DataSourceID="SqlDataSource1" DataTextField="m_matchname" DataValueField="m_matchname">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KaratedatabaseConnectionString %>" SelectCommand="SELECT [m_matchname] FROM [matchform]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 189px">
                    <asp:Label ID="Label3" runat="server" Text="Match Winner"></asp:Label>
                </td>
                <td style="width: 306px">
                    <asp:TextBox ID="txtMatchWinner" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="btnSubmit" runat="server" BackColor="#66FF66" Font-Bold="True" Text="Submit" OnClick="btnSubmit_Click" />
                &nbsp;&nbsp;&nbsp; <asp:Button ID="btnUpdate" runat="server" BackColor="Black" Font-Bold="True" Font-Italic="True" ForeColor="White" OnClick="btnUpdate_Click" Text="Update" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnDelete" runat="server" BackColor="Black" Font-Bold="True" Font-Italic="True" ForeColor="White" OnClick="btnDelete_Click" Text="Delete" />
                &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
                </td>
            </tr>
            <tr>
                <td style="width: 189px">
                    &nbsp;</td>
                <td style="width: 306px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <Columns>
                            <asp:TemplateField HeaderText = "Sr No" ItemStyle-Width="100">
                                <ItemTemplate>
                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="r_matchname" HeaderText="Result Name"/>
                            <asp:BoundField DataField="r_matchwinner" HeaderText="Result Winner"/>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnSelect" runat="server" CommandArgument='<%#Eval("r_id")%>' OnCommand="btnSelect_Command" Text="Select" ></asp:LinkButton>
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
            </tr>
        </table>
    </form>
</asp:Content>

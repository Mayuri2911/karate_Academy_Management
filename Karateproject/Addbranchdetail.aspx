<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Addbranchdetail.aspx.cs" Inherits="Karateproject.Addbranchdetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td style="width: 192px">&nbsp;</td>
                <td style="width: 303px">&nbsp;</td>
                <td>
                    <asp:Label ID="Label5" runat="server" BackColor="#0066FF" BorderColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Adding New Branch"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 192px">
                    <asp:Label ID="Label2" runat="server" Text="Location"></asp:Label>
                </td>
                <td style="width: 303px">
                    <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 192px">
                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                </td>
                <td style="width: 303px">
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 192px">
                    <asp:Label ID="Label4" runat="server" Text="Branch Timing"></asp:Label>
                </td>
                <td style="width: 303px">
                    <asp:DropDownList ID="drdBranchTiming" runat="server">
                        <asp:ListItem>10am-9pm</asp:ListItem>
                        <asp:ListItem>11am-8pm</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 192px">
                    <asp:Button ID="btnSubmit" runat="server" BackColor="#99FF99" Font-Bold="True" Text="Submit" OnClick="btnSubmit_Click" />
                </td>
                <td style="width: 303px">
                    <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 192px">
                    &nbsp;</td>
                <td style="width: 303px">
                    &nbsp;</td>
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
                            <asp:BoundField DataField="a_location" HeaderText=" Branch Location"/>
                            <asp:BoundField DataField="a_address" HeaderText="Branch Address"/>
                            <asp:BoundField DataField="a_branchtiming" HeaderText="Branch Time"/>
                            
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
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 192px">
                    &nbsp;</td>
                <td style="width: 303px"></td>
                </tr>
            </table>
        </form>
                    
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="ProfileForm.aspx.cs" Inherits="Karateproject.ProfileForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
                            <asp:BoundField DataField="s_firstname" HeaderText="First Name" HeaderStyle-Width="12%"/>
                            <asp:BoundField DataField="s_lastname" HeaderText="Last Name" HeaderStyle-Width="12%"/>
                            <asp:BoundField DataField="s_mobilenumber" HeaderText="Mobile Number" HeaderStyle-Width="18%"/>
                            <asp:BoundField DataField="s_emailid" HeaderText="Email Id" HeaderStyle-Width="25%"/>
                            <asp:BoundField DataField="s_gender" HeaderText="Gender" HeaderStyle-Width="12%"/>
                            <asp:BoundField DataField="s_address" HeaderText="Address"  HeaderStyle-Width="20%"/>
                            <asp:BoundField DataField="s_coachassign" HeaderText="Coach" HeaderStyle-Width="18%"/>
                            <asp:BoundField DataField="s_batchtime" HeaderText="Batch Time" HeaderStyle-Width="12%"/>
                            
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
        </table>
    </form>
    
</asp:Content>

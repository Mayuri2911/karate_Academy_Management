﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="ViewCoach.aspx.cs" Inherits="Karateproject.ViewCoach" %>
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
                            <asp:BoundField DataField="c_name" HeaderText="Name" HeaderStyle-Width="15%" />
                            <asp:BoundField DataField="c_emailid" HeaderText="Email" HeaderStyle-Width="30%" />
                            <asp:BoundField DataField="c_mobile" HeaderText="Mobile" HeaderStyle-Width="18%" />
                            <asp:BoundField DataField="c_city" HeaderText="City" HeaderStyle-Width="30%" />
                            <asp:BoundField DataField="c_salary" HeaderText="Salary" HeaderStyle-Width="19%" />
                            <asp:BoundField DataField="c_Belt" HeaderText="Belt" HeaderStyle-Width="19%"  />
                            <asp:BoundField DataField="c_experience" HeaderText="Exprience" HeaderStyle-Width="18%" />
                            <asp:BoundField DataField="c_username" HeaderText="Username" HeaderStyle-Width="25%" />
                            <asp:BoundField DataField="c_password" HeaderText="Password" HeaderStyle-Width="25%" />
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
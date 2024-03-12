<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="coachregistrationform.aspx.cs" Inherits="Karateproject.coachregistrationform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td style="width: 207px">
                    <asp:Label ID="txtid" runat="server" Visible="False"></asp:Label>
                </td>
                <td style="width: 330px">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label18" runat="server" BackColor="#0066FF" BorderColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Coach Registration Form"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 207px">
                    <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
                </td>
                <td style="width: 330px">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 207px">
                    <asp:Label ID="Label5" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td style="width: 330px">
                    <asp:TextBox ID="txtEmailID" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 207px">
                    <asp:Label ID="Label6" runat="server" Text="DOB"></asp:Label>
                </td>
                <td style="width: 330px">
                    <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 207px">
                    <asp:Label ID="Label7" runat="server" Text="Mobile no."></asp:Label>
                </td>
                <td style="width: 330px">
                    <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 207px">
                    <asp:Label ID="Label8" runat="server" Text="City"></asp:Label>
                </td>
                <td style="width: 330px">
                    <asp:DropDownList ID="drdCity" runat="server">
                        <asp:ListItem>Thane</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Navi Mumbai</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 207px; height: 50px;">
                    <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
                </td>
                <td style="height: 50px; width: 330px;">
                    <asp:TextBox ID="txtAddress" runat="server" ></asp:TextBox>
                </td>
                <td style="height: 50px"></td>
            </tr>
            <tr>
                <td style="width: 207px; height: 50px;">
                    <asp:Label ID="Label11" runat="server" Text="Salary"></asp:Label>
                </td>
                <td style="height: 50px; width: 330px;">
                    <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
                </td>
                <td style="height: 50px"></td>
            </tr>
            <tr>
                <td style="width: 207px">
                    <asp:Label ID="Label12" runat="server" Text="Batch Time"></asp:Label>
                </td>
                <td style="width: 330px">
                    <asp:DropDownList ID="drdBatchtime" runat="server" >
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
                <td style="width: 207px">
                    <asp:Label ID="Label13" runat="server" Text="Belt"></asp:Label>
                </td>
                <td style="width: 330px">
                    <asp:DropDownList ID="drdBelt" runat="server">
                        <asp:ListItem>Black</asp:ListItem>
                        <asp:ListItem>White</asp:ListItem>
                        <asp:ListItem>Orange</asp:ListItem>
                        <asp:ListItem>Blue</asp:ListItem>
                        <asp:ListItem>Yellow</asp:ListItem>
                        <asp:ListItem>Green</asp:ListItem>
                        <asp:ListItem>Brown</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 207px; height: 50px;">
                    <asp:Label ID="Label14" runat="server" Text="Experience"></asp:Label>
                </td>
                <td style="height: 50px; width: 330px;">
                    <asp:DropDownList ID="drdexperience" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="height: 50px"></td>
            </tr>
            <tr>
                <td style="width: 207px">
                    <asp:Label ID="Label16" runat="server" Text="Username"></asp:Label>
                </td>
                <td style="width: 330px">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 207px">
                    <asp:Label ID="Label17" runat="server" Text="Password"></asp:Label>
                </td>
                <td style="width: 330px">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="#99FF99" Font-Bold="True" OnClick="btnSubmit_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnUpdate" runat="server" BackColor="Black" Font-Bold="True" Font-Italic="True" ForeColor="White" OnClick="btnUpdate_Click" Text="Update" />
                    &nbsp;
                    <asp:Button ID="btnDelete" runat="server" BackColor="Black" Font-Bold="True" Font-Italic="True" ForeColor="White" OnClick="btnDelete_Click" Text="Delete" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Text="Cancel" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 207px">
                    &nbsp;</td>
                <td style="width: 330px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 207px">
                    &nbsp;</td>
                <td style="width: 330px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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
                            <asp:BoundField DataField="c_name" HeaderText="Name" HeaderStyle-Width="12%" ItemStyle-Width="12%"/>
                            <asp:BoundField DataField="c_emailid" HeaderText="Email" HeaderStyle-Width="12%" ItemStyle-Width="12%" />
                            <asp:BoundField DataField="c_mobile" HeaderText="Mobile" HeaderStyle-Width="12%" ItemStyle-Width="12%"/>
                            <asp:BoundField DataField="c_city" HeaderText="City" HeaderStyle-Width="12%" ItemStyle-Width="12%"/>
                            <asp:BoundField DataField="c_salary" HeaderText="Salary" HeaderStyle-Width="12%" ItemStyle-Width="12%" />
                            <asp:BoundField DataField="c_Belt" HeaderText="Belt" HeaderStyle-Width="12%" ItemStyle-Width="12%" />
                            <asp:BoundField DataField="c_experience" HeaderText="Exprience" HeaderStyle-Width="12%" ItemStyle-Width="12%"/>
                            <asp:BoundField DataField="c_username" HeaderText="Username" HeaderStyle-Width="12%" ItemStyle-Width="12%"/>
                            <asp:BoundField DataField="c_password" HeaderText="Password" HeaderStyle-Width="12%" ItemStyle-Width="12%"/>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnSelect" runat="server" CommandArgument='<%#Eval("c_id")%>' OnCommand="btnSelect_Command" Text="Select" ></asp:LinkButton>
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

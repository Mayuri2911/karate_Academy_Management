<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Karateproject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td style="width: 135px">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td style="width: 223px">
                    <asp:TextBox ID="txtname" runat="server" ></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 135px">
                    <asp:Label ID="Label2" runat="server" Text="DOB"></asp:Label>
                </td>
                <td style="width: 223px">
                    <asp:TextBox ID="txtdob" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 135px">
                    <asp:Label ID="Label3" runat="server" Text="Study"></asp:Label>
                </td>
                <td style="width: 223px">
                    <asp:DropDownList ID="drdstudy" runat="server">
                        <asp:ListItem>FY</asp:ListItem>
                        <asp:ListItem>SY</asp:ListItem>
                        <asp:ListItem>TY</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 135px">
                    <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                </td>
                <td style="width: 223px">
                    <asp:RadioButtonList ID="rblist" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 135px">&nbsp;</td>
                <td style="width: 223px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 135px">
                    <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="Add" />
                </td>
                <td style="width: 223px">
                    <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
                </td>
                <td>
                    <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
                </td>
            </tr>
            <tr>
                <td style="width: 135px">
                    &nbsp;</td>
                <td style="width: 223px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 135px">
                    
 

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" >
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name"  />
                            <asp:BoundField DataField="DOB" HeaderText="DOB"  />
                            <asp:BoundField DataField="Study" HeaderText="Study"  />
                            <asp:BoundField DataField="Gender" HeaderText="Gender"  />
                            <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="btnSelect" Text="Select" runat="server" CommandArgument='<%# Eval("ID") %>' OnClick="btnSelect_Click"/>
            </ItemTemplate>
        </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    
 

                </td>
                <td style="width: 223px">
                    &nbsp;</td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" >
                        <Columns>
                            <asp:BoundField DataField="a_location" HeaderText="a_location"  />
                            <asp:BoundField DataField="a_location" HeaderText="a_location"  />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

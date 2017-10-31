<%@ Page Title="" Language="C#" MasterPageFile="~/FormDefault.Master" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="WebForums.Post.Post" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            height: 24px;
        }
        .auto-style17 {
            width: 379px;
        }
        .auto-style18 {
            text-align: center;
        }
        .auto-style19 {
            text-align: left;
            color: #FFFFFF;
            font-size: x-large;
            background-color: #869BBF;
        }
        .auto-style20 {
            font-size: x-large;
        }
        .auto-style21 {
            text-align: right;
        }
        .auto-style22 {
            height: 31px;
        }
        .auto-style23 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="2">
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14"></td>
                    </tr>
                </table>
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style20" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="100%">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style14" style="background-color: #5C7099">&nbsp;
                                    <asp:Label ID="lblThoigian" runat="server" CssClass="auto-style15" style="color: #FFFFFF" Text='<%# Eval("THOI_GIAN_DANG") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22" style="background-color: #E1E4F2">&nbsp;
                                    <asp:Label ID="lblUsername" runat="server" CssClass="auto-style16" style="color: #0000FF" Text='<%# Eval("NGUOI_DANG") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td aria-multiline="True" aria-multiselectable="False" class="auto-style22" style="background-color: #FFFFFF">
                                    <asp:Label ID="lblBinhluan" runat="server" EnableTheming="False" Text='<%# Eval("BINH_LUAN") %>' Width="70%"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <table class="auto-style1">
                    <tr>
                        <td style="background-color: #E4E7F5">&nbsp;</td>
                    </tr>
                </table>
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style19" colspan="2">
                <asp:Label ID="lblVietmotbinhkuan" runat="server" Text="Viết một bình luận"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" colspan="2" style="background-color: #E4E7F5">
                <asp:TextBox ID="txtBinhluan" runat="server" CssClass="auto-style20" Height="93px" TextMode="MultiLine" Width="70%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" colspan="2" style="background-color: #D1D4E0">
                <asp:Button ID="btnBinhluan" runat="server" CssClass="auto-style3" OnClick="btnBinhluan_Click" Text="Bình luận" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBinhluan" CssClass="auto-style23" Display="Dynamic" ErrorMessage="Bình luận phải có ít nhất 5 kí tự" ValidationExpression=".{5,}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBinhluan" CssClass="auto-style23" Display="Dynamic" ErrorMessage="Bình luận phải có ít nhất 5 kí tự"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

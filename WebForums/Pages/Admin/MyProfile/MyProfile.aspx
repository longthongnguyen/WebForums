<%@ Page Title="" Language="C#" MasterPageFile="~/FormDefault.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="WebForums.MyProfile1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style14 {
            text-align: center;
            color: #0000FF;
            font-size: xx-large;
        }
        .auto-style15 {
            text-align: center;
            color: #FF3300;
            font-size: x-large;
        }
        .auto-style17 {
            text-align: left;
        }
        .auto-style16 {
            color: #000000;
        }
        .auto-style73 {
            width: 234px;
            font-size: x-large;
            text-align: right;
        }
        .auto-style71 {
            font-size: x-large;
        }
        .auto-style75 {
            text-align: center;
        }
        .auto-style76 {
            text-align: left;
            font-size: xx-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>    <table class="auto-style1">
        <tr>
            <td class="auto-style14"><strong>Trang cá nhân</strong></td>
        </tr>
        <tr>
            <td class="auto-style4"> <strong>&nbsp;
                        <asp:Label ID="lblId" runat="server" CssClass="auto-style2" Text="Username"></asp:Label>
                        <span class="auto-style2">(Quản trị viên)<br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lkbtnChinhsuathongtin" runat="server" CssClass="auto-style71" OnClick="lkbtnChinhsuathongtin_Click">Chỉnh sửa thông tin</asp:LinkButton>
                </span></strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Thông tin cá nhân</strong><table class="auto-style1">
                <tr>
                    <td class="auto-style17">
                        <br />
                        <br />
                        <span class="auto-style16"><strong>&nbsp;&nbsp;&nbsp;&nbsp; Thông tin cơ bản</strong><div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style73">Họ và tên:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td><span class="auto-style71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <strong>
                        <asp:Label ID="lblTen" runat="server" CssClass="auto-style71" Text="N/A"></asp:Label>
                        </strong>
                    </td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style73">Ngày sinh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td><span class="auto-style71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <strong>
                    <asp:Label ID="lblNgaysinh" runat="server" CssClass="auto-style71" Text="N/A"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style73">Giới tính:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td><span class="auto-style71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <strong>
                    <asp:Label ID="lblGioitinh" runat="server" CssClass="auto-style71" Text="N/A"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style73">Nghề nghiệp:&nbsp;&nbsp;&nbsp; </td>
                <td><span class="auto-style71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <strong>
                    <asp:Label ID="lblNghenghiep" runat="server" CssClass="auto-style71" Text="N/A"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
                        <table class="auto-style1">
                            <tr>
                                <td><strong>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp; Thông tin liên lạc</strong></td>
                            </tr>
                            <tr>
                                <td>
        <table class="auto-style1">
            <tr>
                <td class="auto-style73">Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td><span class="auto-style71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <strong>
                    <asp:Label ID="lblEmail" runat="server" CssClass="auto-style71" Text="N/A"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style73">Số điện thoại:&nbsp;&nbsp;&nbsp; </td>
                <td><span class="auto-style71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <strong>
                    <asp:Label ID="lblSodienthoai" runat="server" CssClass="auto-style71" Text="N/A"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style73">Địa chỉ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td><span class="auto-style71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <strong>
                    <asp:Label ID="lblDiachi" runat="server" CssClass="auto-style71" Text="N/A"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style73">Nơi làm việc:&nbsp;&nbsp;&nbsp; </td>
                <td><span class="auto-style71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <strong>
                    <asp:Label ID="lblNoilamviec" runat="server" CssClass="auto-style71" Text="N/A"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
                                </td>
                            </tr>
                        </table>
                        </span>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style76">
                                    <strong>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    Danh sách người dùng</strong></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="auto-style1">
                                        <tr>
                                            <td class="auto-style75">
                                                <asp:GridView ID="gvDanhsach" runat="server" CellPadding="4" ForeColor="#333333" OnRowDeleting="gvDanhsach_RowDeleting" OnRowCommand="gvDanhsach_RowCommand" Width="100%">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:TemplateField ShowHeader="False">
                                                            <EditItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1"  runat="server" CausesValidation="False" CommandName="Edit" Text="Chi tiết" CommandArgument='<%#Eval("Tên đăng nhập") %>'></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:CommandField DeleteText="Xóa" EditText="Xóa" ShowDeleteButton="True" />
                                                    </Columns>
                                                    <EditRowStyle BackColor="#2461BF" />
                                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#EFF3FB" />
                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table class="auto-style1">
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table class="auto-style1">
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style76"><strong>&nbsp;&nbsp;&nbsp;&nbsp; Danh sách quản trị viên</strong></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table class="auto-style1">
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style75">
                                                            <asp:GridView ID="gvDanhsachAdmin" runat="server" CellPadding="4" ForeColor="#333333" Width="100%" OnRowCommand="gvDanhsachAdmin_RowCommand">
                                                                <AlternatingRowStyle BackColor="White" />
                                                                <Columns>
                                                                    <asp:TemplateField ShowHeader="False">
                                                                        <EditItemTemplate>
                                                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Chi tiết" CommandArgument='<%#Eval("Tên đăng nhập") %>'></asp:LinkButton>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                </Columns>
                                                                <EditRowStyle BackColor="#2461BF" />
                                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                                <RowStyle BackColor="#EFF3FB" />
                                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                            </asp:GridView>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table class="auto-style1">
                                                                <tr>
                                                                    <td>&nbsp;</td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        </span></td>
                </tr>
                </table>
            </td>
        </tr>
    </table>
        </td>
    </tr>
</table>
</asp:Content>

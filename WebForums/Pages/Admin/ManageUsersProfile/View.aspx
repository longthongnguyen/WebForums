<%@ Page Title="" Language="C#" MasterPageFile="~/FormDefault.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="WebForums.Pages.Admin.ManageUsersProfile.View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            font-size: x-large;
        }
        .auto-style15 {
            color: #0000FF;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style16 {
            width: 251px;
        }
        .auto-style17 {
            width: 251px;
            color: #0000FF;
            text-align: right;
        }
        .auto-style18 {
            color: #FF0000;
            text-align: center;
        }
        .auto-style19 {
            width: 251px;
            text-align: center;
        }
        .auto-style20 {
            width: 251px;
            text-align: right;
        }
        .auto-style71 {
            font-size: x-large;
        }
        .auto-style72 {
            width: 251px;
            text-align: right;
            height: 31px;
        }
        .auto-style73 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tbody class="auto-style14">
            <tr>
                <td class="auto-style15" colspan="2"><strong>Trang cá nhân</strong></td>
            </tr>
            <tr>
                <td colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblUsername" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
&nbsp;<asp:Label ID="lblQuyen" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:LinkButton ID="lkbtnChinhsuathongtin" runat="server" OnClick="LinkButton1_Click">Chỉnh sửa thông tin</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18" colspan="2"><strong>Thông tin cá nhân</strong></td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <br />
                    <br />
                    <strong>Thông tin cơ bản</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Họ và tên:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="auto-style16">
                        <strong>
                        <asp:Label ID="lblTen" runat="server" CssClass="auto-style71" Text="Chưa có thông tin"></asp:Label>
                        </strong>
                        </span>
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Ngày sinh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="auto-style16">
                    <strong>
                    <asp:Label ID="lblNgaysinh" runat="server" CssClass="auto-style71" Text="Chưa có thông tin"></asp:Label>
                    </strong>
                        </span>
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Giới tính:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="auto-style16">
                    <strong>
                    <asp:Label ID="lblGioitinh" runat="server" CssClass="auto-style71" Text="Chưa có thông tin"></asp:Label>
                    </strong>
                        </span>
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Nghề nghiệp:&nbsp;&nbsp;&nbsp; </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="auto-style16">
                    <strong>
                    <asp:Label ID="lblNghenghiep" runat="server" CssClass="auto-style71" Text="Chưa có thông tin"></asp:Label>
                    </strong>
                        </span>
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <br />
                    <br />
                    <strong>Thông tin liên lạc</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="auto-style16">
                    <strong>
                    <asp:Label ID="lblEmail" runat="server" CssClass="auto-style71" Text="Chưa có thông tin"></asp:Label>
                    </strong>
                        </span>
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Số điện thoại:&nbsp;&nbsp; </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="auto-style16">
                    <strong>
                    <asp:Label ID="lblSodienthoai" runat="server" CssClass="auto-style71" Text="Chưa có thông tin"></asp:Label>
                    </strong>
                        </span>
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style72">Địa chỉ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style73">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="auto-style16">
                    <strong>
                    <asp:Label ID="lblDiachi" runat="server" CssClass="auto-style71" Text="Chưa có thông tin"></asp:Label>
                    </strong>
                        </span>
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Nơi làm việc:&nbsp;&nbsp; </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="auto-style16"><strong><asp:Label ID="lblNoilamviec" runat="server" CssClass="auto-style71" Text="Chưa có thông tin"></asp:Label>
                    </strong>
                        </span>
                        </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </tbody>
    </table>
</asp:Content>

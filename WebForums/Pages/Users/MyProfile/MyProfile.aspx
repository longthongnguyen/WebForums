<%@ Page Title="" Language="C#" MasterPageFile="~/FormDefault.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="WebForums.Pages.Users.MyProfile.MyProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style14 {
            text-align: center;
            color: #0000FF;
            font-size: xx-large;
        }
        .auto-style15 {
            font-size: x-large;
            color: #FF3300;
            text-align: center;
        }
        .auto-style16 {
            color: #000000;
            font-size: x-large;
        }
        .auto-style73 {
            width: 234px;
            font-size: x-large;
            text-align: right;
        }
        .auto-style71 {
            font-size: x-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style14"><strong>Trang cá nhân</strong></td>
        </tr>
        <tr>
            <td class="auto-style4"> <strong>&nbsp;
                        <asp:Label ID="lblId" runat="server" CssClass="auto-style2" Text="Username"></asp:Label>
                        <span class="auto-style2">(Thành viên)<br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lkbtnChinhsuathongtin" runat="server" CssClass="auto-style71" OnClick="lkbtnChinhsuathongtin_Click">Chỉnh sửa thông tin</asp:LinkButton>
                </span></strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Thông tin cá nhân</strong></td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp; Thông tin cơ bản</strong></td>
        </tr>
        <tr>
            <td>
                        <span class="auto-style16"><div>
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
                        </span>
                        </td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style71"><strong>
                            <br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp; Thông tin liên lạc</strong></td>
                    </tr>
                    <tr>
                        <td>
                        <span class="auto-style16">
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
                        </span>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

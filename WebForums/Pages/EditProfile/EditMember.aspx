﻿<%@ Page Title="" Language="C#" MasterPageFile="~/FormDefault.Master" AutoEventWireup="true" CodeBehind="EditMember.aspx.cs" Inherits="WebForums.Pages.EditProfile.EditMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            font-size: x-large;
        }
        .auto-style15 {
            width: 222px;
        }
        .auto-style16 {
            width: 297px;
        }
        .auto-style17 {
            width: 222px;
            height: 31px;
        }
        .auto-style18 {
            width: 297px;
            height: 31px;
        }
        .auto-style19 {
            height: 31px;
            text-align: left;
        }
        .auto-style22 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style23 {
            text-align: left;
        }
        .auto-style24 {
            color: #FF0000;
        }
        .auto-style25 {
            font-size: xx-large;
            text-align: left;
        }
        .auto-style26 {
            width: 512px;
        }
        .auto-style27 {
            text-align: center;
        }
        .auto-style28 {
            font-size: x-large;
            color: #0000CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tbody class="auto-style14">
            <tr>
                <td colspan="3"><strong><span class="auto-style24">&nbsp;&nbsp;&nbsp; Sửa thông tin thành viên
                    </span>
                    <asp:Label ID="lblUsername" runat="server" Text="Label" CssClass="auto-style24"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style22" colspan="2"><strong>Thông tin thành viên</strong></td>
                <td class="auto-style25"><strong>Cập nhật thông tin mới</strong></td>
            </tr>
            <tr>
                <td class="auto-style22" colspan="3"><strong>
                    <asp:Label ID="lblTrangthaicapnhat" runat="server" CssClass="auto-style28"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp; Họ và tên</td>
                <td class="auto-style18"><strong>
                    <asp:Label ID="lblTen" runat="server" Text="Label"></asp:Label>
                    </strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtHovaten" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp; Ngày sinh</td>
                <td class="auto-style16"><strong>
                    <asp:Label ID="lblNgaysinh" runat="server" Text="Label"></asp:Label>
                    </strong></td>
                <td class="auto-style23">Ngày
                    <asp:DropDownList ID="drdNgay" runat="server" CssClass="auto-style3" Width="49px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="01">01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
&nbsp; Tháng
                    <asp:DropDownList ID="drdThang" runat="server" CssClass="auto-style3">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="01">Tháng 1</asp:ListItem>
                        <asp:ListItem Value="02">Tháng 2</asp:ListItem>
                        <asp:ListItem Value="03">Tháng 3</asp:ListItem>
                        <asp:ListItem Value="04">Tháng 4</asp:ListItem>
                        <asp:ListItem Value="05">Tháng 5</asp:ListItem>
                        <asp:ListItem Value="06">Tháng 6</asp:ListItem>
                        <asp:ListItem Value="07">Tháng 7</asp:ListItem>
                        <asp:ListItem Value="08">Tháng 8</asp:ListItem>
                        <asp:ListItem Value="09">Tháng 9</asp:ListItem>
                        <asp:ListItem Value="10">Tháng 10</asp:ListItem>
                        <asp:ListItem Value="11">Tháng 11</asp:ListItem>
                        <asp:ListItem Value="12">Tháng 12</asp:ListItem>
                    </asp:DropDownList>
&nbsp; Năm
                    <asp:TextBox ID="txtNam" runat="server" CssClass="auto-style3" MaxLength="4" Width="62px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp; Giới tính</td>
                <td class="auto-style16"><strong>
                    <asp:Label ID="lblGioitinh" runat="server" Text="Label"></asp:Label>
                    </strong></td>
                <td class="auto-style23">
                    <asp:DropDownList ID="drdGioitinh" runat="server" CssClass="auto-style3">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Nam</asp:ListItem>
                        <asp:ListItem>Nữ</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp; Nghề nghiệp</td>
                <td class="auto-style18"><strong>
                    <asp:Label ID="lblNghenghiep" runat="server" Text="Label"></asp:Label>
                    </strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtNghenghiep" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp; Email</td>
                <td class="auto-style16"><strong>
                    <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                    </strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp; Số điện thoại</td>
                <td class="auto-style16"><strong>
                    <asp:Label ID="lblSodienthoai" runat="server" Text="Label"></asp:Label>
                    </strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtSodienthoai" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp; Địa chỉ</td>
                <td class="auto-style16"><strong>
                    <asp:Label ID="lblDiachi" runat="server" Text="Label"></asp:Label>
                    </strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtDiachi" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp; Nơi làm việc</td>
                <td class="auto-style16"><strong>
                    <asp:Label ID="lblNoilamviec" runat="server" Text="Label"></asp:Label>
                    </strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtNoilamviec" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style23">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đổi mật khẩu</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style23">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td colspan="2">Mật khẩu mới&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtNewpass" runat="server" CssClass="auto-style3" TextMode="Password" Width="132px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td colspan="2">Nhập lại mật khẩu mới&nbsp;&nbsp;
                    <asp:TextBox ID="txtRenewpass" runat="server" CssClass="auto-style3" TextMode="Password" Width="132px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style27">
                    <asp:Label ID="lblLoi" runat="server" CssClass="auto-style24"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style27">
                    <asp:Button ID="btnLuuthaydoi" runat="server" CssClass="auto-style14" OnClick="Button1_Click" Text="Lưu thay đổi" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnHuybo" runat="server" CssClass="auto-style14" OnClick="btnHuybo_Click" Text="Hủy bỏ" />
                </td>
            </tr>
        </tbody>
    </table>
    <table class="auto-style1">
        <tr class="auto-style14">
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr class="auto-style14">
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr class="auto-style14">
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr class="auto-style14">
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr class="auto-style14">
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

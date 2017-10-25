﻿<%@ Page Title="" Language="C#" MasterPageFile="~/FormDefault.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="WebForums.Pages.EditProfile.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style24 {
            color: #FF0000;
        }
        .auto-style25 {
            font-size: x-large;
        }
        .auto-style16 {
            width: 297px;
        }
        .auto-style22 {
            font-size: xx-large;
            text-align: center;
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
        .auto-style15 {
            width: 222px;
        }
        .auto-style23 {
            text-align: left;
        }
        .auto-style27 {
            text-align: center;
        }
        .auto-style28 {
            width: 222px;
            font-size: x-large;
        }
        .auto-style29 {
            width: 222px;
            height: 31px;
            font-size: x-large;
        }
        .auto-style30 {
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style25"><strong><span class="auto-style24">&nbsp;&nbsp;&nbsp; Sửa thông tin của bạn
                    </span>
                    <asp:Label ID="lblUsername" runat="server" Text="Label" CssClass="auto-style24"></asp:Label>
                    </strong>
                </td>
        </tr>
        </table>
    <table class="auto-style1">
        <tr>
                <td class="auto-style22" colspan="2"><strong>Thông tin thành viên</strong></td>
                <td class="auto-style4"><strong>Cập nhật thông tin mới</strong></td>
            </tr>
        <tr class="auto-style25">
            <td colspan="3" class="auto-style27">
                <strong>
                <asp:Label ID="lblTrangthaicapnhat" runat="server" CssClass="auto-style30"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
                <td class="auto-style17"><span class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp; Họ và tên</td>
                <td class="auto-style18"></span><strong>
                    <span class="auto-style25">
                    <asp:Label ID="lblTen" runat="server" Text="Label"></asp:Label>
                    </span>
                    </strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtHovaten" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
        <tr class="auto-style25">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
                <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp; Ngày sinh</td>
                <td class="auto-style16"><strong>
                    <asp:Label ID="lblNgaysinh" runat="server" Text="Label" CssClass="auto-style25"></asp:Label>
                    </strong></td>
                <td class="auto-style23"><span class="auto-style25">Ngày
                    </span>
                    </span>
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
                    <span class="auto-style25">&nbsp; Tháng
                    </span>
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
                    <span class="auto-style25">&nbsp; Năm
                    </span>
                    <asp:TextBox ID="txtNam" runat="server" CssClass="auto-style3" MaxLength="4" Width="62px"></asp:TextBox>
                </td>
            </tr>
        <tr class="auto-style25">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
                <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp; Giới tính</td>
                <td class="auto-style16"></span><strong>
                    <span class="auto-style25">
                    <asp:Label ID="lblGioitinh" runat="server" Text="Label"></asp:Label>
                    </span>
                    </strong></td>
                <td class="auto-style23">
                    <asp:DropDownList ID="drdGioitinh" runat="server" CssClass="auto-style3">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Nam</asp:ListItem>
                        <asp:ListItem>Nữ</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        <tr class="auto-style25">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
                <td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp; Nghề nghiệp</td>
                <td class="auto-style18"></span><strong>
                    <span class="auto-style25">
                    <asp:Label ID="lblNghenghiep" runat="server" Text="Label"></asp:Label>
                    </span>
                    </strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtNghenghiep" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
        <tr class="auto-style25">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
                <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp; Email</td>
                <td class="auto-style16"></span><strong>
                    <span class="auto-style25">
                    <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                    </span>
                    </strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
        <tr class="auto-style25">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
                <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp; Số điện thoại</td>
                <td class="auto-style16"></span><strong>
                    <span class="auto-style25">
                    <asp:Label ID="lblSodienthoai" runat="server" Text="Label"></asp:Label>
                    </span>
                    </strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtSodienthoai" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
        <tr class="auto-style25">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
                <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp; Địa chỉ</td>
                <td class="auto-style16"></span><strong>
                    <span class="auto-style25">
                    <asp:Label ID="lblDiachi" runat="server" Text="Label"></asp:Label>
                    </span>
                    </strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtDiachi" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
        <tr class="auto-style25">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
                <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp; Nơi làm việc</td>
                <td class="auto-style16"></span><strong>
                    <span class="auto-style25">
                    <asp:Label ID="lblNoilamviec" runat="server" Text="Label"></asp:Label>
                    </span>
                    </strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtNoilamviec" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
        <tr class="auto-style25">
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
                    <asp:Button ID="btnLuuthaydoi" runat="server" CssClass="auto-style25" Text="Lưu thay đổi" OnClick="btnLuuthaydoi_Click1" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnHuybo" runat="server" CssClass="auto-style25" Text="Hủy bỏ" OnClick="btnHuybo_Click" />
                </td>
            </tr>
        <tr class="auto-style25">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr class="auto-style25">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

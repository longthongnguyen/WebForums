<%@ Page Title="" Language="C#" MasterPageFile="~/FormDefault.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="WebForums.Pages.EditProfile.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 297px;
        }
        .auto-style15 {
            font-size: x-large;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="2">&nbsp; <span class="auto-style15"><strong>Sửa thông tin của bạn
                <asp:Label ID="lblUsername" runat="server" Text="Label"></asp:Label>
                </strong></span></td>
        </tr>
        <tr class="auto-style15">
            <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp; Họ và tên</td>
            <td>
                <asp:TextBox ID="txtHovaten" runat="server" CssClass="auto-style15" OnTextChanged="TextBox1_TextChanged" Width="358px"></asp:TextBox>
            </td>
        </tr>
        <tr class="auto-style15">
            <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp; Ngày sinh</td>
            <td>
                &nbsp;Ngày
                <asp:DropDownList ID="drdNgay" runat="server" CssClass="auto-style15" Width="58px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="01">1</asp:ListItem>
                    <asp:ListItem Value="02">2</asp:ListItem>
                    <asp:ListItem Value="03">3</asp:ListItem>
                    <asp:ListItem Value="04">4</asp:ListItem>
                    <asp:ListItem Value="05">5</asp:ListItem>
                    <asp:ListItem Value="06">6</asp:ListItem>
                    <asp:ListItem Value="07">7</asp:ListItem>
                    <asp:ListItem Value="08">8</asp:ListItem>
                    <asp:ListItem Value="09">9</asp:ListItem>
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
                <asp:DropDownList ID="drdThang" runat="server" CssClass="auto-style15" Width="127px">
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
&nbsp;Năm
                <asp:TextBox ID="txtNam" runat="server" CssClass="auto-style15" Width="89px" MaxLength="4"></asp:TextBox>
            </td>
        </tr>
        <tr class="auto-style15">
            <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp; Giới tính</td>
            <td>
                <asp:DropDownList ID="drdGioitinh" runat="server" CssClass="auto-style15">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="auto-style15">
            <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp; Nghề nghiệp</td>
            <td>
                <asp:TextBox ID="txtNghenghiep" runat="server" CssClass="auto-style15" Width="358px"></asp:TextBox>
            </td>
        </tr>
        <tr class="auto-style15">
            <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp; Số điện thoại</td>
            <td>
                <asp:TextBox ID="txtSodienthoai" runat="server" CssClass="auto-style15" Width="358px"></asp:TextBox>
            </td>
        </tr>
        <tr class="auto-style15">
            <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp; Địa chỉ</td>
            <td>
                <asp:TextBox ID="txtDiachi" runat="server" CssClass="auto-style15" Width="358px"></asp:TextBox>
            </td>
        </tr>
        <tr class="auto-style15">
            <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp; Nơi làm việc</td>
            <td>
                <asp:TextBox ID="txtNoilamviec" runat="server" CssClass="auto-style15" Width="358px"></asp:TextBox>
            </td>
        </tr>
        <tr class="auto-style15">
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="lblLoi" runat="server" CssClass="auto-style17"></asp:Label>
            </td>
        </tr>
        <tr class="auto-style15">
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">
                <asp:Button ID="btnLuuthaydoi" runat="server" CssClass="auto-style15" Text="Lưu thay đổi" OnClick="btnLuuthaydoi_Click" />
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

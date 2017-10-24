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
                <asp:TextBox ID="txtNgaysinh" runat="server" CssClass="auto-style15" Width="358px"></asp:TextBox>
            &nbsp;*ngày/tháng/năm*</td>
        </tr>
        <tr class="auto-style15">
            <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp; Giới tính</td>
            <td>
                <asp:DropDownList ID="drdGioitinh" runat="server" CssClass="auto-style15">
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
            <td>&nbsp;</td>
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

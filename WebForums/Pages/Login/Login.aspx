<%@ Page Title="" Language="C#" MasterPageFile="~/FormDefault.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebForums.Pages.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            text-align: center;
            height: 30px;
        }
        .auto-style17 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style14">
        <strong>Đăng nhập</strong></p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style15">Nhập tên tài khoản và mật khẩu để đăng nhập</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style15">
                <asp:Label ID="lblLoi" runat="server" CssClass="auto-style17"></asp:Label>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style15">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTaikhoan" CssClass="auto-style17" ErrorMessage="Tên đăng nhập không hợp lệ" ValidationExpression="[^`~#%^&amp;*{}'&quot;&lt;&gt;?]*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Tên đăng nhập
                <asp:TextBox ID="txtTaikhoan" runat="server" CssClass="auto-style3" Width="134px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Mật khẩu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtMatkhau" runat="server" CssClass="auto-style3" TextMode="Password" Width="134px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:CheckBox ID="chkNhomatkhau" runat="server" Text="Nhớ mật khẩu" OnCheckedChanged="chkNhomatkhau_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:Button ID="btnDangnhap" runat="server" BackColor="#CCCCCC" CssClass="auto-style3" Text="Đăng nhập" BorderStyle="Outset" OnClick="btnDangnhap_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

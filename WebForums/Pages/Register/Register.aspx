<%@ Page Title="" Language="C#" MasterPageFile="~/FormDefault.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebForums.Pages.Register.Register" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            text-align: center;
            font-size: xx-large;
            height: 112px;
        }
        .auto-style15 {
            width: 144px;
        }
        .auto-style16 {
            width: 131px;
        }
        .auto-style17 {
            width: 131px;
            height: 24px;
        }
        .auto-style18 {
            width: 144px;
            height: 24px;
        }
        .auto-style19 {
            height: 24px;
        }
        .auto-style20 {
            width: 131px;
            height: 26px;
        }
        .auto-style21 {
            width: 144px;
            height: 26px;
        }
        .auto-style22 {
            height: 26px;
        }
        .auto-style23 {
            height: 46px;
        }
        .auto-style25 {
            text-align: left;
        }
        .auto-style26 {
            color: #FF0000;
        }
    .auto-style38 {
        font-size: large;
        color: #FF0000;
    }
        .auto-style39 {
            font-size: x-large;
        }
        .auto-style40 {
            color: #0000FF;
            font-size: xx-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style14" colspan="4"><strong>Đăng Ký</strong></td>
        </tr>
        <tr class="auto-style39">
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
            <td class="auto-style19">
                <asp:Label ID="lblDangkythanhcong" runat="server" CssClass="auto-style40"></asp:Label>
            </td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style18">
                <asp:Label ID="Label2" runat="server" Text="Họ và tên: " CssClass="auto-style3"></asp:Label>
                <br />
            </td>
            <td class="auto-style19">
                <asp:TextBox ID="tbten" runat="server" Width="180px" CssClass="auto-style3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbten" CssClass="auto-style3" ErrorMessage="* Vui lòng nhập Họ và tên" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
            <td class="auto-style21">
                <asp:Label ID="Label3" runat="server" Text="Tên đăng nhập:"></asp:Label>
                <br />
            </td>
            <td class="auto-style22">
                <asp:TextBox ID="tbuser" runat="server" Width="180px" CssClass="auto-style3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="auto-style3" ErrorMessage="* Vui lòng nhập tên đăng nhập" ForeColor="Red" ControlToValidate="tbuser" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="tbuser" CssClass="auto-style3" ErrorMessage="* Tên đăng nhập đã tồn tại" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" Display="Dynamic">* Tên đăng nhập đã tồn tại</asp:CustomValidator>
                <br />
            </td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style15">
                <asp:Label ID="Label4" runat="server" Text="Mật khẩu: "></asp:Label>
                <br />
            </td>
            <td>
                <asp:TextBox ID="tbpass" runat="server" TextMode="Password" Width="180px" CssClass="auto-style3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbpass" CssClass="auto-style3" ErrorMessage="* Vui lòng nhập mật khẩu" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="tbpass" CssClass="auto-style38" Display="Dynamic" ErrorMessage="*Mật khẩu phải có ít nhất 5 kí tự" ValidationExpression=".{5,}$"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style15">
                Nhập lại mật khẩu</td>
            <td>
                <asp:TextBox ID="tbrepass" runat="server" TextMode="Password" Width="180px" CssClass="auto-style3"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbpass" ControlToValidate="tbrepass" CssClass="auto-style26" ErrorMessage="* Vui lòng nhập đúng mật khẩu xác nhận"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style15">
                <asp:Label ID="Label5" runat="server" Text="Giới tính: "></asp:Label>
                <br />
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="185px" CssClass="auto-style3">
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style15">Email:<br />
            </td>
            <td class="auto-style23">
                <asp:TextBox ID="tbemail" runat="server" Width="180px" CssClass="auto-style3"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbemail" CssClass="auto-style3" ErrorMessage="* Vui lòng nhập đúng email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">* Vui lòng nhập đúng email</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbemail" CssClass="auto-style3" ErrorMessage="* Vui lòng nhập email" ForeColor="Red" Display="Dynamic">* Vui lòng nhập email</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td rowspan="2">&nbsp;
                <recaptcha:RecaptchaControl ID="recaptcha" runat="server"
                        PublicKey="6LfpBjYUAAAAALqjKPi0kXUH3tQgW_YOs_sPcO67"
                        PrivateKey="6LfpBjYUAAAAALsxCCaJoWHWu2ZHOKDsgqkf3TMs" />
                <br />
                <asp:CustomValidator ID="CustomValidator2" runat="server" CssClass="auto-style3" ErrorMessage="* Vui lòng hoàn thành captcha"  OnServerValidate="CustomValidator2_ServerValidate" ClientValidationFunction="CustomValidator2_ServerValidate" ForeColor="Red">* Vui lòng nhập đúng captcha </asp:CustomValidator>
                <asp:Button ID="btdki" runat="server" OnClick="btdki_Click" Text="Đăng Ký" CssClass="auto-style3" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style25" colspan="2" rowspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 150px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 150px;
            height: 26px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            width: 150px;
            height: 30px;
        }
        .auto-style8 {
            width: 27px;
        }
        .auto-style9 {
            height: 26px;
            width: 27px;
        }
        .auto-style10 {
            height: 30px;
            width: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <strong>
            <br />
            ĐĂNG KÝ<br />
            </strong>
            <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style3">Họ và tên:</td>
                <td>
                    <asp:TextBox ID="tbten" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbten" ErrorMessage="Vui lòng nhập họ và tên, không để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style3">Tên đăng nhập:</td>
                <td>
                    <asp:TextBox ID="tbuser" runat="server" Width="180px"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="tbuser" ErrorMessage="Tên đăng nhập đã tồn tại" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" ClientValidationFunction="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbuser" ErrorMessage="Vui lòng nhập tên đăng nhập, không để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style3">Mật khẩu</td>
                <td>
                    <asp:TextBox ID="tbpass" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbpass" ErrorMessage="Vui lòng nhập mật khẩu, không để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style5">Giới tính:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Nam</asp:ListItem>
                        <asp:ListItem>Nữ</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style5">Địa chỉ:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbdiachi" runat="server" Width="180px"></asp:TextBox>
                &nbsp;*không bắt buộc</td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style3">Ngày sinh:</td>
                <td>
                    <asp:TextBox ID="tbngaysinh" runat="server" Width="180px"></asp:TextBox>
                &nbsp;*yyyy/mm/dd&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbngaysinh" ErrorMessage="Vui lòng nhập ngày sinh, không để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style3">Số điện thoại:</td>
                <td>
                    <asp:TextBox ID="tbdt" runat="server" Width="180px"></asp:TextBox>
                &nbsp;*không bắt buộc</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style5">Nghề nghiệp:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbnghe" runat="server" Width="180px"></asp:TextBox>
                &nbsp;*không bắt buộc</td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style5">Nơi làm việc:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbnoi" runat="server" Width="180px"></asp:TextBox>
                &nbsp;*không bắt buộc</td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style7">Email:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tbemail" runat="server" Width="180px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbemail" ErrorMessage="Vui lòng nhập chính xác địa chỉ email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btdki" runat="server" OnClick="btdki_Click" style="height: 26px" Text="Đăng Ký" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

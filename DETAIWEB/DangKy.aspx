<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="WebSite1_DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="tbl_DK_div">
        <table class="tbl_DK" style="width: 30%;">
            <tr>
                <td>TẠO TÀI KHOẢN</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtHo" runat="server" placeholder="Họ tên đệm"></asp:TextBox>
                   
                </td>
                <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                         ControlToValidate="txtHo"
                        runat="server" 
                        ErrorMessage="Nhập Tên Đệm">

                    </asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    
                    <asp:TextBox ID="txtTen" runat="server" placeholder="Tên"></asp:TextBox>
                   
                </td>
                <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                         ControlToValidate="txtTen" ErrorMessage="Nhập Tên!!"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList ID="rdlGT" runat="server" RepeatColumns="2">
                        <asp:ListItem Value="1" Selected="True">Nam</asp:ListItem>
                        <asp:ListItem Value="0">Nữ</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox><br />
                </td>
                <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Nhập email"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtSDT" runat="server" placeholder="Số điện thoại"></asp:TextBox><br />
                </td>
                <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSDT" ErrorMessage="Nhập SDT!!"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtMK" runat="server" TextMode="Password" placeholder="Mật khẩu"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMK" ErrorMessage="Nhập Mật Khẩu!!"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtNLMK" runat="server" TextMode="Password" placeholder="Nhập lại mật khẩu"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtNLMK" ControlToValidate="TxtMK" Display="Dynamic" ErrorMessage="CompareValidator">Không trùng MK</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Đăng ký" OnClick="Button1_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbKQ" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>


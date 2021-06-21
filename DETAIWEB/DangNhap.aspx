<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="WebSite1_DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="tbl_DK_div">
<table class="tbl_DN" style="width: 50%;">
            <tr>
                <td>ĐĂNG NHẬP</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txttaikhoan" runat="server" placeholder="Nhập Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password" placeholder="Nhập mật- khẩu"></asp:TextBox>
                </td>
            </tr>
        
            <tr>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2">
                        <asp:ListItem Value="0">ADMIN</asp:ListItem>
                        <asp:ListItem Value="1" Selected="True">USER</asp:ListItem>

                    </asp:RadioButtonList>
                </td>
            </tr>



            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Đăng Nhập" OnClick="Button1_Click"/>
                    <asp:Label ID="lbKQ" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Chưa có tài khoản ấn
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="DangKy.aspx">Đăng ký</asp:HyperLink>
                </td>
            </tr>
             </table>
    </div>
</asp:Content>


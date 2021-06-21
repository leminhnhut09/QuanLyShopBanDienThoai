<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="ChiTietSP.aspx.cs" Inherits="ChiTietSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
        <table style="width: 100%; height: 230px;">
            <tr>
                <td style="width: 240px">&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENSP") %>' style="color: #0000FF; font-weight: 700; font-size: x-large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 240px">
                    <asp:Image ID="Image2" runat="server" Height="161px" ImageUrl='<%# "~/hinhanh/"+Eval("HINH") %>' Width="195px" />
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text='<%# "Thông Số Kỹ Thuật: "+Eval("TSKT") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text='<%# "Tình trạng: "+Eval("TINHTRANG") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text='<%# "Bảo hành: "+Eval("BAOHANH") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" style="color: #FF0000" Text='<%# "Giá: "+Eval("GIA")+"đ" %>'></asp:Label>
                </td>                                       
                <td>

                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    <%--<asp:Button ID="Button1" OnClick="ThemVaoGioHang" runat="server" Text="Thêm Vào Giỏ Hàng" />--%>
                    
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>

</asp:Content>


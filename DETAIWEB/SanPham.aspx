<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="SanPham.aspx.cs" Inherits="SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: x-large;text-align:center;font-size:25px"><strong> Sản Phẩm </strong></p>
   
    <asp:DataList ID="DataList1" runat="server"   CellPadding="10" CellSpacing="10" RepeatColumns="5" Height="291px" Width="981px" >

    <ItemTemplate>
        <div style="height: 270px; text-align: center; width: 196px;">
            <asp:Image ID="Image2" runat="server" Height="180px" ImageUrl='<%# "~/hinhanh/"+Eval("HINH") %>' Width="178px" />
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENSP") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("GIA")+"đ" %>'></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "ChiTietSP.aspx?masp="+Eval("MA") %>' Text='<%# "Chi tiết" %>'></asp:HyperLink>
            &nbsp;&nbsp;&nbsp;
            <a href ="giohang.aspx?ID=<%# Eval ("MA") %>"> Mua hàng </a>
            <br />
        </div>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

 
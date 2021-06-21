<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="QuanLySP.aspx.cs" Inherits="QuanLySP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MA" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowFooter="True" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True"  ShowDeleteButton="true" ShowEditButton="true"  />
            <asp:TemplateField HeaderText="MA" InsertVisible="False" SortExpression="MA">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("MA") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("MA") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Button ID="Button1" runat="server" Text="INSERT" OnClick="ThemSP" />
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TENSP" SortExpression="TENSP">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TENSP") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("TENSP") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txttensp" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TSKT" SortExpression="TSKT">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TSKT") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("TSKT") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txttskt" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="BAOHANH" SortExpression="BAOHANH">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("BAOHANH") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("BAOHANH") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtbaohanh" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TINHTRANG" SortExpression="TINHTRANG">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("TINHTRANG") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("TINHTRANG") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txttinhtrang" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="GIA" SortExpression="GIA">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("GIA") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("GIA") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtgia" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MALOAI" SortExpression="MALOAI">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("MALOAI") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("MALOAI") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtmaloai" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="HINH" SortExpression="HINH">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("HINH") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("HINH") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txthinh" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DETAIWEBConnectionString2 %>" SelectCommand="SELECT * FROM [SANPHAM]" DeleteCommand="delete from sanpham where ma = @MA" InsertCommand="INSERT INTO SANPHAM  VALUES( @TENSP,@TSKT, @BAOHANH, @TINHTRANG,@GIA,@MALOAI,@HINH)" UpdateCommand="UPDATE SANPHAM SET TENSP=@TENSP,TSKT = @TSKT,BAOHANH = @BAOHANH,TINHTRANG = @TINHTRANG,GIA = @GIA,MALOAI = @MALOAI,HINH = @HINH WHERE MA = @MA " >
        <DeleteParameters>
            <asp:Parameter Name="@MA" Type="Int32"/>
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="@MA" Type="Int32"/>
            <asp:Parameter Name="@TENSP" Type="String"/>
            <asp:Parameter Name="@TSKT" Type="String"/>
            <asp:Parameter Name="@BAOHANH" Type="String"/>
            <asp:Parameter Name="@TINHTRANG" Type="String"/>
            <asp:Parameter Name="@GIA" Type="Int32"/>
            <asp:Parameter Name="@MALOAI" Type="String"/>
            <asp:Parameter Name="@HINH" Type="String"/>
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="@TENSP" Type="String"/>
            <asp:Parameter Name="@TSKT" Type="String"/>
            <asp:Parameter Name="@BAOHANH" Type="String"/>
            <asp:Parameter Name="@TINHTRANG" Type="String"/>
            <asp:Parameter Name="@GIA" Type="Int32"/>
            <asp:Parameter Name="@MALOAI" Type="String"/>
            <asp:Parameter Name="@HINH" Type="String"/>
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>


using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class TrangChu : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["People"] = "";
        //Tao ket noi
        String strcn = ConfigurationManager.ConnectionStrings["a"].ToString();
        SqlConnection cn = new SqlConnection(strcn);
        //tao cmd
        String strcmd = "select TENLOAI,'SanPham.aspx?ml='+ cast(MALOAI as varchar(10)) as lk from LOAI";

        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "k");

        GridView1.DataSource = ds.Tables["k"];
        GridView1.DataBind();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["Seach"] = "1";
        Session["TenLoai"] = TextBox1.Text;
        Response.Redirect("SanPham.aspx");
    }
    protected void GioHang(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("GioHang.aspx");
    }

    protected void LinkDN_Click(object sender, EventArgs e)
    {
        Response.Redirect("DangNhap.aspx");
    }
    protected void LinkExit_Click(object sender, EventArgs e)
    { 
        Session["Login"] = "1";
        Session["People"] = "";
        Response.Redirect("TrangChu.aspx");
    }
    protected void QLSP_Click(object sender, EventArgs e)
    {
        Response.Redirect("QuanLySP.aspx");
    }
}

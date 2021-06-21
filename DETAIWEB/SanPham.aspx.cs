using App_Code;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SanPham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         String trangthai = "0"; // 0: load tất cả dữ liệu, 1: load dữ liệu theo tìm kiếm
         trangthai = (String)Session["Seach"];
        if (trangthai == "1")
        {
            String strcmd;
            String TenLoai = (String)Session["TenLoai"];
            if (TenLoai == null)
            {
                strcmd = "Select MA,HINH,TENSP,GIA from SANPHAM";
            }
            else
            {
                strcmd = "Select * from SANPHAM where TENSP like '%" + TenLoai + "%'";
            }
            //Tao ket noi
            String strcn = ConfigurationManager.ConnectionStrings["a"].ConnectionString;
            SqlConnection cn = new SqlConnection(strcn);
            cn.Open();
            //Tao cmd

            SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "abc");

            DataList1.DataSource = ds.Tables["abc"];
            DataList1.DataBind();
            Session["Seach"] = "0";
        }
        else
        {
            String strcmd;
            String MaL = Request.QueryString["ml"];
            if (MaL == null)
            {
                strcmd = "Select MA,HINH,TENSP,GIA from SANPHAM";
            }
            else
            {
                strcmd = "Select * from SANPHAM where MALOAI='" + MaL + "'";
            }
            //Tao ket noi
            String strcn = ConfigurationManager.ConnectionStrings["a"].ConnectionString;
            SqlConnection cn = new SqlConnection(strcn);
            cn.Open();
            //Tao cmd

            SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "abc");

            DataList1.DataSource = ds.Tables["abc"];
            DataList1.DataBind();
        }
        if (!IsPostBack)
        {
            xaydung cart = new xaydung();
            cart.CreateItem();
            Session["Cart"] = cart;
        }

    }
}
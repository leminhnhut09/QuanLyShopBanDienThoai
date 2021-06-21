using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using App_Code;
using System.Configuration;

public partial class giohang : System.Web.UI.Page
{
    SqlConnection cnl = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["a"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((String)Session["Login"] == "1")
        {
            Response.Redirect("DangNhap.aspx");
        }
        if (!IsPostBack)
        {

            int id = int.Parse(Request.QueryString["id"].ToString());
            String strcmd = "select * from sanpham where MA = '" + id.ToString() + "'";
            SqlDataAdapter dal = new SqlDataAdapter(strcmd, cnl);
            DataSet d = new DataSet();
            dal.Fill(d);

            if (d.Tables[0].Rows.Count > 0)
            {
                string ten = d.Tables[0].Rows[0][1].ToString();
                int gia = int.Parse(d.Tables[0].Rows[0][5].ToString());
                string hinh = d.Tables[0].Rows[0][7].ToString();
                int sl = 1;
                xaydung cart = new xaydung();
                cart = (xaydung)Session["Cart"];
                cart.InsertProduct(id, ten, hinh, gia, sl);
                Session["Cart"] = cart;
            }
        }

        xaydung cartl = (xaydung)Session["Cart"];
        DataTable t = cartl.giohang;
        GridView1.DataSource = t;
        GridView1.DataBind();
        Label1.Text = cartl.TongThanhTien().ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
}
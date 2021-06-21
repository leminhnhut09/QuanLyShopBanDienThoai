using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChiTietSP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String strcn = ConfigurationManager.ConnectionStrings["a"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();


        //tao cmd
        string msp = Request.QueryString["masp"];
        String strcmd = "SELECT * FROM SANPHAM WHERE MA='" + msp + "'";
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);

        DataSet ds = new DataSet();
        da.Fill(ds, "abc");

        DataList1.DataSource = ds.Tables["abc"];
        DataList1.DataBind();



    }

    //protected void ThemVaoGioHang(object sender, EventArgs e)
    //{
    //    string msp = Request.QueryString["masp"];
    //    String st = "Data Source =DESKTOP-IKDLULL;Initial Catalog=DETAIWEB;Integrated Security = true";
    //    using (SqlConnection con = new SqlConnection(st))
    //    {
    //        SqlCommand cmd = new SqlCommand();
    //        cmd.CommandText = "INSERT INTO CHITIETGIOHANG VALUES('" + 1 + "','" + msp + "','" + 3 + "'";
    //        cmd.Connection = con;
    //        con.Open();
    //        cmd.ExecuteReader();
    //        con.Close();
    //        Response.Write("da them");
    //    }

    //}

}

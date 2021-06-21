using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuanLySP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ThemSP(object sender, EventArgs e)
    {
        //Tao ket noi
        String strcn = ConfigurationManager.ConnectionStrings["a"].ConnectionString;
        using (SqlConnection cn = new SqlConnection(strcn))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "INSERT_SP";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Connection = cn;
            // thêm parameter
            cmd.Parameters.AddWithValue("@TENSP", ((TextBox)GridView1.FooterRow.FindControl("txttensp")).Text);
            cmd.Parameters.AddWithValue("@TSKT", ((TextBox)GridView1.FooterRow.FindControl("txttskt")).Text);
            cmd.Parameters.AddWithValue("@BAOHANH", ((TextBox)GridView1.FooterRow.FindControl("txtbaohanh")).Text);
            cmd.Parameters.AddWithValue("@TINHTRANG", ((TextBox)GridView1.FooterRow.FindControl("txttinhtrang")).Text);
            cmd.Parameters.AddWithValue("@GIA", ((TextBox)GridView1.FooterRow.FindControl("txtgia")).Text);
            cmd.Parameters.AddWithValue("@MALOAI", ((TextBox)GridView1.FooterRow.FindControl("txtmaloai")).Text);
            cmd.Parameters.AddWithValue("@HINH", ((TextBox)GridView1.FooterRow.FindControl("txthinh")).Text);
            cn.Open();
            cmd.ExecuteNonQuery();
            GridView1.DataBind();
            cn.Close();
        }
    }

}
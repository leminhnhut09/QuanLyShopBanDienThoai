using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebSite1_DangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbKQ.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lbKQ.Enabled = false;
        //Tạo kết nối
        String strcn = ConfigurationManager.ConnectionStrings["a"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();

        //Đếm số thành viên có trúng địa chỉ email vừa nhập trên from??
        string strsel = "select count(*) from KHACHHANG where EMAIL = '" + txtEmail.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strsel;

        int bKtra = (int)cmd.ExecuteScalar();
        if (bKtra == 1)
        {
            lbKQ.Visible = true;
            lbKQ.Text = "Trùng email";
        cn.Close();
        }
        else
        {
            String strcmd = "insert into KHACHHANG ";
            strcmd = strcmd + "values('" + txtHo.Text + "','" + txtTen.Text + "','" + rdlGT.SelectedValue + "','"+ txtEmail.Text +"','"+ txtSDT.Text +"','"+ txtMK.Text +"')";
            cmd.CommandText = strcmd;

            int rs = cmd.ExecuteNonQuery();
            if (rs == 1)
            {
                lbKQ.Visible = true;
                lbKQ.Text = "Tạo Tài Khoản Người Dùng Thành Công!";

            }
        }
        
    }
}
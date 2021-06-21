using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class WebSite1_DangNhap : System.Web.UI.Page
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

        //Đếm số tài khoản có trùng nhau??
        string strsel = "";
        if (RadioButtonList1.SelectedIndex == 0)
        {
             strsel = "select count(*) from ADMINN where TAIKHOAN = '" + txttaikhoan.Text + "' and MATKHAU ='" + txtmatkhau.Text + "'";
        }
        else
        {
             strsel = "select count(*) from KHACHHANG where EMAIL = '" + txttaikhoan.Text + "' and MATKHAU ='" + txtmatkhau.Text + "'";
        }
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strsel;

        int bKtra = (int)cmd.ExecuteScalar();

        
        cn.Close();
        if (bKtra == 0)
        {
            lbKQ.Visible = true;
            lbKQ.Text = "Đăng nhập thất bại!!!";
        }
        else
        {
            Session["Login"] = "2"; // biến này dùng để xác định trạng thái đăng nhập. 
            Session["Name"] = txttaikhoan.Text; // lấy tên tk người dùng
            if (RadioButtonList1.SelectedIndex == 1)
            {

                Response.Redirect("TrangChu.aspx");
            }
            else 
            {
                Session["People"] = "Admin";
                Response.Redirect("QuanLySP.aspx");
            }
           
        }
    }
}
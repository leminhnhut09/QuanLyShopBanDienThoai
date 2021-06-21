using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for xaydung
/// </summary>
namespace App_Code
{
    public class xaydung
    {
        public DataTable giohang = new DataTable();
        public void CreateItem()
        {
            giohang.Columns.Add("MÃ SẢN PHẨM");
            giohang.Columns.Add("TÊN SẢN PHẨM");
            giohang.Columns.Add("HÌNH");
            giohang.Columns.Add("GIÁ");
            giohang.Columns.Add("SỐ LƯỢNG");
        }

        public Boolean InsertProduct(int ma, string ten, string hinh, int gia, int sl)
        {
            Boolean flag = false;
            foreach (DataRow d in giohang.Rows)
            {
                if (int.Parse(d[0].ToString()) == ma)
                {
                    d[4] = int.Parse(d[4].ToString()) + sl;
                    flag = true;
                }
            }
            if (flag == false)
            {
                DataRow dong = giohang.NewRow();
                dong[0] = ma;
                dong[1] = ten;
                dong[2] = hinh;
                dong[3] = gia;
                dong[4] = sl;
                giohang.Rows.Add(dong);
                return true;
            }
            return false;
        }
        public int TongThanhTien()
        {
            int a = 0;
            foreach (DataRow d in giohang.Rows)
            {
                a = a + int.Parse(d[3].ToString()) * int.Parse(d[4].ToString());
            }
            return a;
        }
    }
}
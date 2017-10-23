using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Common;

namespace WebForums.Pages
{
    public partial class test : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DULIEUNGUOIDUNG"].ToString());
        string User_Name = string.Empty;
        string User_Color = string.Empty;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["username"] != null)
                txtTaikhoan.Text = Request.Cookies["username"].Value;
            if (Request.Cookies["password"] != null)
                txtMatkhau.Attributes.Add("value", Request.Cookies["password"].Value);
            if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
                chkNhomatkhau.Checked = true;
            //Nếu tài khoản đã đăng nhập rồi mà truy cập trang login thì đưa đến trang chủ
            if (Session["id"].ToString() != "True")
            {
                Response.Redirect("~/Pages/Home/Home.aspx");
            }
            txtTaikhoan.Focus();

            //Thêm title cho web
            Page.Title = "Đăng nhập | Forums";
        }

        protected void btnDangnhap_Click(object sender, EventArgs e)
        {
            if(chkNhomatkhau.Checked == true)
            {
                Response.Cookies["username"].Value = txtTaikhoan.Text;
                Response.Cookies["password"].Value = txtMatkhau.Text;
            }
            conn.Open();
            string lenh = "select count(*) from LOGIN where USERNAME ='" + txtTaikhoan.Text + "'and PASSWORD ='" + txtMatkhau.Text + "' ";
            SqlCommand cmd = new SqlCommand(lenh, conn);
            string output = cmd.ExecuteScalar().ToString();
            if (output == "1")
            {
                Session["id"] = txtTaikhoan.Text;
                lenh = "select count(*) from USERS where USERNAME = '" + Session["id"] + "'";
                cmd = new SqlCommand(lenh, conn);
                output = (cmd.ExecuteScalar().ToString()).ToString();



                if (output.ToString() == "1")
                {
                    Session["quyen"] = "thanhvien";
                    Session["quyentam"] = "thanhvien";
                }
                else
                {
                    Session["quyen"] = "quantri";
                    Session["quyentam"] = "thanhvien";
                }


                //Lưu dữ các thông tin cá nhân của người đăng nhập
                lenh = "select * from USERS where USERNAME = '" + Session["id"] + "'";
                if (Session["quyen"] == "quantri")
                {
                    lenh = "select * from ADMIN where USERNAME = '" + Session["id"] + "'";
                }
                cmd = new SqlCommand(lenh, conn);
                DbDataReader reader = cmd.ExecuteReader();
                reader.Read();
                string username = reader.GetString(9);
                Session["username"] = username;
                string ten = reader.GetString(1);
                Session["ten"] = ten;

                string gioitinh = reader.GetString(2);
                Session["gioitinh"] = gioitinh;
                try
                {
                    string diachi = reader.GetString(3);
                    Session["diachi"] = diachi;
                }
                catch { }

                try
                {
                    DateTime ngaysinh = reader.GetDateTime(4);;
                    Session["ngaysinh"] = ngaysinh.ToLongDateString();
                }
                catch { }

                try
                {
                    string sodienthoai = reader.GetString(5);
                    Session["sodienthoai"] = sodienthoai;
                }
                catch { }

                try
                {
                    string nghenghiep = reader.GetString(6);
                    Session["nghenghiep"] = nghenghiep;
                }
                catch { }

                try
                {
                    string noilamviec = reader.GetString(7);
                    Session["noilamviec"] = noilamviec;
                }
                catch { }

                string email = reader.GetString(10);
                Session["email"] = email;

                Response.Redirect("~/Pages/Home/Home.aspx");
            }
            else
            {
                lblLoi.Text = "Thông tin Tên tài khoản hoặc Mật khẩu không chính xác!";
                txtTaikhoan.Focus();
            }
        }

        protected void chkNhomatkhau_CheckedChanged(object sender, EventArgs e)
        {
            
        }
    }
}
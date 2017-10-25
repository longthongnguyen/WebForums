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
using System.Web.UI.HtmlControls;

namespace WebForums.Pages.Users.MyProfile
{
    public partial class MyProfile : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DULIEUNGUOIDUNG"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            //Nếu là admin mà đang dùng quyền quản trị thì trở về trang cá nhân của admin
            if (Session["quyentam"] == "quantri")
            {
                Response.Redirect("~/Pages/Admin/MyProfile/MyProfile.aspx");
            }

            Session["trangthaicapnhat"] = "";
            //Nếu chưa đăng nhập mà truy cập thì đưa về trang Login để xử lí lại
            if (Session["id"].ToString() == "True")
            {
                Response.Redirect("~/Pages/Login/Login.aspx");
            }

            //In ra thông tin cá nhân
            conn.Open();
            lblId.Text = Session["id"].ToString();
            string lenh = "select * from USERS where USERNAME = '" + Session["id"] + "'";
            if (Session["quyen"] == "quantri")
            {
                lenh = "select * from ADMIN where USERNAME = '" + Session["id"] + "'";
                lblQuyen.Text = "(Quản trị viên)";
            }
            SqlCommand cmd = new SqlCommand(lenh, conn);
            DbDataReader reader = cmd.ExecuteReader();
            reader.Read();

            lblTen.Text = Session["ten"].ToString();

            string gioitinh = reader.GetString(2);
            lblGioitinh.Text = gioitinh;

            try
            {
                string diachi = reader.GetString(3);
                lblDiachi.Text = diachi;
            }
            catch { lblDiachi.Text = "Chưa có thông tin"; }

            try
            {
                lblNgaysinh.Text = Session["ngaysinh"].ToString();
            }
            catch { lblNgaysinh.Text = "Chưa có thông tin"; }

            try
            {
                string sodienthoai = reader.GetString(5);
                lblSodienthoai.Text = sodienthoai;
            }
            catch { lblSodienthoai.Text = "Chưa có thông tin"; }

            try
            {
                string nghenghiep = reader.GetString(6);
                lblNghenghiep.Text = nghenghiep;
            }
            catch { lblNghenghiep.Text = "Chưa có thông tin"; }

            try
            {
                string noilamviec = reader.GetString(7);
                lblNoilamviec.Text = noilamviec;
            }
            catch { lblNoilamviec.Text = "Chưa có thông tin"; }

            string username = reader.GetString(9);
            Session["username"] = username;

            string email = reader.GetString(10);
            lblEmail.Text = email;


            //Thêm title cho web
            Page.Title = "Trang cá nhân | " + Session["id"].ToString();
        }

        protected void lkbtnChinhsuathongtin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/EditProfile/EditProfile.aspx");
        }
    }
}
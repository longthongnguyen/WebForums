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

namespace WebForums
{
    public partial class MyProfile1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DULIEUNGUOIDUNG"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Timeout = 30; //Mỗi lần load trang thì gia hạn thời gian cho trạng thái đã đăng nhập

            //Nếu chưa đăng nhập hoặc User mà truy cập thì đưa về trang Login để xử lí lại
            if (Session["id"].ToString() == "True")
            {
                Response.Redirect("~/Pages/Login/Login.aspx");
                return;
            }

            if (Session["quyentam"] == "thanhvien")
            {
                Response.Redirect("~/Pages/Users/MyProfile/MyProfile.aspx");
                return;
            }
            try
            {

                //In ra Profile
                conn.Open();
                lblId.Text = Session["id"].ToString();
                string lenh = "select * from ADMIN where USERNAME = '" + Session["id"] + "'";
                SqlCommand cmd = new SqlCommand(lenh, conn);
                DbDataReader reader = cmd.ExecuteReader();
                reader.Read();

                string ten = reader.GetString(1);
                lblTen.Text = ten;
                Session["ten"] = ten;

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
                conn.Close();
                

                //Danh sách Users
                conn.Open();
                lenh = "select USERNAME as 'Tên đăng nhập', TEN as 'Họ và tên', GIOI_TINH as 'Giới tính' from USERS";
                SqlDataAdapter adapter = new SqlDataAdapter(lenh, conn);
                DataSet dataSet = new DataSet();
                adapter.Fill(dataSet);
                gvDanhsach.DataSource = dataSet;
                gvDanhsach.DataBind();
                conn.Close();

                //Danh sách admin
                conn.Open();
                lenh = "select USERNAME as 'Tên đăng nhập', TEN as 'Họ và tên', GIOI_TINH as 'Giới tính' from ADMIN";
                //lenh = "select USERNAME as 'Tên đăng nhập', TEN as 'Họ và tên', GIOI_TINH as 'Giới tính', NGHE_NGHIEP as 'Nghề nghiệp', EMAIL as 'Email' from ADMIN";
                adapter = new SqlDataAdapter(lenh, conn);
                dataSet = new DataSet();
                adapter.Fill(dataSet);
                gvDanhsachAdmin.DataSource = dataSet;
                gvDanhsachAdmin.DataBind();
                conn.Close();

                //Thêm title cho web
                Page.Title = ten + " | Trang cá nhân";

                ////Ảnh đại diện mặc đinh
                //lenh = "select ANH_DAI_DIEN as ' ' from ADMIN where '" + Session["id"];
                //adapter = new SqlDataAdapter(lenh, conn);
                //DataTable dataTable = new DataTable();
                //adapter.Fill(dataTable);
                //if(dataTable == null)
                //{
                //    lblAnhdaidien.Text = "Chưa ảnh đại diện";
                //}
                //else
                //{
                //    gvAnhdaidien.DataSource = dataTable;
                //    gvAnhdaidien.DataBind();
                //}
            }
            catch { }
        }
    }
}
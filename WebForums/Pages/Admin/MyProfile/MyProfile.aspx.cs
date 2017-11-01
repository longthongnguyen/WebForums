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
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DULIEUWEB"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            //Nếu chưa đăng nhập hoặc User mà truy cập thì đưa về trang Login để xử lí lại
            if (Session["id"].ToString() == "True")
            {
                Response.Redirect("~/Pages/Login/Login.aspx");
                return;
            }

            Session["trangthaicapnhat"] = "";
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
                LoadUsers();
                conn.Close();

                //Danh sách admin
                conn.Open();
                lenh = "select USERNAME as 'Tên đăng nhập', TEN as 'Họ và tên', GIOI_TINH as 'Giới tính' from ADMIN";
                //lenh = "select USERNAME as 'Tên đăng nhập', TEN as 'Họ và tên', GIOI_TINH as 'Giới tính', NGHE_NGHIEP as 'Nghề nghiệp', EMAIL as 'Email' from ADMIN";
                SqlDataAdapter adapter = new SqlDataAdapter(lenh, conn);
                adapter = new SqlDataAdapter(lenh, conn);
                DataSet dataSet = new DataSet();
                adapter.Fill(dataSet);
                gvDanhsachAdmin.DataSource = dataSet;
                gvDanhsachAdmin.DataBind();
                conn.Close();
                //Hiển thị ảnh đại diện
                conn.Open();
                try
                {
                    lenh = "Select ANH_DAI_DIEN from ADMIN where USERNAME = '" + Session["id"].ToString() + "'";
                    cmd = new SqlCommand(lenh, conn);
                    byte[] bytes = (byte[])cmd.ExecuteScalar();
                    string strBase64 = System.Convert.ToBase64String(bytes);
                    imgAnhdaidien.ImageUrl = "data:Image/png;base64," + strBase64;
                }
                catch { }
                conn.Close();

                //Thêm title cho web
                Page.Title = "Trang cá nhân | " + username;
                

            }
            catch { }
        }

        protected void lkbtnChinhsuathongtin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/EditProfile/EditProfile.aspx");
        }

        protected void gvDanhsach_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void gvDanhsach_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            conn.Open();
            string username = gvDanhsach.Rows[e.RowIndex].Cells[2].Text;
            string lenh = "delete from LOGIN " + " where USERNAME = '" + username + "'";
            SqlCommand cmd = new SqlCommand(lenh, conn);
            cmd.ExecuteNonQuery();
            LoadUsers();
        }
        private void LoadUsers()

        {
            string lenh = "select USERNAME as 'Tên đăng nhập', TEN as 'Họ và tên', GIOI_TINH as 'Giới tính' from USERS";
            SqlDataAdapter adapter = new SqlDataAdapter(lenh, conn);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet);
            gvDanhsach.DataSource = dataSet;
            gvDanhsach.DataBind();
        }

        protected void gvDanhsach_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
            Response.Redirect("~/Pages/EditProfile/EditMember");
        }

        protected void gvDanhsach_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            Session["bang"] = "USERS";
            if (e.CommandName == "Edit")
            {

                conn.Open();
                string username = e.CommandArgument.ToString();
                Session["viewusername"] = username;
                string lenh = "select * from USERS where USERNAME = '" + Session["viewusername"] + "'";
                SqlCommand cmd = new SqlCommand(lenh, conn);
                cmd = new SqlCommand(lenh, conn);
                DbDataReader reader = cmd.ExecuteReader();
                reader.Read();
                string ten = reader.GetString(1);
                Session["viewten"] = ten;
                
                string gioitinh = reader.GetString(2);
                Session["viewgioitinh"] = gioitinh;
                try
                {
                    string diachi = reader.GetString(3);
                    Session["viewdiachi"] = diachi;
                }
                catch { Session["viewdiachi"] = null; }

                try
                {
                    string ngaysinh = reader.GetString(4);
                    Session["viewngaysinh"] = ngaysinh;
                }
                catch { Session["viewngaysinh"] = null; }

                try
                {
                    string sodienthoai = reader.GetString(5);
                    Session["viewsodienthoai"] = sodienthoai;
                }
                catch { Session["viewsodienthoai"] = null; }

                try
                {
                    string nghenghiep = reader.GetString(6);
                    Session["viewnghenghiep"] = nghenghiep;
                }
                catch { Session["viewnghenghiep"] = null; }

                try
                {
                    string noilamviec = reader.GetString(7);
                    Session["viewnoilamviec"] = noilamviec;
                }
                catch { Session["viewnoilamviec"] = null; }

                string email = reader.GetString(10);
                Session["viewemail"] = email;
                conn.Close();

                conn.Open();
                lenh = "select * from LOGIN where USERNAME = '" + Session["viewusername"] + "'";
                SqlCommand cmd1 = new SqlCommand(lenh, conn);
                DbDataReader reader1 = cmd.ExecuteReader();
                reader1.Read();
                try
                {
                    string salt = reader1.GetString(2);
                    Session["viewsalt"] = salt;
                }
                catch { }
                conn.Close();

                Response.Redirect("~/Pages/Admin/ManageUsersProfile/View.aspx");
            }
        }

        protected void gvDanhsachAdmin_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["bang"] = "ADMIN";
            conn.Open();
            string username = e.CommandArgument.ToString();
            Session["viewusername"] = username;
            string lenh = "select * from ADMIN where USERNAME = '" + Session["viewusername"] + "'";
            SqlCommand cmd = new SqlCommand(lenh, conn);
            cmd = new SqlCommand(lenh, conn);
            DbDataReader reader = cmd.ExecuteReader();
            reader.Read();
            string ten = reader.GetString(1);
            Session["viewten"] = ten;

            string gioitinh = reader.GetString(2);
            Session["viewgioitinh"] = gioitinh;
            try
            {
                string diachi = reader.GetString(3);
                Session["viewdiachi"] = diachi;
            }
            catch { Session["viewdiachi"] = null; }

            try
            {
                string ngaysinh = reader.GetString(4);
                Session["viewngaysinh"] = ngaysinh;
            }
            catch { Session["viewngaysinh"] = null; }

            try
            {
                string sodienthoai = reader.GetString(5);
                Session["viewsodienthoai"] = sodienthoai;
            }
            catch { Session["viewsodienthoai"] = null; }

            try
            {
                string nghenghiep = reader.GetString(6);
                Session["viewnghenghiep"] = nghenghiep;
            }
            catch { Session["viewnghenghiep"] = null; }

            try
            {
                string noilamviec = reader.GetString(7);
                Session["viewnoilamviec"] = noilamviec;
            }
            catch { Session["viewnoilamviec"] = null; }

            string email = reader.GetString(10);
            Session["viewemail"] = email;
            Response.Redirect("~/Pages/Admin/ManageUsersProfile/View.aspx");
        }
    }
}
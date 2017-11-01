using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForums.Pages.Admin.ManageUsersProfile
{
    public partial class View : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DULIEUWEB"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["trangthaicapnhat"] = "";
            if (Session["id"].ToString() == "True" || Session["quyen"].ToString() != "quantri")
            {
                Response.Redirect("~/Home/Home.aspx");
            }
            //Thêm title cho web
            Page.Title = "Trang cá nhân | " + Session["viewusername"].ToString();

            lblUsername.Text = Session["viewusername"].ToString();
            lblTen.Text = Session["viewten"].ToString();
            lblGioitinh.Text = Session["viewgioitinh"].ToString();
            //Hiển thị ảnh đại diện
            conn.Open();
            try
            {
                string lenh = "Select ANH_DAI_DIEN from USERS where USERNAME = '" + Session["viewusername"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(lenh, conn);
                byte[] bytes = (byte[])cmd.ExecuteScalar();
                string strBase64 = System.Convert.ToBase64String(bytes);
                imgAnhdaidien.ImageUrl = "data:Image/png;base64," + strBase64;
            }
            catch
            {
                try
                {
                    string lenh = "Select ANH_DAI_DIEN from ADMIN where USERNAME = '" + Session["viewusername"].ToString() + "'";
                    SqlCommand cmd = new SqlCommand(lenh, conn);
                    byte[] bytes = (byte[])cmd.ExecuteScalar();
                    string strBase64 = System.Convert.ToBase64String(bytes);
                    imgAnhdaidien.ImageUrl = "data:Image/png;base64," + strBase64;
                }
                catch { }
            }
            conn.Close();

            try
            {
                lblNghenghiep.Text = Session["viewnghenghiep"].ToString();
            }
            catch { Session["viewnghenghiep"] = null; }


            try
            {
                lblNgaysinh.Text = Session["viewngaysinh"].ToString();
            }
            catch { Session["viewngaysinh"] = null; }

            lblEmail.Text = Session["viewemail"].ToString();


            try
            {
                lblSodienthoai.Text = Session["viewsodienthoai"].ToString();
            }
            catch { Session["viewsodienthoai"] = null; }


            try
            {
                lblDiachi.Text = Session["viewdiachi"].ToString();
            }
            catch { Session["viewdiachi"] = null; }



            try
            {
                lblNoilamviec.Text = Session["viewnoilamviec"].ToString();
            }
            catch { Session["viewnoilamviec"] = null; }


            lblQuyen.Text = "(Thành viên)";
            if (Session["bang"].ToString() == "ADMIN")
            {
                lkbtnChinhsuathongtin.Visible = false;
                lblQuyen.Text = "(Quản trị viên)";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/EditProfile/EditMember.aspx");
        }
    }
}
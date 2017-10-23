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

namespace WebForums
{
    public partial class FormDefault : System.Web.UI.MasterPage
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DULIEUNGUOIDUNG"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Timeout = 60; //Mỗi lần load trang thì gia hạn thời gian cho trạng thái đã đăng nhập
            try
            {
                lkbtnTrangcanhan.Text = Session["ten"].ToString();
                lkbtnTruycapquyen.Text = "Truy cập trang dành cho thành viên";
            }
            catch
            {
                lkbtnTrangcanhan.Text = null;
                lkbtnTruycapquyen.Text = "";
                lblXinchao.Text = null;
                lkbtnDangxuat.Text = "Đăng nhập";
            }

            try
            {
                if (Session["quyentam"] == "thanhvien" && Session["quyen"] == "quantri")
                {
                    lkbtnTruycapquyen.Text = "Truy cập trang dành cho quản trị viên";
                }
            }
            catch { }
            if(Session["quyen"] == "thanhvien")
            {
                lkbtnTruycapquyen.Text = "";
            }
        }

        protected void lkbtnTrangchu_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Home/Home.aspx");
        }

        protected void lkbtnDangxuat_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Pages/Login/Login.aspx");
        }

        protected void lkbtnTruycapquyen_Click(object sender, EventArgs e)
        {
            if (lkbtnTruycapquyen.Text == "Truy cập trang dành cho quản trị viên" && Session["quyen"] == "quantri")
            {
                Session["quyentam"] = "quantri";
                Response.Redirect("~/Pages/Home/Home.aspx");
                lkbtnTruycapquyen.Text = "Truy cập trang dành cho thành viên";
            }
            else
            {
                Session["quyentam"] = "thanhvien";
                Response.Redirect("~/Pages/Home/Home.aspx");
            }
        }

        protected void lkbtnTrangcanhan_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Admin/MyProfile/MyProfile.aspx");
        }
    }
}
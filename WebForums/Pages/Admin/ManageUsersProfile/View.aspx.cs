using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForums.Pages.Admin.ManageUsersProfile
{
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsername.Text = Session["viewusername"].ToString();
            lblTen.Text = Session["viewten"].ToString();
            lblGioitinh.Text = Session["viewgioitinh"].ToString();

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
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
using System.Globalization;

namespace WebForums.Pages.EditProfile
{
    public partial class EditMember : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DULIEUNGUOIDUNG"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsername.Text = Session["viewusername"].ToString();
            lblTen.Text = Session["viewten"].ToString();
            try
            {
                lblTen.Text = Session["viewten"].ToString();
            }
            catch { lblTen.Text = "Chưa có thông tin"; }


            
            try
            {
                lblDiachi.Text = Session["viewdiachi"].ToString();
            }
            catch { lblDiachi.Text = "Chưa có thông tin"; }



            
            try
            {
                lblNgaysinh.Text = Session["viewngaysinh"].ToString();
            }
            catch { lblNgaysinh.Text = "Chưa có thông tin"; }



            try
            {
                lblSodienthoai.Text = Session["viewsodienthoai"].ToString();
            }
            catch { lblSodienthoai.Text = "Chưa có thông tin"; }



            try
            {
                lblNghenghiep.Text = Session["viewnghenghiep"].ToString();
            }
            catch { lblNghenghiep.Text = "Chưa có thông tin"; }



            try
            {
                lblNoilamviec.Text = Session["viewnoilamviec"].ToString();
            }
            catch { lblNoilamviec.Text = "Chưa có thông tin"; }




            try
            {
                lblEmail.Text = Session["viewemail"].ToString();
            }
            catch { lblEmail.Text = "Chưa có thông tin"; }

            try
            {
                lblGioitinh.Text = Session["viewgioitinh"].ToString();
            }
            catch { lblGioitinh.Text = "Chưa có thông tin"; }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            string lenh = null;
            if (txtHovaten.Text != "")
            {
                lenh = "update USERS set TEN = N'" + txtHovaten.Text + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                Session["viewten"] = txtHovaten.Text;

                SqlCommand cmd = new SqlCommand(lenh, conn);
                cmd.ExecuteNonQuery();
            }


            if (drdGioitinh.SelectedItem.ToString() != "")
            {
                lenh = "update USERS set GIOI_TINH = N'" + drdGioitinh.SelectedItem.ToString() + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                Session["gioitinh"] = drdGioitinh.SelectedItem.ToString();
                SqlCommand cmd6 = new SqlCommand(lenh, conn);
                cmd6.ExecuteNonQuery();
            }

            if (txtNghenghiep.Text != "")
            {
                lenh = "update USERS set NGHE_NGHIEP = N'" + txtNghenghiep.Text + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                Session["nghenghiep"] = txtNghenghiep.Text;
                SqlCommand cmd2 = new SqlCommand(lenh, conn);
                cmd2.ExecuteNonQuery();
            }
            if (txtSodienthoai.Text != "")
            {
                lenh = "update USERS set SO_DIEN_THOAI = '" + txtSodienthoai.Text + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                Session["sodienthoai"] = txtSodienthoai.Text;
                SqlCommand cmd3 = new SqlCommand(lenh, conn);
                cmd3.ExecuteNonQuery();
            }
            if (txtDiachi.Text != "")
            {
                lenh = "update USERS set DIA_CHI = N'" + txtDiachi.Text + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                Session["diachi"] = txtDiachi.Text;
                SqlCommand cmd4 = new SqlCommand(lenh, conn);
                cmd4.ExecuteNonQuery();
            }
            if (txtNoilamviec.Text != "")
            {
                lenh = "update USERS set NOI_LAM_VIEC = N'" + txtNoilamviec.Text + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                Session["noilamviec"] = txtNoilamviec.Text;
                SqlCommand cmd5 = new SqlCommand(lenh, conn);
                cmd5.ExecuteNonQuery();
            }


            lblLoi.Text = "";
            //Cập nhật ngày tháng
            if (txtNam.Text == "" && drdNgay.SelectedItem.ToString() == "" && drdThang.SelectedItem.ToString() == "")
            {
                lblLoi.Text = "Hoàn tất, mọi thông tin không thay đổi";
                btnLuuthaydoi.Focus();
                //Response.Redirect("~/Pages/Admin/MyProfile/MyProfile.aspx");
            }
            else
            {
                try
                {

                    if (drdNgay.SelectedItem.ToString() != "" || drdThang.SelectedItem.ToString() != "" || txtNam.Text != "")
                    {
                        int flag = 0;
                        if (drdNgay.SelectedItem.ToString() == "" || drdThang.SelectedItem.ToString() == "" || txtNam.Text == "")
                        {
                            
                            flag = 1;
                        }
                        string kt = txtNam.Text;
                        Convert.ToInt32(kt);
                        string ngay = drdNgay.SelectedItem.Value.ToString();
                        string thang = drdThang.SelectedItem.Value.ToString();
                        string nam = txtNam.Text;
                        string dt = ngay + "/" + thang + "/" + nam;
                        lenh = "update USERS set NGAY_SINH = '" + dt + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                        if (flag == 1)
                            lenh = null;
                        Session["ngaysinh"] = dt;
                        SqlCommand cmd7 = new SqlCommand(lenh, conn);
                        cmd7.ExecuteNonQuery();
                        //Response.Redirect("~/Pages/Admin/MyProfile/MyProfile.aspx");
                    }
                }
                catch
                {

                    lblLoi.Text = "Vui lòng nhập đầy đủ ngày tháng năm";
                }
                btnLuuthaydoi.Focus();
            }
            if (lblLoi.Text == "")
                lblLoi.Text = "Cập nhật thông tin thành công";
            conn.Close();
        }

        protected void btnHuybo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Admin/MyProfile/MyProfile.aspx");
        }
    }
}
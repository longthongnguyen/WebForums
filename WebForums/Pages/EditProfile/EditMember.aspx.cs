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
            if (Session["id"].ToString() == "True" || Session["quyen"].ToString() != "quantri")
            {
                Response.Redirect("~/Home/Home.aspx");
            }
            //Thêm title cho web
            Page.Title = "Sửa thông tin thành viên | " + Session["viewusername"].ToString();

            lblUsername.Text = Session["viewusername"].ToString();
            lblTen.Text = Session["viewten"].ToString();
            try
            {
                lblTrangthaicapnhat.Text = Session["trangthaicapnhat"].ToString();
            }
            catch { }

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
            if (txtDiachi.Text == "" && txtEmail.Text == "" && txtHovaten.Text == "" && txtNam.Text == "" && txtNghenghiep.Text == "" && txtNoilamviec.Text == "" && txtSodienthoai.Text == "" && txtDiachi.Text == "" && drdNgay.SelectedItem.ToString() == "" && drdThang.SelectedItem.ToString() == "" && txtNam.Text == "" && drdGioitinh.SelectedItem.ToString() == "" && txtNewpass.Text == "" && txtRenewpass.Text == "")
            {
                Session["trangthaicapnhat"] = "Thông tin không thay đổi";
                Response.Redirect("~/Pages/EditProfile/EditMember.aspx");
            }
            int flag = 0;
            //Đổi mật khẩu
            if (txtNewpass.Text != "" || txtRenewpass.Text != "")
            {
                if (txtNewpass.Text.Length < 5)
                {
                    lblLoi.Text = "Mật khẩu phải có ít nhất 5 kí tự";
                    btnHuybo.Focus();
                    lblTrangthaicapnhat.Text = "";
                    flag = 1;
                }
                else
                {
                    if (txtNewpass.Text == txtRenewpass.Text)
                    {
                        lenh = "update LOGIN set PASSWORD = N'" + txtRenewpass.Text + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                        SqlCommand cmd10 = new SqlCommand(lenh, conn);
                        cmd10.ExecuteNonQuery();
                    }
                    else
                    {
                        lblLoi.Text = "Mật khẩu xác nhận chưa đúng";
                        flag = 1;
                        btnHuybo.Focus();
                        lblTrangthaicapnhat.Text = "";
                    }
                }
            }

            if (txtHovaten.Text != "" && flag == 0)
            {
                lenh = "update USERS set TEN = N'" + txtHovaten.Text + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                Session["viewten"] = txtHovaten.Text;

                SqlCommand cmd = new SqlCommand(lenh, conn);
                cmd.ExecuteNonQuery();
            }


            if (drdGioitinh.SelectedItem.ToString() != "" && flag == 0)
            {
                lenh = "update USERS set GIOI_TINH = N'" + drdGioitinh.SelectedItem.ToString() + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                Session["viewgioitinh"] = drdGioitinh.SelectedItem.ToString();
                SqlCommand cmd6 = new SqlCommand(lenh, conn);
                cmd6.ExecuteNonQuery();
            }

            if (txtNghenghiep.Text != "" && flag == 0)
            {
                lenh = "update USERS set NGHE_NGHIEP = N'" + txtNghenghiep.Text + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                Session["viewnghenghiep"] = txtNghenghiep.Text;
                SqlCommand cmd2 = new SqlCommand(lenh, conn);
                cmd2.ExecuteNonQuery();
            }
            if (txtSodienthoai.Text != "" && flag == 0)
            {
                lenh = "update USERS set SO_DIEN_THOAI = '" + txtSodienthoai.Text + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                Session["viewsodienthoai"] = txtSodienthoai.Text;
                SqlCommand cmd3 = new SqlCommand(lenh, conn);
                cmd3.ExecuteNonQuery();
            }
            if (txtDiachi.Text != "" && flag == 0)
            {
                lenh = "update USERS set DIA_CHI = N'" + txtDiachi.Text + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                Session["viewdiachi"] = txtDiachi.Text;
                SqlCommand cmd4 = new SqlCommand(lenh, conn);
                cmd4.ExecuteNonQuery();
            }
            if (txtNoilamviec.Text != "" && flag == 0)
            {
                lenh = "update USERS set NOI_LAM_VIEC = N'" + txtNoilamviec.Text + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                Session["viewnoilamviec"] = txtNoilamviec.Text;
                SqlCommand cmd5 = new SqlCommand(lenh, conn);
                cmd5.ExecuteNonQuery();
            }
            if (txtEmail.Text != "" && flag == 0)
            {
                lenh = "update USERS set EMAIL = N'" + txtEmail.Text + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                Session["viewemail"] = txtEmail.Text;
                SqlCommand cmd8 = new SqlCommand(lenh, conn);
                cmd8.ExecuteNonQuery();
            }
            
            //Cập nhật ngày tháng
            if (txtNam.Text == "" && drdNgay.SelectedItem.ToString() == "" && drdThang.SelectedItem.ToString() == "" && flag == 0)
            {

                Session["trangthaicapnhat"] = "Cập nhật thành công";
                Response.Redirect("~/Pages/EditProfile/EditMember.aspx");
            }
            else
            {
                if (flag == 0)
                {
                    try
                    {

                        if (drdNgay.SelectedItem.ToString() != "" || drdThang.SelectedItem.ToString() != "" || txtNam.Text != "")
                        {
                            if (drdNgay.SelectedItem.ToString() == "" || drdThang.SelectedItem.ToString() == "" || txtNam.Text == "")
                            {

                                lblLoi.Text = "Vui lòng nhập đầy đủ ngày tháng năm";
                                lblTrangthaicapnhat.Text = "";
                                btnLuuthaydoi.Focus();
                            }
                            else
                            {
                                string kt = txtNam.Text;
                                Convert.ToInt32(kt);
                                string ngay = drdNgay.SelectedItem.Value.ToString();
                                string thang = drdThang.SelectedItem.Value.ToString();
                                string nam = txtNam.Text;
                                string dt = ngay + "/" + thang + "/" + nam;
                                lenh = "update USERS set NGAY_SINH = '" + dt + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
                                Session["ngaysinh"] = dt;
                                SqlCommand cmd7 = new SqlCommand(lenh, conn);
                                cmd7.ExecuteNonQuery();
                                Session["trangthaicapnhat"] = "Cập nhật thành công";
                                Response.Redirect("~/Pages/EditProfile/EditMember.aspx");
                            }
                        }
                    }
                    catch
                    {

                        lblLoi.Text = "Vui lòng nhập đúng năm";
                        lblTrangthaicapnhat.Text = "";
                        btnLuuthaydoi.Focus();
                    }
                }
                btnLuuthaydoi.Focus();
            }
            conn.Close();
        }

        protected void btnHuybo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Admin/MyProfile/MyProfile.aspx");
        }
    }
}
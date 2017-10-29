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
using WebForums.HashSalt;

namespace WebForums.Pages.EditProfile
{
    public partial class EditProfile : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DULIEUNGUOIDUNG"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["id"].ToString() == "True")
            {
                Response.Redirect("~/Home/Home.aspx");
            }

            try
            {
                lblTrangthaicapnhat.Text = Session["trangthaicapnhat"].ToString();
            }
            catch { }

            lblUsername.Text = Session["id"].ToString();
            lblTen.Text = Session["ten"].ToString();

            try
            {
                lblDiachi.Text = Session["diachi"].ToString();
            }
            catch { lblDiachi.Text = "Chưa có thông tin"; }




            try
            {
                lblNgaysinh.Text = Session["ngaysinh"].ToString();
            }
            catch { lblNgaysinh.Text = "Chưa có thông tin"; }



            try
            {
                lblSodienthoai.Text = Session["sodienthoai"].ToString();
            }
            catch { lblSodienthoai.Text = "Chưa có thông tin"; }



            try
            {
                lblNghenghiep.Text = Session["nghenghiep"].ToString();
            }
            catch { lblNghenghiep.Text = "Chưa có thông tin"; }



            try
            {
                lblNoilamviec.Text = Session["noilamviec"].ToString();
            }
            catch { lblNoilamviec.Text = "Chưa có thông tin"; }




            try
            {
                lblEmail.Text = Session["email"].ToString();
            }
            catch { lblEmail.Text = "Chưa có thông tin"; }

            try
            {
                lblGioitinh.Text = Session["gioitinh"].ToString();
            }
            catch { lblGioitinh.Text = "Chưa có thông tin"; }
            //Thêm title cho web
            try
            {
                Page.Title = "Sửa thông tin cá nhân | " + Session["id"].ToString();
            }
            catch { }


            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLuuthaydoi_Click(object sender, EventArgs e)
        {
           
            
        }

        protected void btnLuuthaydoi_Click1(object sender, EventArgs e)
        {
            if(!IsValid)
            {
                
            }
            conn.Open();
            string tenbang, lenh = null;
            if (Session["quyen"].ToString() == "quantri")
            {
                tenbang = "ADMIN";
            }
            else
            {
                tenbang = "USERS";
            }

            if (txtDiachi.Text == "" && txtEmail.Text == "" && txtHovaten.Text == "" && txtNam.Text == "" && txtNghenghiep.Text == "" && txtNoilamviec.Text == "" && txtSodienthoai.Text == "" && txtDiachi.Text == "" && drdNgay.SelectedItem.ToString() == "" && drdThang.SelectedItem.ToString() == "" && txtNam.Text == "" && drdGioitinh.SelectedValue.ToString() == "" && txtOldpass.Text == "" && txtNewpass.Text == "" && txtRenewpass.Text == "")
            {
                Session["trangthaicapnhat"] = "Thông tin không thay đổi";
                Response.Redirect("~/Pages/EditProfile/EditProfile.aspx");
            }

            //Đổi mật khẩu
            string salt, pwhashed;
            pwhashed = Hash.GenerateSHA256Hash(txtOldpass.Text, Session["salt"].ToString());
            lenh = "select count(*) from LOGIN where USERNAME ='" + Session["id"].ToString() + "'and PASSWORD ='" + pwhashed + "' ";
            SqlCommand cmd = new SqlCommand(lenh, conn);
            string output = cmd.ExecuteScalar().ToString();
            int flag = 0;
            if (txtOldpass.Text != "" || txtNewpass.Text != "" || txtRenewpass.Text != "")
            {
                if (output == "1")
                {
                    lblLoioldpass.Text = "";
                    if (txtNewpass.Text.Length < 5)
                    {
                        lblLoi.Text = "Vui lòng nhập mật khẩu mới";
                        btnLuuthaydoi.Focus();
                        lblTrangthaicapnhat.Text = "";
                        flag = 1;
                    }
                    else
                    {
                        if (txtNewpass.Text == txtRenewpass.Text)
                        {
                            salt = Hash.CreateSalt();
                            Session["salt"] = salt;
                            pwhashed = Hash.GenerateSHA256Hash(txtRenewpass.Text, salt);
                            lenh = "update LOGIN set PASSWORD = N'" + pwhashed + "', SALT = '" + salt + "' where USERNAME = '" + Session["id"].ToString() + "'";
                            SqlCommand cmd10 = new SqlCommand(lenh, conn);
                            cmd10.ExecuteNonQuery();
                        }
                        else
                        {
                            lblLoi.Text = "Mật khẩu xác nhận không được để trống";
                            flag = 1;
                            btnLuuthaydoi.Focus();
                            lblTrangthaicapnhat.Text = "";
                        }
                    }
                }

                else
                {
                    lblLoioldpass.Text = "Bạn nhập sai mật khẩu hiện tại";
                    lblLoi.Text = "";
                    flag = 1;
                    btnLuuthaydoi.Focus();
                    lblTrangthaicapnhat.Text = "";
                }
            }


            
            if (txtHovaten.Text != "" && flag == 0)
            {
                lenh = "update " + tenbang + " set TEN = N'" + txtHovaten.Text + "' where USERNAME = '" + Session["id"].ToString() + "'";
                Session["ten"] = txtHovaten.Text;

                SqlCommand cmd9 = new SqlCommand(lenh, conn);
                cmd9.ExecuteNonQuery();
            }


            if (drdGioitinh.SelectedItem.ToString() != "" && flag == 0)
            {
                lenh = "update " + tenbang + " set GIOI_TINH = N'" + drdGioitinh.SelectedItem.ToString() + "' where USERNAME = '" + Session["id"].ToString() + "'";
                Session["gioitinh"] = drdGioitinh.SelectedItem.ToString();
                SqlCommand cmd6 = new SqlCommand(lenh, conn);
                cmd6.ExecuteNonQuery();
            }

            if (txtNghenghiep.Text != "" && flag == 0)
            {
                lenh = "update " + tenbang + " set NGHE_NGHIEP = N'" + txtNghenghiep.Text + "' where USERNAME = '" + Session["id"].ToString() + "'";
                Session["nghenghiep"] = txtNghenghiep.Text;
                SqlCommand cmd2 = new SqlCommand(lenh, conn);
                cmd2.ExecuteNonQuery();
            }
            if (txtSodienthoai.Text != "" && flag == 0)
            {
                lenh = "update " + tenbang + " set SO_DIEN_THOAI = '" + txtSodienthoai.Text + "' where USERNAME = '" + Session["id"].ToString() + "'";
                Session["sodienthoai"] = txtSodienthoai.Text;
                SqlCommand cmd3 = new SqlCommand(lenh, conn);
                cmd3.ExecuteNonQuery();
            }
            if (txtDiachi.Text != "" && flag == 0)
            {
                lenh = "update " + tenbang + " set DIA_CHI = N'" + txtDiachi.Text + "' where USERNAME = '" + Session["id"].ToString() + "'";
                Session["diachi"] = txtDiachi.Text;
                SqlCommand cmd4 = new SqlCommand(lenh, conn);
                cmd4.ExecuteNonQuery();
            }
            if (txtNoilamviec.Text != "" && flag == 0)
            {
                lenh = "update " + tenbang + " set NOI_LAM_VIEC = N'" + txtNoilamviec.Text + "' where USERNAME = '" + Session["id"].ToString() + "'";
                Session["noilamviec"] = txtNoilamviec.Text;
                SqlCommand cmd5 = new SqlCommand(lenh, conn);
                cmd5.ExecuteNonQuery();
            }
            if (txtEmail.Text != "" && flag == 0)
            {
                lenh = "update " + tenbang + " set EMAIL = N'" + txtEmail.Text + "' where USERNAME = '" + Session["id"].ToString() + "'";
                Session["email"] = txtEmail.Text;
                SqlCommand cmd8 = new SqlCommand(lenh, conn);
                cmd8.ExecuteNonQuery();
            }


            //Cập nhật ngày tháng
            if (flag == 0 && txtNam.Text == "" && drdNgay.SelectedValue.ToString() == "" && drdThang.SelectedValue.ToString() == "")
            {
                Session["trangthaicapnhat"] = "Cập nhật thành công";
                Response.Redirect("~/Pages/EditProfile/EditProfile.aspx");
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
                                lblLoingaysinh.Text = "Vui lòng nhập đầy đủ ngày tháng năm";
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
                                lenh = "update " + tenbang + " set NGAY_SINH = '" + dt + "' where USERNAME = '" + Session["id"].ToString() + "'";
                                Session["ngaysinh"] = dt;
                                SqlCommand cmd7 = new SqlCommand(lenh, conn);
                                cmd7.ExecuteNonQuery();
                                Session["trangthaicapnhat"] = "Cập nhật thành công";
                                Response.Redirect("~/Pages/EditProfile/EditProfile.aspx");
                            }
                        }
                    }
                    catch
                    {

                    //    lblLoi.Text = "Vui lòng nhập đúng năm";
                    //    lblTrangthaicapnhat.Text = "";
                    //    btnLuuthaydoi.Focus();
                    }
                }
            }
            conn.Close();
        }

        protected void btnHuybo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Admin/MyProfile/MyProfile.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
        
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
        }
    }
}
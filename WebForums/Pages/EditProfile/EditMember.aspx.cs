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
using System.IO;

namespace WebForums.Pages.EditProfile
{
    public partial class EditMember : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DULIEUWEB"].ToString());
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
            catch { }
            conn.Close();
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
            if(!IsValid)
            { }
            conn.Open();
            string lenh = null;
            //Lấy thông tin từ ảnh được chọn
            HttpPostedFile postedFile = uploadAndaidien.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;

            if (txtDiachi.Text == "" && txtEmail.Text == "" && txtHovaten.Text == "" && txtNam.Text == "" && txtNghenghiep.Text == "" && txtNoilamviec.Text == "" && txtSodienthoai.Text == "" && txtDiachi.Text == "" && drdNgay.SelectedItem.ToString() == "" && drdThang.SelectedItem.ToString() == "" && txtNam.Text == "" && drdGioitinh.SelectedItem.ToString() == "" && txtNewpass.Text == "" && txtRenewpass.Text == "" && fileExtension.ToLower() != ".jpg" && fileExtension.ToLower() != ".gif"
                && fileExtension.ToLower() != ".png" && fileExtension.ToLower() != ".bmp")
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
                    btnLuuthaydoi.Focus();
                    lblTrangthaicapnhat.Text = "";
                    flag = 1;
                }
                else
                {
                    if (txtNewpass.Text == txtRenewpass.Text)
                    {
                        string salt = Hash.CreateSalt();
                        Session["viewsalt"] = salt;
                        string pwhashed = Hash.GenerateSHA256Hash(txtRenewpass.Text, salt);
                        lenh = "update LOGIN set PASSWORD = N'" + pwhashed + "', SALT = '" + salt + "' where USERNAME = '" + Session["viewusername"].ToString() + "'";
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
            conn.Close();
            //Cập nhật ảnh
            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);

                lenh = "update USERS set ANH_DAI_DIEN = @ImageData, SIZE_ANH = @Size where USERNAME = '" + Session["viewusername"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(lenh, conn);

                SqlParameter paramSize = new SqlParameter()
                {
                    ParameterName = "@Size",
                    Value = fileSize
                };
                cmd.Parameters.Add(paramSize);

                SqlParameter paramImageData = new SqlParameter()
                {
                    ParameterName = "@ImageData",
                    Value = bytes
                };
                cmd.Parameters.Add(paramImageData);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            conn.Open();

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
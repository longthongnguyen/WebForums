﻿using System;
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
    public partial class EditProfile : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DULIEUNGUOIDUNG"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsername.Text = Session["id"].ToString();
            //Thêm title cho web
            try
            {
                Page.Title = Session["ten"].ToString() + " | Chỉnh sửa thông tin";
            }
            catch { }


            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLuuthaydoi_Click(object sender, EventArgs e)
        {
            conn.Open();
            string tenbang, lenh = null;
            if(Session["quyen"].ToString() == "quantri")
            {
                tenbang = "ADMIN";
            }
            else
            {
                tenbang = "USERS";
            }

            if (txtHovaten.Text != "")
            {
                lenh = "update " + tenbang + " set TEN = N'" + txtHovaten.Text + "' where USERNAME = '" + Session["id"].ToString() + "'";
                Session["ten"] = txtHovaten.Text;

                SqlCommand cmd = new SqlCommand(lenh, conn);
                cmd.ExecuteNonQuery();
            }

            //if (txtNgaysinh.Text != "")
            //{
            //    lenh = "update " + tenbang + " set NGAY_SINH = '" + "@ngaysinh" + "' where USERNAME = '" + Session["id"].ToString() + "'";
            //    Session["ngaysinh"] = txtNgaysinh.Text;
            //    string dt = txtNgaysinh.Text;
            //    DateTime.ParseExact(dt, "dd/mm/yyyy",CultureInfo.InvariantCulture);
            //    SqlCommand cmd1 = new SqlCommand(lenh, conn);
            //    cmd1.Parameters.AddWithValue("@ngaysinh", dt);
            //    cmd1.ExecuteNonQuery();
            //}
            
            lenh = "update " + tenbang + " set GIOI_TINH = N'" + drdGioitinh.SelectedItem.ToString() + "' where USERNAME = '" + Session["id"].ToString() + "'";
            Session["gioitinh"] = drdGioitinh.SelectedItem.ToString();
            SqlCommand cmd6 = new SqlCommand(lenh, conn);
            cmd6.ExecuteNonQuery();

            if (txtNghenghiep.Text != "")
            {
                lenh = "update " + tenbang + " set NGHE_NGHIEP = N'" + txtNghenghiep.Text + "' where USERNAME = '" + Session["id"].ToString() + "'";
                Session["nghenghiep"] = txtNghenghiep.Text;
                SqlCommand cmd2 = new SqlCommand(lenh, conn);
                cmd2.ExecuteNonQuery();
            }
            if (txtSodienthoai.Text != "")
            {
                lenh = "update " + tenbang + " set SO_DIEN_THOAI = '" + txtSodienthoai.Text + "' where USERNAME = '" + Session["id"].ToString() + "'";
                Session["sodienthoai"] = txtSodienthoai.Text;
                SqlCommand cmd3 = new SqlCommand(lenh, conn);
                cmd3.ExecuteNonQuery();
            }
            if (txtDiachi.Text != "")
            {
                lenh = "update " + tenbang + " set DIA_CHI = N'" + txtDiachi.Text + "' where USERNAME = '" + Session["id"].ToString() + "'";
                Session["diachi"] = txtDiachi.Text;
                SqlCommand cmd4 = new SqlCommand(lenh, conn);
                cmd4.ExecuteNonQuery();
            }
            if (txtNoilamviec.Text != "")
            {
                lenh = "update " + tenbang + " set NOI_LAM_VIEC = N'" + txtNoilamviec.Text + "' where USERNAME = '" + Session["id"].ToString() + "'";
                Session["noilamviec"] = txtNoilamviec.Text;
                SqlCommand cmd5 = new SqlCommand(lenh, conn);
                cmd5.ExecuteNonQuery();
            }

            //string dt = txtNgaysinh.Text;

            //lenh = "update " + tenbang + " set " + "TEN = N'" + txtHovaten.Text +/* "', NGAY_SINH = '"
            //    + Convert.ToDateTime(txtNgaysinh.Text).ToLongDateString() + */"', GIOI_TINH = N'" + drdGioitinh.SelectedItem.ToString() + "', NGHE_NGHIEP = N'"
            //    + txtNghenghiep.Text + "', SO_DIEN_THOAI = N'" + txtSodienthoai.Text + "', DIA_CHI = N'"
            //    + txtDiachi.Text + "', NOI_LAM_VIEC =N'" + txtNoilamviec.Text + "' where USERNAME = '"
            //    + Session["id"].ToString() + "'";
            //SqlCommand cmd = new SqlCommand(lenh, conn);
            //cmd.ExecuteNonQuery();
            conn.Close();

            
            Response.Redirect("~/Pages/Admin/MyProfile/MyProfile.aspx");
        }
    }
}
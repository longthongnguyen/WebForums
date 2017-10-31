using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Web.Services;
using System.Configuration;
using System.Data.Common;
using System.Web.UI.HtmlControls;
using System.Globalization;
using WebForums.HashSalt;

namespace WebForums.Pages.Register
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Thêm title cho web
            Page.Title = "Đăng ký | Forums";
        }
        protected void btdki_Click(object sender, EventArgs e)
        {
            string lenh;
            if (Page.IsValid)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DULIEUWEB"].ToString());
                conn.Open();
                //Đưa dữ liệu vào bảng LOGIN
                string salt = Hash.CreateSalt();
                string pwhashed = Hash.GenerateSHA256Hash(tbrepass.Text, salt);
                lenh = "insert into LOGIN (PASSWORD, SALT, USERNAME) values(N'" + pwhashed + "',N'" + salt + "',N'" + tbuser.Text + "')";
                SqlCommand cmd = new SqlCommand(lenh, conn);
                cmd.ExecuteNonQuery();

                //Đưa dữ liệu vào bảng USERS
                string insert1 = "insert into USERS (TEN,GIOI_TINH,USERNAME,EMAIL) values(@ten,@gioitinh,@username,@email)";
                SqlCommand com = new SqlCommand(insert1, conn);
                com.Parameters.AddWithValue("@ten", tbten.Text);
                com.Parameters.AddWithValue("@gioitinh", DropDownList1.SelectedItem.ToString());
                com.Parameters.AddWithValue("@username", tbuser.Text);
                com.Parameters.AddWithValue("@email", tbemail.Text);
                com.ExecuteNonQuery();
                conn.Close();
                lblDangkythanhcong.Text = "Đăng ký thành công";
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DULIEUWEB"].ToString());
            con.Open();
            string checkuser = "select count(*) from LOGIN where USERNAME = '" + tbuser.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, con);
            int tmp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (tmp == 1)
            {
                args.IsValid = false;
            }
            con.Close();
        }
        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = this.recaptcha.IsValid;
        }
    }
}
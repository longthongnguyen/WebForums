using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForums.Post
{
    public partial class Post : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DULIEUWEB"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            //Thêm title cho web
            Page.Title = "Nhóm 7 - An toàn mạng máy tính";
            if (!IsPostBack)
            {
                conn.Open();
                string lenh = "select * from POST";
                //lenh = "select USERNAME as 'Tên đăng nhập', TEN as 'Họ và tên', GIOI_TINH as 'Giới tính', NGHE_NGHIEP as 'Nghề nghiệp', EMAIL as 'Email' from ADMIN";
                SqlDataAdapter adapter = new SqlDataAdapter(lenh, conn);
                adapter = new SqlDataAdapter(lenh, conn);
                DataSet dataSet = new DataSet();
                adapter.Fill(dataSet);
                DataList1.DataSource = dataSet;
                DataList1.DataBind();
                conn.Close();

                if(Session["id"].ToString() == "True")
                {
                    txtBinhluan.Visible = false;
                    btnBinhluan.Visible = false;
                    lblVietmotbinhkuan.Visible = false;
                }
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnBinhluan_Click(object sender, EventArgs e)
        {
            if (txtBinhluan.Text == "")
            {
                //lblLoi.Text = "Bình luận phải có ít nhất 5 kí tự";
            }
            else
            {
                conn.Open();
                string lenh = "insert into POST (BINH_LUAN, NGUOI_DANG, THOI_GIAN_DANG) values (N'"
                    + txtBinhluan.Text + "', N'" + Session["id"].ToString()
                    + "', N'" + DateTime.Now.ToLongDateString() + " - " + DateTime.Now.ToLongTimeString() + "')";
                SqlCommand cmd = new SqlCommand(lenh, conn);
                cmd.ExecuteNonQuery();
                Response.Redirect("~/Post/Post.aspx");
            }
        }
    }
}
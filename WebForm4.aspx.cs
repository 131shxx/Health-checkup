using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網二_期中作業
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["Account"] = TextBox1.Text;//將使用者帳號記錄在session中
            //DateTime now = DateTime.Now;//宣告now變數(現在時間)
            //Session["time"] = now.ToString();//將使用者登入時間記錄在session中
            if (!Page.IsPostBack)
            {
                if (Session["Account"] != null)
                {
                    string ID = Session["Account"].ToString();
                    if (Request.Cookies[ID] != null)//if cookie有東西
                    {
                        //把資料顯示讀出來在TextBox
                        TextBox1.Text = Server.UrlDecode(Request.Cookies[ID]["name"]);
                        TextBox2.Text = Server.UrlDecode(Request.Cookies[ID]["id"]);
                        TextBox3.Text = Server.UrlDecode(Request.Cookies[ID]["HBD"]);
                        TextBox4.Text = Server.UrlDecode(Request.Cookies[ID]["bloodtype"]);
                        TextBox5.Text = Server.UrlDecode(Request.Cookies[ID]["phone"]);
                        TextBox6.Text = Server.UrlDecode(Request.Cookies[ID]["email"]);
                    }
                }
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)//清除
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)//確定
        {
            
            //Response.Redirect("WebForm2.aspx");
            Server.Transfer("WebForm2.aspx", true);
        }

        protected void Button3_Click(object sender, EventArgs e)//存取資料
        {
            Session["Account"] = TextBox1.Text;//將使用者帳號記錄在session中
            DateTime now = DateTime.Now;//宣告now變數(現在時間)
            Session["time"] = now.ToString();//將使用者登入時間記錄在session中

            if (Session["Account"] == null)
            {
                Response.Write("<script>alert('時間到，已過期')</script>");
            }
            else
            {

                string ID = Session["Account"].ToString();
                //存取資料
                Response.Cookies[ID]["name"] = Server.UrlEncode(TextBox1.Text);
                Response.Cookies[ID]["id"] = Server.UrlEncode(TextBox2.Text);
                Response.Cookies[ID]["HBD"] = Server.UrlEncode(TextBox3.Text);
                Response.Cookies[ID]["bloodtype"] = Server.UrlEncode(TextBox4.Text);
                Response.Cookies[ID]["phone"] = Server.UrlEncode(TextBox5.Text);
                Response.Cookies[ID]["email"] = Server.UrlEncode(TextBox6.Text);
                //存取時間
                Response.Cookies[ID]["time"] = DateTime.Now.ToString();
                Label3.Visible = true;
                Label3.Text = "已修改";
            }
        }
    }
}
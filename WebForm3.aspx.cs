using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網二_期中作業
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.PreviousPage != null)
            {
                DropDownList SourceDropDownList= (DropDownList)Page.PreviousPage.FindControl("DropDownList1");
                Calendar SourceCalendar= (Calendar)Page.PreviousPage.FindControl("Calendar1");
                RadioButtonList SourceRadioButton2 = (RadioButtonList)Page.PreviousPage.FindControl("RadioButtonList2");
                CheckBoxList SourceCheckBoxList = (CheckBoxList)Page.PreviousPage.FindControl("CheckBoxList1");
                if (SourceDropDownList != null)
                {
                    Label20.Text = "檢查方案:" + SourceDropDownList.SelectedItem + "<br />";
                    Label20.Text += "預約檢查日期:" + SourceCalendar.SelectedDate.ToLongDateString()+ "<br />";
                    Label20.Text += "預約檢查時段:" + SourceRadioButton2.SelectedValue + "<br />";
                    if(SourceDropDownList.SelectedValue=="1")
                    {
                        Label20.Text += "健檢費用:" + 6000+ "<br/>";
                    }
                    else if (SourceDropDownList.SelectedValue == "2")
                    {
                        Label20.Text += "健檢費用:" + 8500 + "<br/>";
                    }
                    else if (SourceDropDownList.SelectedValue == "3")
                    {
                        Label20.Text += "健檢費用:" + 15000 + "<br/>";
                    }
                    else if (SourceDropDownList.SelectedValue == "4")
                    {
                        Label20.Text += "健檢費用:" + 28000 + "<br/>";
                    }

                    if (SourceCheckBoxList.SelectedValue=="1")
                    {
                        Label20.Text += "停車場消磁:需要<br/>";
                    }
                    if (SourceCheckBoxList.SelectedValue == "2")
                    {
                        Label20.Text += "停車場消磁:不需要<br/>";
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)//登出
        {
            //Label20.Visible = false;
            //Response.Write("<script>alert('掰掰~~~')</script>");
            //Session.Abandon();//Abandon()除了跟RemoveAll()一樣會清除所有Session之外，亦會結束目前的工作階段(RemoveAll()則仍處於同一個工作階段)
            //Server.Transfer("WebForm4.aspx");//回到第一頁
            Response.Redirect("WebForm4.aspx");
        }
    }
}
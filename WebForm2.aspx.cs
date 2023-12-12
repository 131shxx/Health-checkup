using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網二_期中作業
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.PreviousPage != null)
            {
                TextBox SourceTextBox1 = (TextBox)Page.PreviousPage.FindControl("TextBox1");
                TextBox SourceTextBox2 = (TextBox)Page.PreviousPage.FindControl("TextBox2");
                RadioButtonList SourceRadioButton1 = (RadioButtonList)Page.PreviousPage.FindControl("RadioButtonList1");
                TextBox SourceTextBox3 = (TextBox)Page.PreviousPage.FindControl("TextBox3");
                TextBox SourceTextBox4 = (TextBox)Page.PreviousPage.FindControl("TextBox4");
                TextBox SourceTextBox5 = (TextBox)Page.PreviousPage.FindControl("TextBox5");
                TextBox SourceTextBox6 = (TextBox)Page.PreviousPage.FindControl("TextBox6");

                if (SourceTextBox1 != null)
                {
                    Label10.Text = SourceTextBox1.Text + "您好!您的資料如下:" + "<br />";
                    Label10.Text += "身分證:" + SourceTextBox2.Text + "<br />";
                    Label10.Text += "性別:" + SourceRadioButton1.SelectedItem + "<br />";
                    Label10.Text += "生日:" + SourceTextBox3.Text + "<br />";
                    Label10.Text += "血型:" + SourceTextBox4.Text + "<br />";
                    Label10.Text += "電話:" + SourceTextBox5.Text + "<br />";
                    Label10.Text += "Email:" + SourceTextBox6.Text + "<br />";
                }
            }
            if (!IsPostBack)
            {
                DropDownList1.Items.Add(new ListItem("==請選擇體檢項目==", "0"));
                DropDownList1.Items.Add(new ListItem("半日基本健檢", "1"));
                DropDownList1.Items.Add(new ListItem("全日活力健檢", "2"));
                DropDownList1.Items.Add(new ListItem("全日精緻健檢", "3"));
                DropDownList1.Items.Add(new ListItem("全日高階健檢", "4"));
                RadioButtonList2.Visible = false;
            }
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date <= DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;//不能選
                //e.Cell.ForeColor = System.Drawing.Color.Gray;
                //e.Cell.Font.Strikeout = true;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            RadioButtonList2.Visible = true;

            switch (DropDownList1.SelectedValue)
            {
                case "1"://半日基本健檢2
                    RadioButtonList2.Items.Clear();//清除
                    Label3.Visible = true;
                    Label5.Visible = true;
                    Label3.Text = "";
                    Label5.Text = "";
                    Table1.Visible = true;
                    Table2.Visible = false;
                    Table3.Visible = false;
                    Table4.Visible = false;
                    RadioButtonList2.Items.Add(new ListItem("7:00-9:00", "7:00-9:00"));
                    RadioButtonList2.Items.Add(new ListItem("8:00-10:00", "8:00-10:00"));
                    RadioButtonList2.Items.Add(new ListItem("9:00-11:00", "9:00-11:00"));
                    RadioButtonList2.Items.Add(new ListItem("10:00-12:00", "10:00-12:00"));
                    RadioButtonList2.Enabled = true;
                    Label3.Text = "1.請依約定時間至 C棟地下二樓 健康管理中心一區櫃檯報到<br/>2.請攜帶健保卡及身分證<br/>3.請攜帶糞便檢體(糞便採檢方式)<br/>4.請於檢查前一天晚上12時起禁食(包括開水、口香糖等)<br/>5.穿著輕便服裝，勿攜帶貴重物品及配戴首飾(如：項鍊、手環等)、請勿配戴隱形眼鏡<br/>6.懷孕或有可能懷孕及生理期間的婦女，請提前告知護理人員";
                    Label5.Text = "檢查日前三天，請禁食刺激性食物及酒類、採清淡飲食，儘量避免應酬";
                    break;
                case "2"://全日活力健檢3
                    RadioButtonList2.Items.Clear();//清除
                    Label3.Visible = true;
                    Label5.Visible = true;
                    Label3.Text = "";
                    Label5.Text = "";
                    Table2.Visible = true;
                    Table1.Visible = false;
                    Table3.Visible = false;
                    Table4.Visible = false;
                    RadioButtonList2.Items.Add(new ListItem("7:00-10:00", "7:00-10:00"));
                    RadioButtonList2.Items.Add(new ListItem("8:00-11:00", "8:00-11:00"));
                    RadioButtonList2.Items.Add(new ListItem("9:00-12:00", "9:00-12:00"));
                    RadioButtonList2.Items.Add(new ListItem("13:00-16:00", "13:00-16:00"));
                    RadioButtonList2.Items.Add(new ListItem("14:00-17:00", "14:00-17:00"));
                    RadioButtonList2.Items.Add(new ListItem("15:00-18:00", "15:00-18:00"));
                    RadioButtonList2.Enabled = true;
                    Label3.Text = "1.請依約定時間至 C棟地下二樓 健康管理中心一區櫃檯報到<br/>2.請攜帶健保卡及身分證<br/>3.請攜帶糞便檢體(糞便採檢方式)<br/>4.請於檢查前一天晚上12時起禁食(包括開水、口香糖等)<br/>5.穿著輕便服裝，勿攜帶貴重物品及配戴首飾(如：項鍊、手環等)、請勿配戴隱形眼鏡<br/>6.懷孕或有可能懷孕及生理期間的婦女，請提前告知護理人員";
                    Label5.Text = "1.檢查日前三天，請禁食刺激性食物及酒類、採清淡飲食，儘量避免應酬<br/>2.女性抹片檢查請注意：不要沖洗陰道、避免盆浴、勿放置塞劑（嚴重子宮頸、陰道發炎時）、24小時以內不可有性行為、避開月經期間(完全乾淨後3-4天)<br/>3.選擇大腸鏡檢查者，請閱讀『大腸鏡檢查說明』";
                    break;
                case "3"://全日精緻健檢3
                    RadioButtonList2.Items.Clear();//清除
                    Label3.Visible = true;
                    Label5.Visible = true;
                    Label3.Text = "";
                    Label5.Text = "";
                    Table3.Visible = true;
                    Table1.Visible = false;
                    Table2.Visible = false;
                    Table4.Visible = false;
                    RadioButtonList2.Items.Add(new ListItem("7:00-10:00", "7:00-10:00"));
                    RadioButtonList2.Items.Add(new ListItem("8:00-11:00", "8:00-11:00"));
                    RadioButtonList2.Items.Add(new ListItem("9:00-12:00", "9:00-12:00"));
                    RadioButtonList2.Items.Add(new ListItem("13:00-16:00", "13:00-16:00"));
                    RadioButtonList2.Items.Add(new ListItem("14:00-17:00", "14:00-17:00"));
                    RadioButtonList2.Items.Add(new ListItem("15:00-18:00", "15:00-18:00"));
                    RadioButtonList2.Enabled = true;
                    Label3.Text = "1.請依約定時間至 C棟地下二樓 健康管理中心一區櫃檯報到<br/>2.請攜帶健保卡及身分證<br/>3.請於檢查前一天晚上12時起禁食(包括開水、口香糖等)<br/>4.穿著輕便服裝，勿攜帶貴重物品及配戴首飾(如：項鍊、手環等)、請勿配戴隱形眼鏡<br/>5.懷孕或有可能懷孕及生理期間的婦女，請提前告知護理人員";
                    Label5.Text = "1.檢查日前三天，請禁食刺激性食物及酒類、採清淡飲食，儘量避免應酬<br/>2.女性抹片檢查請注意：不要沖洗陰道、避免盆浴、勿放置塞劑（嚴重子宮頸、陰道發炎時）、24小時以內不可有性行為、避開月經期間(完全乾淨後3-4天)<br/>3.選擇大腸鏡檢查者，請閱讀『大腸鏡檢查說明』<br/>4.檢查當日因有無痛全身麻醉，請勿自行開車";
                    break;
                case "4"://全日高階健檢4
                    RadioButtonList2.Items.Clear();//清除
                    Label3.Visible = true;
                    Label5.Visible = true;
                    Label3.Text = "";
                    Label5.Text = "";
                    Table4.Visible = true;
                    Table1.Visible = false;
                    Table2.Visible = false;
                    Table3.Visible = false;
                    RadioButtonList2.Items.Add(new ListItem("7:00-11:00", "7:00-11:00"));
                    RadioButtonList2.Items.Add(new ListItem("8:00-12:00", "8:00-12:00"));
                    RadioButtonList2.Items.Add(new ListItem("9:00-13:00", "9:00-13:00"));
                    RadioButtonList2.Items.Add(new ListItem("13:00-17:00", "13:00-17:00"));
                    RadioButtonList2.Items.Add(new ListItem("14:00-18:00", "14:00-18:00"));
                    RadioButtonList2.Enabled = true;
                    Label3.Text = "1.請依約定時間至 C棟地下二樓 健康管理中心一區櫃檯報到<br/>2.請攜帶健保卡及身分證<br/>3.請於檢查前一天晚上12時起禁食(包括開水、口香糖等)<br/>4.穿著輕便服裝，勿攜帶貴重物品及配戴首飾(如：項鍊、手環等)、請勿配戴隱形眼鏡<br/>5.懷孕或有可能懷孕及生理期間的婦女，請提前告知護理人員";
                    Label5.Text = "1.檢查日前三天，請禁食刺激性食物及酒類、採清淡飲食，儘量避免應酬<br/>2.女性抹片檢查請注意：不要沖洗陰道、避免盆浴、勿放置塞劑（嚴重子宮頸、陰道發炎時）、24小時以內不可有性行為、避開月經期間(完全乾淨後3-4天)<br/>3.選擇大腸鏡檢查者，請閱讀『大腸鏡檢查說明』<br/>4.檢查當日因有無痛全身麻醉，請勿自行開車";
                    break;



            }
        }

        protected void Button1_Click(object sender, EventArgs e)//上一步
        {
            Server.Transfer("WebForm4.aspx", true);
        }

        protected void Button2_Click(object sender, EventArgs e)//確定
        {
            Server.Transfer("WebForm3.aspx", true);
        }

        

       
    }
}
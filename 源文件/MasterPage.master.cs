using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (checkCode.Text != Request.Cookies["CheckCode"].Value.ToString())
        {
            Response.Write("<script>alert('验证码错误！')</script>");
        }
        else
        {
            string strSQL = "select * from [user] where username='" + txtName.Text + "'and mm='" + txtPwd.Text + "'";
            DataTable dt = DbManager.ExecuteQuery(strSQL);
            if (dt.Rows.Count > 0)
            {
                Session["pass"] = 1;
                Response.Redirect("manager.aspx");
            }
            else
                Response.Write("<script>alert('用户名错误或密码错误！')</script>");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("search.aspx?strName=" + strTitle.Text);
    }

}

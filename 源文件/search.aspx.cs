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

public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strSQL = "select * from product where title like '%" + Server.UrlDecode
        (Request.QueryString["strName"]) + "%'";
        DataTable dt = DbManager.ExecuteQuery(strSQL);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        int iPageSize = 10;
        strSQL = "SELECT * from product order by bh desc";

        PagedDataSource pg = new PagedDataSource();
        pg.DataSource = dt.DefaultView;
        pg.AllowPaging = true;
        pg.PageSize = iPageSize;
        int iTotalPage = pg.PageCount;
        int iCurPage = Convert.ToInt32(Request.QueryString["page"]);
        if (iCurPage < 1)
            iCurPage = 1;
        if (iCurPage > iTotalPage)
            iCurPage = iTotalPage;
        pg.CurrentPageIndex = iCurPage - 1;
        Label1.Text = "第" + iCurPage.ToString() + "页/共" + iTotalPage.ToString() + "页";
        LinkButton1.PostBackUrl = Request.CurrentExecutionFilePath + "?page=1";
        LinkButton2.PostBackUrl = Request.CurrentExecutionFilePath + "?page=" + (iCurPage - 1);
        LinkButton4.PostBackUrl = Request.CurrentExecutionFilePath + "?page=" + pg.PageCount;
        LinkButton3.PostBackUrl = Request.CurrentExecutionFilePath + "?page=" + (iCurPage + 1);
        Repeater1.DataSource = pg;
        Repeater1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.CurrentExecutionFilePath + "?page=" + TextBox1.Text);
    }
}

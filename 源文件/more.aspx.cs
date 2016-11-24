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

public partial class more : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int iPagesize = 12;
        string strSQL = "select * from product order by bh desc";
        DataTable dt = DbManager.ExecuteQuery(strSQL);
        PagedDataSource pg = new PagedDataSource();
        pg.DataSource = dt.DefaultView;
        pg.AllowPaging = true;
        pg.PageSize = iPagesize;
        int iTotalPage = pg.PageCount;
        int iCurPage = Convert.ToInt32(Request.QueryString["Page"]);
        if (iCurPage < 1)
            iCurPage = 1;
        if (iCurPage > iTotalPage)
            iCurPage = iTotalPage;
        pg.CurrentPageIndex = iCurPage - 1;
        Label1.Text = "第" + iCurPage.ToString() + "页/共" + iTotalPage.ToString() + "页";
        LinkButton1.PostBackUrl = Request.CurrentExecutionFilePath + "?Page=1";
        LinkButton2.PostBackUrl = Request.CurrentExecutionFilePath + "?Page=" + (iCurPage - 1);
        LinkButton3.PostBackUrl = Request.CurrentExecutionFilePath + "?Page=" + (iCurPage - 1);
        LinkButton4.PostBackUrl = Request.CurrentExecutionFilePath + "?Page=" + pg.PageCount;
        DataList1.DataSource = pg;
        DataList1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response .Redirect (Request .CurrentExecutionFilePath +"?Page="+TextBox1 .Text );


    }
   
}

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

public partial class Historia1_Downloads : System.Web.UI.Page
{
    protected int counterFreeware;
    protected DataSet ds;
    protected DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        ds = new DataSet();
        ds.ReadXml(Server.MapPath("~/App_Data/counters.xml"));
        dt = ds.Tables["counters"];
        counterFreeware = int.Parse(dt.Rows[0][2].ToString());
        LabelFreeware.Text = "Downloaded so far: " + counterFreeware;
        if (Session["FirstTimeFreeware"] == null)
            Session["FirstTimeFreeware"] = "false";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["FirstTimeFreeware"] != null && (String)Session["FirstTimeFreeware"] == "false")
        {
            counterFreeware++;
            dt.Rows[0][2] = counterFreeware;
            ds.WriteXml(Server.MapPath("~/App_Data/counters.xml"));
            Session["FirstTimeFreeware"] = "true";
        }
        Response.Redirect("~/files/Historia1_11.zip");
    }
}

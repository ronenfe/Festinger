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

public partial class Downloads : System.Web.UI.Page
{
    protected int counterPro;
    protected int counterStandard;
    protected int counterFreeware;
    protected int counterGenerator;
    protected DataSet ds;
    protected DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        ds = new DataSet();
        ds.ReadXml(Server.MapPath("~/App_Data/counters.xml"));
        dt = ds.Tables["counters"];
        counterPro = int.Parse(dt.Rows[0][0].ToString());
        counterStandard = int.Parse(dt.Rows[0][1].ToString());
        counterFreeware = int.Parse(dt.Rows[0][2].ToString());
        counterGenerator = int.Parse(dt.Rows[0][3].ToString());
        LabelPro.Text = "Downloaded so far: " + counterPro;
        LabelStandard.Text = "Downloaded so far: " + counterStandard;
        LabelFreeware.Text = "Downloaded so far: " + counterFreeware;
        LabelGenerator.Text = "Clicked so far: " + counterGenerator;
        if (Session["FirstTimePro"] == null)
            Session["FirstTimePro"] = "false";
        if (Session["FirstTimeStandard"] == null)
            Session["FirstTimeStandard"] = "false";
        if (Session["FirstTimeGenerator"] == null)
            Session["FirstTimeGenerator"] = "false";
        ButtonPro.Attributes.Add("class", "static");
        ButtonPro.Attributes.Add("onMouseOver", "this.className='hoverbutton'");
        ButtonPro.Attributes.Add("onMouseOut", "this.className='static'");
        ButtonStandard.Attributes.Add("class", "static");
        ButtonStandard.Attributes.Add("onMouseOver", "this.className='hoverbutton'");
        ButtonStandard.Attributes.Add("onMouseOut", "this.className='static'");
        Button1_11.Attributes.Add("class", "static");
        Button1_11.Attributes.Add("onMouseOver", "this.className='hoverbutton'");
        Button1_11.Attributes.Add("onMouseOut", "this.className='static'");
        ButtonGenerator.Attributes.Add("class", "static");
        ButtonGenerator.Attributes.Add("onMouseOver", "this.className='hoverbutton'");
        ButtonGenerator.Attributes.Add("onMouseOut", "this.className='static'");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string keyString;
        UInt16 key = 0;

        if (RadioButtonList1.Items[0].Selected == true)  // 3.2.1
        {
            for (UInt16 i = 0; i < this.TextBox1.Text.Length; i++)  // run on each char of text
            {
                key += 6791;
                key *= (ushort)(this.TextBox1.Text[i] * 13);
                key += (ushort)(6829 + i);
            }
        }
        else
        {
            for (UInt16 i = 0; i < this.TextBox1.Text.Length; i++)  // run on each char of text
            {
                key ^= this.TextBox1.Text[i]; // sum all ascii values of text
                key *= key;
                key += i;
            }
        }
        keyString = key.ToString().PadLeft(5, '0');
        Label1.Text = "Key Number :  " + keyString;

        if (Session["FirstTimeGenerator"] != null && (String)Session["FirstTimeGenerator"] == "false")
        {
            counterGenerator++;
            dt.Rows[0][3] = counterGenerator;
            ds.WriteXml(Server.MapPath("~/App_Data/counters.xml"));
            Session["FirstTimeGenerator"] = "true";
            LabelGenerator.Text = "Clicked so far: " + counterGenerator;
        }
    }
    protected void ButtonStandard_Click(object sender, EventArgs e)
    {
        if (Session["FirstTimeStandard"] != null && (String)Session["FirstTimeStandard"] == "false")
        {
            counterStandard++;
            dt.Rows[0][1] = counterStandard;
            ds.WriteXml(Server.MapPath("~/App_Data/counters.xml"));
            Session["FirstTimeStandard"] = "true";
        }
        Response.Redirect("files/HistoriaStandard2.zip");
    }
    protected void ButtonPro_Click(object sender, EventArgs e)
    {
        if (Session["FirstTimePro"] != null && (String)Session["FirstTimePro"] == "false")
        {
            counterPro++;
            dt.Rows[0][0] = counterPro;
            ds.WriteXml(Server.MapPath("~/App_Data/counters.xml"));
            Session["FirstTimePro"] = "true";
        }
        Response.Redirect("files/Historia3.zip");
    }
}

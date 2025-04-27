using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class secretarypage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome Secretary Mr/Ms."+Session["name"].ToString();

    }

    protected void Buttonqwa1_Click(object sender, EventArgs e)
    {
        Session.Remove("name");
        Response.Redirect("Home.aspx");

    }

    protected void Buttonqwa_Click(object sender, EventArgs e)
    {
        Response.Redirect("secretarychangepwd.aspx");

    }
}

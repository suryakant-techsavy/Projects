using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chairman : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       Label1.Text = "<u><b>Welcome Admin Mr./Ms."+Session["name"].ToString()+"</b></u>";

    }

    protected void Buttonqwa_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminchangepwd.aspx");

    }

    protected void Buttonqwa1_Click(object sender, EventArgs e)
    {
        Session.Remove("name");
        Response.Redirect("Home.aspx");

    }
}

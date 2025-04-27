using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Logins : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd, cmd1, cmd2;
    SqlDataReader dr, dr1, dr2;

    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        //if(Roles.IsUserInRole(TextBox1.Text,"member"))
      //  {
      //      Response.Redirect("welcomemember.aspx");
      //  }
        //SqlConnection con = new SqlConnection(@"Data Source=HP;Initial Catalog=college;Integrated Security=True");
        //con.Open();

        //SqlCommand cmd = new SqlCommand("select  * FROM Login");
        //SqlDataAdapter dr = new SqlDataAdapter(cmd.CommandText, con);
        //DataTable dt = new DataTable();
        //dr.Fill(dt);
        //int rows = dt.Rows.Count;
        //for (int i = 0; i < rows; i++)
        //{
        //    string un = dt.Rows[i]["Username"].ToString();
        //    string pwd = dt.Rows[i]["Password"].ToString();
        //    //   string rol = dt.Rows[i]["Role"].ToString();
        //    if (un == TextBox1.Text && pwd == TextBox2.Text)
        //    {
        //        Session["name"] = un;
        //        if (dt.Rows[i]["Role"].ToString() == "admin")

        //            Response.Redirect("welcomeadmin.aspx");

        //        else if (dt.Rows[i]["Role"].ToString() == "member")

        //            Response.Redirect("welcomemember.aspx");

        //        else if (dt.Rows[i]["Role"].ToString() == "secretary")

        //            Response.Redirect("welcomesecretary.aspx");

        //    }
        //    else
        //    {
        //        Response.Write("invalid un or pwd");
        //    }

        
    }
        
    


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Logins.aspx");
    }
}
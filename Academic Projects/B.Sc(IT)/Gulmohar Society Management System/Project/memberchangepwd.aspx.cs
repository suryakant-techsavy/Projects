using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Configuration;
using System.Data.SqlClient;
using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class memberchangepwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Text = "Welcome " + Session["name"].ToString();
        Label11.Visible = false;
    }
    protected void Button1_Click(object sender, System.EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        con.Open();
        string str1 = "select * from Login_Info where Password ='" + TextBox1.Text + "'And UserName='" + Session["name"] + "'";
        SqlCommand cmd = new SqlCommand(str1, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
            con1.Open();

            string str = "update Login_Info set Password='" + TextBox2.Text + "'where Password= '" + TextBox1.Text + "'And UserName='" + Session["name"] + "'";
            SqlCommand cmd1 = new SqlCommand(str, con1);
            cmd1.ExecuteNonQuery();
            string message = string.Empty;
            message = " \tSuccessfully Changed Password\\n\\n" + "Your New Password is:-" + TextBox2.Text;
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            con1.Close();
            con.Close();
        }
        else
        {
            Label11.Visible = true;
            Label11.Text = "Wrong password you have entered";
        }

    }
}
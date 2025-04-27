using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // Label1.Text = DateTimeOffset.Now.ToString();
        
         SqlConnection conn = new SqlConnection(@"Data Source=HP;Initial Catalog=college;Integrated Security=True");
        conn.Open();

       SqlCommand cmd = new SqlCommand("SELECT thought FROM thought ", conn);
       SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
           // TextBox1.Text = dr[0].ToString();
            TextBox3.Text = dr[0].ToString();

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        con.Open();
        string str1 = "select * from thought where thought ='" + TextBox3.Text + "'";
        SqlCommand cmd = new SqlCommand(str1, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
            con1.Open();

            string str = "update thought set thought='" + TextBox2.Text+  "'";
            SqlCommand cmd1 = new SqlCommand(str, con1);
            cmd1.ExecuteNonQuery();
            string message = string.Empty;
            message = " \tSuccessfully Changed Good Thoughts of The Day\\n\\n" + "Your New Good Thought is:-" + TextBox2.Text;
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            con1.Close();
            con.Close();
        }
        SqlConnection conn = new SqlConnection(@"Data Source=HP;Initial Catalog=college;Integrated Security=True");
        conn.Open();

        SqlCommand cmd2 = new SqlCommand("SELECT thought FROM thought ", conn);
        SqlDataReader dr1 = cmd2.ExecuteReader();

        if (dr1.Read())
        {
            TextBox3.Text = "\n"+""+ dr1[0].ToString();

        }

        TextBox2.Text = "";
    }



    protected void Timer1_Tick(object sender, EventArgs e)
    {
        
    }

   
}
	 
	   
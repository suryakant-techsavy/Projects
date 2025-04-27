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

public partial class AdminForgotpwd : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Header.Title = "Forgot Password";
        Label11.Visible = false;
        Label12.Visible = false;
        Label3.Text = DateTime.Now.ToString();


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //get question
        conn = new SqlConnection(@"Data Source=HP;Initial Catalog=college;Integrated Security=True");
        conn.Open();

        cmd = new SqlCommand("SELECT memsec FROM Login_Info where Username = '" + TextBox1.Text + "'", conn);
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            TextBox2.Text = dr[0].ToString();
        }
        else
        {
            Label11.Visible = true;
           Label11.Text="Invalid Username,Please Check Details";
        }
        dr.Close();
        conn.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "")
        {
            //get password
            conn = new SqlConnection(@"Data Source=HP;Initial Catalog=college;Integrated Security=True"); conn.Open();

            cmd = new SqlCommand("SELECT Password FROM Login_Info where Username = '" + TextBox1.Text + "' AND memsec ='" + TextBox2.Text + "' AND memans = '" + TextBox3.Text + "'", conn);
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                TextBox4.Text = dr[0].ToString();
            }
            else
            {
                Label12.Visible = true;
               Label12.Text="Invalid Information.Please Verify Your Details";
                TextBox4.Text = "";
            }
            dr.Close();
            conn.Close();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminForgotpwd.aspx");
    }
}
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

public partial class SecretaryLogin : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;


    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;
        Page.Header.Title = "Admin Login";
        //Print the time when the page loaded initially
        //Response.Write("The Page Loaded at: " + DateTime.Now.ToLongTimeString());



        //wrong login

        if (Session["wronglongin"] == null)
        {
            Label4.Visible = false;
        }
        else
        {
            Label4.Visible = true;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeConnectionString"].ConnectionString);
        conn.Open();

        cmd = new SqlCommand("SELECT * FROM Admin_Info where email = '" + TextBox1.Text + "' AND password ='" + TextBox2.Text + "'", conn);
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Session["email"] = dr["email"];
           
            Session["wronglongin"] = null;

         
            Response.Redirect("welcomeadmin.aspx");
        }
        else
        {
           Response.Write("<script type=text/javascript>alert('Invalid Username or Password,Please Try Again');</script>");
           
        }
        dr.Close();
        conn.Close();
        TextBox1.Focus();

    }


    

 

    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("SecretaryLogin.aspx");
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        this.Dispose();
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
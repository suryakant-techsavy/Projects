using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Data;

public partial class AdminLogin : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Header.Title = " Admin Login";
        Label4.Visible = false;
        Label11.Visible = false;
   }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("AdminLogin.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=HP;Initial Catalog=college;Integrated Security=True");
        SqlDataAdapter sda = new SqlDataAdapter("select COUNT(*)FROM Login_Info WHERE Username = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "' and Role = '" + DropDownList1.Text + "'", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if(dt.Rows[0][0].ToString()=="1")
        {
            SqlDataAdapter sda1 = new SqlDataAdapter("select Role FROM Login_Info WHERE Username = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'", conn);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            if (dt1.Rows[0][0].ToString() == "Admin")
            {
                Session["name"] = TextBox1.Text;
                Response.Redirect("welcomeadmin.aspx");
            }
            else if (dt1.Rows[0][0].ToString() == "Secretary")
            {
                Session["name"] = TextBox1.Text;
                Response.Redirect("welcomesecretary.aspx");
            }
            else if (dt1.Rows[0][0].ToString() == "Member")
            {
                Session["name"] = TextBox1.Text;
                Response.Redirect("welcomemember.aspx");
            }
      }
        else
        {
           
            Label11.Visible = true;
          Label11.  ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Username=<b>" + TextBox1.Text + "</b>\tOr\t" + "Password=<b>" + TextBox2.Text + "</b>\tmay be Invalid for\t<b>" + DropDownList1.Text+"\t"+TextBox1.Text+"</b>";
            conn.Close();
        }
  }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminLogin.aspx");
    }
}
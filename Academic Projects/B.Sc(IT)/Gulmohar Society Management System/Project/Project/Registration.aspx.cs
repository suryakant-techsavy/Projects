using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;
	 

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[""].ConnectionString);  
        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    con.Open();
        //    try
        //{
        //        byte[] image_Byte = new byte[FileUpload1.PostedFile.InputStream.Length + 1];
        //        FileUpload1.PostedFile.InputStream.Read(image_Byte, 0, image_Byte.Length);
        //        //Check whether image size 51200 byte or 50 kb 
        //    long size_img = FileUpload1.PostedFile.InputStream.Length;
        //        if (size_img <= 51200)
        //        {
        //            SqlCommand cmd = new SqlCommand("insert into student values(@name,@email,@img)", con);
        //            cmd.Parameters.AddWithValue("name", TextBox1.Text);
        //            cmd.Parameters.AddWithValue("email", TextBox2.Text);
        //            cmd.Parameters.AddWithValue("img", image_Byte);
        //            cmd.ExecuteNonQuery();
        //            Label1.Text = "Data inserted in database successfully ";
        //        }
        //    else
        //        {
        //            Label1.Text = "Enter image size less than 50 kb";
        //   }
        //    }
        //    catch (Exception ex)
        //    {
        //        Label1.Text = ex.Message;
        //}
        //    finally        {
        //        con.Close();
        //    }
        //}
        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("show_data.aspx");
        //}
        //protected void Button4_Click(object sender, System.EventArgs e)
        //{

        //}
        //protected void Button5_Click(object sender, System.EventArgs e)
        //{

        //}
    protected void Button2_Click(object sender, System.EventArgs e)
    {
        this.Dispose();
    }
    protected void Button1_Click(object sender, System.EventArgs e)
    {
        Response.Redirect("welcome.aspx");
    //    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\Softwear\GokuldhamSociety.com\App_Data\Database.mdf;Integrated Security=True;User Instance=True;");

    //    con.Open();
    //    String str = "INSERT INTO login (UserName,Password) VALUES ('" + TextBox8.Text + "','" + TextBox9.Text + "')";
    //    SqlCommand cmd = new SqlCommand(str, con);
    //    int OBJ = Convert.ToInt32(cmd.ExecuteNonQuery());
    //    if (OBJ > 0)
    //    {
    //        Label2.Text = "Data is successfully inserted in database";
    //        Response.Redirect("Logins.aspx");
    //    }
    //    else
    //    {
    //        Label2.Text = "Data is not inserted in database";
    //    }
    //    con.Close();

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Response.Redirect("SecretaryRegistration.aspx");
    }

    protected void Unnamed2_Click(object sender, EventArgs e)
    {
        Response.Redirect("MemberRegistration.aspx");
        
    }
}

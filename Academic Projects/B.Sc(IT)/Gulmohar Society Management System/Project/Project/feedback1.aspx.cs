using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Net.Mime;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Configuration;

using System.Web.Security;

using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class feedback1 : System.Web.UI.Page
{
    SqlConnection conn, conn1;
    SqlCommand cmd, cmd1;
    SqlDataReader dr, dr1;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlConnection conn = new SqlConnection("Data Source=HP;Initial Catalog=college;Integrated Security=True");
            conn.Open();
            string str = "select * from Login_Info where Username='" + Session["name"] + "'";
            SqlCommand com = new SqlCommand(str, conn);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                TextBox2.Text = dr["name"].ToString();
                TextBox3.Text = dr["Flat_No"].ToString();


                dr.Close();
                conn.Close();

            }




            TextBox5.Text = DateTime.Now.ToString();
            conn = new SqlConnection(@"Data Source=HP;Initial Catalog=college;Integrated Security=True");
            conn.Open();

            cmd = new SqlCommand("SELECT max(Complaint_No) FROM Complaints", conn);
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                TextBox6.Text = (Convert.ToUInt64(dr[0].ToString()) + 1).ToString();
            }
            dr.Close();
            conn.Close();

        }

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {


        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();

        cmd = new SqlCommand("INSERT INTO Complaints (Complaint_No,Flat_No,Username,Date,Subject,Description) VALUES (@Complaint_No,@Flat_No,@Name,@Date,@Subject,@Description)", conn);
        cmd.Parameters.AddWithValue("@Flat_No", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Complaint_No", TextBox6.Text);

        cmd.Parameters.AddWithValue("@Date", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Subject", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Description", TextBox4.Text);

        cmd.ExecuteNonQuery();
        string message = string.Empty;
        message = "  Query is send to appropriate person, we will answer you Mr./Ms." + TextBox2.Text + " in 24 hrs.";
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
        GridView1.DataBind();
        conn.Close();

        TextBox1.Text = "";
        TextBox2.Text = "";

        TextBox4.Text = "";


    }


    protected void Buttonqwa_Click(object sender, EventArgs e)
    {
        Response.Redirect("memberchangepwd.aspx");
    }

    protected void Buttonqwa1_Click(object sender, EventArgs e)
    {
        Session.Remove("name");
        Response.Redirect("Home.aspx");
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
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

public partial class HallBookReq : System.Web.UI.Page
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
                TextBox2.Text = dr["Username"].ToString();
                TextBox3.Text = dr["Flat_No"].ToString();


                dr.Close();
                conn.Close();

            }




            TextBox5.Text = DateTime.Now.ToLongDateString();
            conn = new SqlConnection(@"Data Source=HP;Initial Catalog=college;Integrated Security=True");
            conn.Open();

            cmd = new SqlCommand("SELECT max(BookingId) FROM Hall_Allocation", conn);
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                TextBox6.Text = (Convert.ToUInt64(dr[0].ToString()) + 1).ToString();
            }
            dr.Close();
            conn.Close();

        }

    }

    

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            string message1 = string.Empty;
            message1 = "Subject Textbox Cannot Be Blank";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message1 + "');", true);

        }
        if (TextBox2.Text == "")
        {
            string message2 = string.Empty;
            message2 = "Name Textbox Cannot Be Blank";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message2 + "');", true);

        }
        if (TextBox3.Text == "")
        {
            string message3 = string.Empty;
            message3 = "Flat No Textbox Cannot Be Blank";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message3 + "');", true);

        }
        if (TextBox4.Text == "")
        {
            string message1 = string.Empty;
            message1 = "Description Textbox Cannot Be Blank";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message1 + "');", true);

        }
        if (TextBox5.Text == "")
        {
            string message2 = string.Empty;
            message2 = "Booking Request Date Textbox Cannot Be Blank";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message2 + "');", true);

        }
        if (TextBox6.Text == "")
        {
            string message3 = string.Empty;
            message3 = "Booking Id Textbox Cannot Be Blank";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message3 + "');", true);

        }



        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();

        cmd = new SqlCommand("INSERT INTO Hall_Allocation (BookingId,Flat_No,Name,Date,Subject,Description) VALUES (@BookingId,@Flat_No,@Name,@Date,@Subject,@Description)", conn);
        cmd.Parameters.AddWithValue("@Flat_No", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@BookingId", TextBox6.Text);

        cmd.Parameters.AddWithValue("@Date", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Subject", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Description", TextBox4.Text);

        cmd.ExecuteNonQuery();
        string message = string.Empty;
        message = "  Query is send to appropriate person, we will answer you Mr./Ms." + TextBox2.Text + "as Early as Possible.";
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
        GridView1.DataBind();
        conn.Close();

        TextBox1.Text = "";
        TextBox2.Text = "";
       
        TextBox4.Text = "";
       
        TextBox3.Text = "";
        TextBox5.Text = DateTime.Now.ToLongDateString();
        conn = new SqlConnection(@"Data Source=HP;Initial Catalog=college;Integrated Security=True");
        conn.Open();

        cmd = new SqlCommand("SELECT max(BookingId) FROM Hall_Allocation", conn);
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            TextBox6.Text = (Convert.ToUInt64(dr[0].ToString()) + 1).ToString();
        }
        dr.Close();
        conn.Close();


    }

    
}
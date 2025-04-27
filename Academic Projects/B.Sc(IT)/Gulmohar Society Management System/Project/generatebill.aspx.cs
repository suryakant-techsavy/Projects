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

public partial class generatebill : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox13.Text = DateTime.Now.ToLongDateString();

        //TextBox1.Enabled = false;
        //TextBox12.Text = DateTime.Now.ToLongDateString();
       conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
       conn.Open();

       SqlCommand cmd = new SqlCommand("SELECT max(Bill_No) FROM Bill", conn);
       SqlDataReader dr = cmd.ExecuteReader();

       if (dr.Read())
       {
           TextBox2.Text = (Convert.ToUInt64(dr[0].ToString()) + 1).ToString();
       }
       else
       {
           TextBox2.Text = "1";
       }
       dr.Close();
       conn.Close();
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();

        SqlCommand cmd9 = new SqlCommand("SELECT Amount FROM charges where Type='"+"Water Charges"+"'", conn);
        SqlDataReader dr9 = cmd9.ExecuteReader();

        if (dr9.Read())
        {
            TextBox3.Text = dr9["Amount"].ToString();
         



        }
        else
        {
            TextBox3.Text = "0";
        }
        dr9.Close();
        conn.Close();

        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();

        SqlCommand cmd8 = new SqlCommand("SELECT Amount FROM charges where Type='" + "Sinking Fund" + "'", conn);
        SqlDataReader dr8 = cmd8.ExecuteReader();

        if (dr8.Read())
        {
            TextBox4.Text = dr8["Amount"].ToString();




        }
        else
        {
            TextBox4.Text = "0";
        }
        dr8.Close();
        conn.Close(); conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();
        SqlCommand cmd7 = new SqlCommand("SELECT Amount FROM charges where Type='" + "Maintainance Charges" + "'", conn);
        SqlDataReader dr7 = cmd7.ExecuteReader();

        if (dr7.Read())
        {
            TextBox11.Text = dr7["Amount"].ToString();




        }
        else
        {
            TextBox11.Text = "0";
        }
        dr7.Close();
        conn.Close();  conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();

        SqlCommand cmd5 = new SqlCommand("SELECT Amount FROM charges where Type='" + "Building Insurance Charges" + "'", conn);
        SqlDataReader dr5 = cmd5.ExecuteReader();

        if (dr5.Read())
        {
            TextBox6.Text = dr5["Amount"].ToString();
            



        }
        else
        {
            TextBox6.Text = "0";
        }
        dr5.Close();
        conn.Close(); conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();

        SqlCommand cmd4 = new SqlCommand("SELECT Amount FROM charges where Type='" + "Lift Charges" + "'", conn);
        SqlDataReader dr4 = cmd4.ExecuteReader();

        if (dr4.Read())
        {
            TextBox7.Text = dr4["Amount"].ToString();




        }
        else
        {
            TextBox7.Text = "0";
        }
        dr4.Close();
        conn.Close(); conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();

        SqlCommand cmd3 = new SqlCommand("SELECT Amount FROM charges where Type='" + "Audit Charges" + "'", conn);
        SqlDataReader dr3 = cmd3.ExecuteReader();

        if (dr3.Read())
        {
            TextBox8.Text = dr3["Amount"].ToString();




        }
        else
        {
            TextBox8.Text = "0";
        }
        dr3.Close();
        conn.Close();
    }



    protected void Button2_Click(object sender, EventArgs e)
    {

        if(TextBox12.Text=="")
        {
            TextBox12.Text = "00";
        }
        if (TextBox5.Text == "")
        {
            TextBox5.Text = "00";
        }
        if (TextBox9.Text == "")
        {
            TextBox9.Text = "00";
        }



        int a, b, c, d,z, i, f, g, h;
        a = Convert.ToInt16(TextBox9.Text);
        b = Convert.ToInt16(TextBox11.Text);
        c = Convert.ToInt16(TextBox3.Text);
        d = Convert.ToInt16(TextBox4.Text);
        i = Convert.ToInt16(TextBox5.Text);
        f = Convert.ToInt16(TextBox6.Text);
        g = Convert.ToInt16(TextBox7.Text);
        h = Convert.ToInt16(TextBox8.Text);
        z = Convert.ToInt16(TextBox12.Text);
        int ans = a + b + c + d + i + f + g + h+z;
        TextBox1.Text = (ans.ToString());
      

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

       conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
       conn.Open();

       cmd = new SqlCommand("INSERT INTO Bill (Bill_No,Flat_No,name,Status,Sinking_Fund,Water_Charges,Maintainance_Charges,Parking_Charges,Building_Insurance_Charges,Lift_Charges,Audit_Charges,Balance_Interest,Miscelleneous_Charges,Total,Signature,Date) VALUES (@Bill_No,@Flat_No,@name,@Status,@Sinking_Fund,@Water_Charges,@Maintainance_Charges,@Parking_Charges,@Building_Insurance_Charges,@Lift_Charges,@Audit_Charges,@Balance_Interest,@Miscelleneous_Charges,@Total,@Signature,@Date)", conn);
       cmd.Parameters.AddWithValue("@Bill_No", TextBox2.Text);
       cmd.Parameters.AddWithValue("@name", TextBox10.Text);
        cmd.Parameters.AddWithValue("@Status", TextBox14.Text);
        cmd.Parameters.AddWithValue("@Flat_No", DropDownList4.Text);
       cmd.Parameters.AddWithValue("@Water_Charges", TextBox3.Text);
       cmd.Parameters.AddWithValue("@Sinking_Fund", TextBox4.Text);
       cmd.Parameters.AddWithValue("@Maintainance_Charges", TextBox11.Text);

       cmd.Parameters.AddWithValue("@Parking_Charges", TextBox5.Text);
       cmd.Parameters.AddWithValue("@Building_Insurance_Charges", TextBox6.Text);
       cmd.Parameters.AddWithValue("@Lift_Charges", TextBox7.Text);

       cmd.Parameters.AddWithValue("@Audit_Charges", TextBox8.Text);
       cmd.Parameters.AddWithValue("@Balance_Interest", TextBox9.Text);
        cmd.Parameters.AddWithValue("@Miscelleneous_Charges", TextBox12.Text);
       cmd.Parameters.AddWithValue("@Total", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Signature", DropDownList5.Text);
        cmd.Parameters.AddWithValue("@Date", TextBox13.Text);
        cmd.ExecuteNonQuery();

        string message = string.Empty;
        message = " Bill is Generated\\n  For Flat No: " + DropDownList4.Text + "\\n Total Bill Amount Payable:" + TextBox1.Text.ToString();

        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);

        conn.Close();
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();

        SqlCommand cmd1 = new SqlCommand("SELECT max(Bill_No) FROM Bill", conn);
        SqlDataReader dr1 = cmd1.ExecuteReader();

        if (dr1.Read())
        {
            TextBox2.Text = (Convert.ToUInt64(dr1[0].ToString()) + 1).ToString();
        }
        else
        {
            TextBox2.Text = "1";
        }
        dr1.Close();
        conn.Close();

    }








    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();

        SqlCommand cmda = new SqlCommand("SELECT Username FROM Login_Info where Flat_No='" + DropDownList4.Text + "'", conn);
        SqlDataReader dra = cmda.ExecuteReader();

        if (dra.Read())
        {
            TextBox10.Text = dra["Username"].ToString();




        }
        else
        {
            TextBox10.Text = "abc";
        }
        dra.Close();
        conn.Close();


    }
}
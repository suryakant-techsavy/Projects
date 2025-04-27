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
using System.Drawing;

public partial class Generate_Hall_Bill : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox13.Text = DateTime.Now.ToLongDateString();

        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();

        SqlCommand cmd = new SqlCommand("SELECT max(Bill_No) FROM Hall_Bill", conn);
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

        SqlCommand cmd9 = new SqlCommand("SELECT Amount FROM charges where Type='" + "Hall Charges" + "'", conn);
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


    }
















    protected void Button2_Click1(object sender, EventArgs e)
    {


        if (TextBox3.Text == "")
        {
            TextBox3.Text = "00";
        }
        if (TextBox19.Text == "")
        {
            TextBox19.Text = "00";
        }
        if (TextBox18.Text == "")
        {
            TextBox18.Text = "00";
        }



        int a, b, c;
        a = Convert.ToInt16(TextBox3.Text);
        b = Convert.ToInt16(TextBox19.Text);
        c = Convert.ToInt16(TextBox18.Text);
        int ans = a + b + c;
        TextBox1.Text = (ans.ToString());






    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Label32.Text = "Bill is generated for flat no:\\t" + TextBox20.Text + "for hall booked on :\\t" + DropDownList2.Text;

        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();

        SqlCommand cmd = new SqlCommand("INSERT INTO Hall_Bill (Bill_No,Flat_No,name,Status,Hall_Charges,Balance_Interest,Miscelleneous_Charges,Total,Signature,Date,Description,Booked_Date,Misc_Reason) VALUES (@Bill_No,@Flat_No,@name,@Status,@Hall_Charges,@Balance_Interest,@Miscelleneous_Charges,@Total,@Signature,@Date,@Description,@Booked_Date,@Misc_Reason)", conn);
        cmd.Parameters.AddWithValue("@Bill_No", TextBox2.Text);
        cmd.Parameters.AddWithValue("@name", TextBox10.Text);
        cmd.Parameters.AddWithValue("@Status", TextBox17.Text);
        cmd.Parameters.AddWithValue("@Flat_No", TextBox20.Text);
        cmd.Parameters.AddWithValue("@Hall_Charges", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Balance_Interest", TextBox18.Text);
        cmd.Parameters.AddWithValue("@Miscelleneous_Charges", TextBox19.Text);
        cmd.Parameters.AddWithValue("@Total", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Signature", DropDownList3.Text);
        cmd.Parameters.AddWithValue("@Date", TextBox13.Text);
        cmd.Parameters.AddWithValue("@Description", Label32.Text);
        cmd.Parameters.AddWithValue("@Booked_Date", DropDownList2.Text);
        cmd.Parameters.AddWithValue("@Misc_Reason", TextBox21.Text);

        cmd.ExecuteNonQuery();

        string message1 = string.Empty;
        message1 = " Bill is Generated\\n  For Flat No:\\t " + TextBox20.Text + "\\n Hall Booked on:\\t" + DropDownList2.Text + "\\n Total Bill Amount Payable:\\t" + TextBox1.Text.ToString();

        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message1 + "');", true);
        TextBox10.Text = "";
        TextBox20.Text = "";
        TextBox18.Text = "";
        TextBox19.Text = "";
        TextBox1.Text = "";
        Label32.Text = "";
        TextBox21.Text = "";

        conn.Close();

     
        TextBox13.Text = DateTime.Now.ToLongDateString();

        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();

        SqlCommand cmd1 = new SqlCommand("SELECT max(Bill_No) FROM Hall_Bill", conn);
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
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();

        SqlCommand cmd9 = new SqlCommand("SELECT Amount FROM charges where Type='" + "Hall Charges" + "'", conn);
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





    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.Text != "")
        {
            SqlConnection con = new SqlConnection(@"Data Source=HP;Initial Catalog=college;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Hall_Bill where Booked_Date='" + DropDownList2.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Label34.Visible = true;

                Label34.Text = "Bill is Already Generated on" + DropDownList2.Text + " Date ,select appropriate one";
                this.Label34.ForeColor = Color.OrangeRed;
            }
            else
            {


                Label34.Text = "";

                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
                conn.Open();

                SqlCommand cmda = new SqlCommand("SELECT name,Flat_No FROM Hall_Allocation where Confirm_Date='" + DropDownList2.Text + "'", conn);
                SqlDataReader dra = cmda.ExecuteReader();

                if (dra.Read())
                {
                    TextBox10.Text = dra["name"].ToString();
                    TextBox20.Text = dra["Flat_No"].ToString();




                }
                else
                {
                    TextBox10.Text = "abc";
                }
                dra.Close();
                conn.Close();

            }

        }

    }
}

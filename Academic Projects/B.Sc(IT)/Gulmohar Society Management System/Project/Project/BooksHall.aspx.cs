using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
public partial class BooksHall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        SqlConnection conn = new SqlConnection("Data Source=HP;Initial Catalog=college;Integrated Security=True");
        conn.Open();
        string str = "select * from Hall_Allocation where BookingId='" + DropDownList1.Text + "'";
        SqlCommand com = new SqlCommand(str, conn);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            TextBox1.Text = dr["Subject"].ToString();
            TextBox2.Text = dr["Name"].ToString();


            TextBox3.Text = dr["Flat_No"].ToString();
            TextBox4.Text = dr["Description"].ToString();
            TextBox5.Text = dr["Date"].ToString();
            dr.Close();
            conn.Close();

        }


    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox6.Text == "")
        {
            string message = string.Empty;
            message = "Booking Date Field Cannot Be Blank";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
        }
            else
            {


                string str;
                SqlConnection con = new SqlConnection(@"Data Source=HP;Initial Catalog=college;Integrated Security=True");
                con.Open();
                str = "select count(*) from Hall_Allocation where  Confirm_Date='" + TextBox6.Text + "'";

                SqlCommand com = new SqlCommand(str, con);

                int count = Convert.ToInt32(com.ExecuteScalar());


                if (count > 0)
                {
                    TextBox7.Text = " Rejected";
                    TextBox9.Text = "Sorry Member " + TextBox2.Text +"As Per  The Date" + TextBox6.Text + "Specified By you We Are Not Able To Assign Hall To You on that Date."+"In Case Of Date Change  Please Write Us Using Feedback/Books Hall Tab."+"Sorry For Inconvineance";
                    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
                    con1.Open();

                    string str1 = "update Hall_Allocation set Confirm_Date='" + TextBox6.Text + "', Status = '" + TextBox7.Text + "',Reply='" + TextBox9.Text + "' where BookingId= '" + DropDownList1.Text + "'";
                    SqlCommand cmd1 = new SqlCommand(str1, con1);
                    cmd1.ExecuteNonQuery();
                    GridView1.DataBind();
                    string message2 = string.Empty;
                    message2 = " \tUnsuccessful Booking\\n\\n" + "Since  on Date:-" + TextBox6.Text +   "\\nHall Is Not Available";
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message2 + "');", true);
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";

                    TextBox4.Text = "";

                    TextBox5.Text = "";

                    TextBox6.Text = "";

                    TextBox7.Text = "";
                    TextBox9.Text = "";
                }
                else
                {
                    TextBox7.Text = "Confirmed";
                    TextBox9.Text= "Congratulations  Member " + TextBox2.Text+" For Hall Booking."+" As Per  The Date" + TextBox6.Text + "Specified By you We  Assigned Hall For You."+"In Case Of Cancellation Please Write Us Using Feedback Tab ";

                    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
                    con1.Open();

                    string str1 = "update Hall_Allocation set Confirm_Date='" + TextBox6.Text + "', Status = '" + TextBox7.Text + "',Reply='" + TextBox9.Text + "' where BookingId= '" + DropDownList1.Text + "'";
                    SqlCommand cmd1 = new SqlCommand(str1, con1);
                    cmd1.ExecuteNonQuery();
                    string message3 = string.Empty;
                    message3 = " \tSuccessfully Booked\\n\\n" + "for Member " + TextBox2.Text + "\\n on " + TextBox6.Text + "  ";
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message3 + "');", true);
                    GridView1.DataBind();
                    con1.Close();
                    con.Close();
                    TextBox1.Text = "";
                    TextBox2.Text = "";

                    TextBox3.Text = "";

                    TextBox4.Text = "";

                    TextBox5.Text = "";

                    TextBox6.Text = "";

                    TextBox7.Text = "";

                    TextBox9.Text = "";
                }
            }
            
        }

            
        
    

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox6.Text = Calendar1.SelectedDate.ToLongDateString();
        Calendar1.Visible = false;
    }

  
    
}

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
public partial class MemberRegistration : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    public string message1;
    public string message;

    protected void Page_Load(object sender, EventArgs e)
    {


        Label18.Visible = false;
        Label17.Visible = false;
        Page.Header.Title = " Member Registration";

        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeConnectionString"].ConnectionString);
        conn.Open();

        cmd = new SqlCommand("SELECT max(MemberId) FROM Member_Info", conn);
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            TextBox10.Text = (Convert.ToInt32(dr[0].ToString())+1).ToString();
        }
        else
        {
            TextBox10.Text = "1";
        }
        dr.Close();
        conn.Close();


    }
    protected bool DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        bool result = true;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeConnectionString"].ConnectionString);
        conn.Open();
        cmd = new SqlCommand("select Flat_No from Member_Info where Flat_No = '" + DropDownList2.Text + "'", conn);

        dr = cmd.ExecuteReader();
        if (dr.HasRows)

        {
            dr.Read();
            if (dr[0].ToString() == DropDownList2.Text)
            {
                result = false;
                this.Label17.ForeColor = System.Drawing.Color.Red;
                Label17.Visible = true;
                Label17.Text = DropDownList2.Text + "Flat No has choosen already,please choose another";
            }


            else
            {
                this.Label17.ForeColor = System.Drawing.Color.LightGreen;
                Label17.Visible = true;
                Label17.Text = DropDownList2.Text + "Flat is Available";

               

            }
        }
        dr.Close();
        conn.Close();
        return result;
    }
        

        
    protected bool TextBox6_TextChanged(object sender, EventArgs e)
    {
        bool result = true;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeConnectionString"].ConnectionString);
        conn.Open();
        cmd = new SqlCommand("select email from Member_Info where email = '" + TextBox6.Text + "'", conn);

        SqlDataReader dr = cmd.ExecuteReader();


        if (dr.HasRows)
        {
            dr.Read();
            if (dr[0].ToString() == TextBox6.Text)
            {
                result = false;
                Label18.Visible = true;
                this.Label18.ForeColor = System.Drawing.Color.Red;
                Label18.Text = TextBox6.Text + "Email id exists,please enter another";
            }
            else

            {
                this.Label18.ForeColor = System.Drawing.Color.LightGreen;
                Label18.Visible = true;
                Label18.Text = "Email is Available";

               

            }
        }

        dr.Close();
        conn.Close();
        return result;
    }



    protected void Button1_Click(object sender, EventArgs e)
    {

       
        string pen = CheckBox1.Checked ? "yes,I will pay 5000/-" : "No,i won't";

        string x1 = "-";


        if (TextBox3.Text != "")

        {
            x1 = TextBox3.Text;
        }


        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeConnectionString"].ConnectionString);
        conn.Open();
    


            byte[] image_Byte = new byte[FileUpload1.PostedFile.InputStream.Length + 1];
            FileUpload1.PostedFile.InputStream.Read(image_Byte, 0, image_Byte.Length);
            //Check whether image size 51200 byte or 50 kb 
            long size_img = FileUpload1.PostedFile.InputStream.Length;
            if (size_img <= 51200)
            {

                cmd = new SqlCommand("INSERT INTO Member_Info (MemberId,Flat_No,Resident,Name,Address,City,Pin_Code,Two_Wheeler,Four_Wheeler,contact_1,contact_2,email,password,security_que,ans,Photo,pen) VALUES(@MemberId,@Flat_No,@Resident,@Name,@Address,@City,@Pin_Code,@Two_Wheeler,@Four_Wheeler,@contact_1,@contact_2,@email,@password,@security_que,@ans,@Photo,@pen)", conn);


                cmd.Parameters.AddWithValue("@MemberId", TextBox10.Text);
                cmd.Parameters.AddWithValue("@Flat_No", DropDownList2.Text);
                if (RadioButtonList1.SelectedValue == "Owner" || RadioButtonList1.SelectedValue == "Tenant/Pay n Guest")
                {
                    cmd.Parameters.AddWithValue("@Resident", RadioButtonList1.Text);
                }



                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Two_Wheeler", TextBox9.Text);

                cmd.Parameters.AddWithValue("@Four_Wheeler", TextBox12.Text);

                cmd.Parameters.AddWithValue("@contact_1", TextBox5.Text);
                cmd.Parameters.AddWithValue("@contact_2", x1);
                cmd.Parameters.AddWithValue("@email", TextBox6.Text);

                cmd.Parameters.AddWithValue("@pen", pen);
                cmd.Parameters.AddWithValue("@password", TextBox7.Text);
                cmd.Parameters.AddWithValue("@security_que", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@ans", TextBox13.Text);
                cmd.Parameters.AddWithValue("@Photo", image_Byte);

                int rows = cmd.ExecuteNonQuery();
                Session["name"] = TextBox1.Text;
               
                Response.Write("<script type=text/javascript>alert('Successfully Registered,Welcome To  Our Society');</script>");
            }


            else
            {

                Response.Write("<script type=text/javascript>alert('Unsuccessfull Registering,Check Entered Details');</script>");


            }



            dr.Close();
        
        conn.Close();



        TextBox1.Text = "";
              TextBox3.Text = "";
               TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
       
        TextBox12.Text = "";
        TextBox13.Text = "";
        CheckBox1.Text = "";
        DropDownList1.Text = "";
        //DropDownList2.Text = "";



    }

    


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("MemberRegistration.aspx");
        }





    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {

    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
      
      

      
    }



 
}


 
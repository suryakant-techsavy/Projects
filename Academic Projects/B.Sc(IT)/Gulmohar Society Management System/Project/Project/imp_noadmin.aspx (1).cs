using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class imp_noadmin : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HP;Initial Catalog=college;Integrated Security=True");
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label14.Visible = false;

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        conn.Open();
        string str = "select * from Imp_Numbers where (name like '%' + @name + '%' )Order By name asc";
        SqlCommand com = new SqlCommand(str, conn);
        com.Parameters.Add("@name", SqlDbType.VarChar).Value = TextBox1.Text;
        com.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = com;
        DataSet ds = new DataSet();
        da.Fill(ds, "name");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == "")
        {
            string message1 = string.Empty;
            message1 = "Service Name Textbox Cannot Be Blank";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message1 + "');", true);

        }
        if (TextBox3.Text == "")
        {
            string message2 = string.Empty;
            message2 = "Contact 1 Textbox Cannot Be Blank";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message2 + "');", true);

        }
       
        else
        {
            if (TextBox4.Text == "")
            {
                TextBox4.Text = "0";

            }

                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
                conn.Open();
                string strQuery = "insert into Imp_Numbers(Name,Contact_1,Contact_2)" + " values(@Name,@Contact_1,@Contact_2)";

                SqlCommand cmd = new SqlCommand(strQuery);

                cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Contact_1", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Contact_2", TextBox4.Text);







                try
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = conn;

                    cmd.ExecuteNonQuery();

                    string message = string.Empty;
                    message = " Congratulations!!!Successfully Added.\\n  Service Name is: " + TextBox2.Text.ToString() + "\\n n Contact No 1 is:" + TextBox3.Text.ToString() + "\\n n Contact No 2 is:" + TextBox4.Text.ToString();

                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
                }
                catch (Exception ex)
                {
                    Label14.Visible = true;

                    Label14.Text = ex.Message;

                }

                finally
                {



                    conn.Close();
                    GridView2.DataBind();
                    GridView1.DataBind();
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";

                }
            
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Charges : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

        }

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        
            String strConnString = System.Configuration.ConfigurationManager
                       .ConnectionStrings["collegeConnectionString"].ConnectionString;
            SqlConnection connect = new SqlConnection(strConnString);
            string strQuery = "insert into charges (Type,Amount)" + " values(@Type, @Amount)";

            SqlCommand cmd = new SqlCommand(strQuery);

            cmd.Parameters.AddWithValue("@Type", TextBox12.Text);
            cmd.Parameters.AddWithValue("@Amount", TextBox16.Text);
        

            cmd.CommandType = CommandType.Text;
            cmd.Connection = connect;
            try
            {
                connect.Open();
                cmd.ExecuteNonQuery();
                GridView1.DataBind();

                string message = string.Empty;
                message = " Congratulations!!!new charge insertion successful.\\n  Your type of charge is: " + TextBox12.Text.ToString() + "\\nYour amount is:" + TextBox16.Text.ToString();

                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                connect.Close();
            TextBox12.Text = "";
            TextBox16.Text = "";


            }
          }

}

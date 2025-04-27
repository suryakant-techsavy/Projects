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
using System.IO;

public partial class Flat_Details : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label23.Visible = false;

        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("select name from Login_Info where Flat_No= '" + DropDownList1.Text + "'", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())

        {
            TextBox7.Text = dr["name"].ToString();
            TextBox16.Text = "Occupied";

        }
        else

        {
            TextBox7.Text = "";
            TextBox16.Text = "Vacant";
            Label23.Visible = true;
            Label23.Text = "The Flat No" + DropDownList1.Text + "May Be Vacant Or Resident OF"+DropDownList1.Text+"May Not Be Registered With Us.";
            this.Label23.ForeColor = Color.Red;
        }      
                dr.Close();
        conn.Close();
       
    }

    protected void btnUpload_Click1(object sender, EventArgs e)
    {
        Label24.Text = "";
        Label25.Text = "";
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        conn.Open();
        string strQuery = "insert into Flat_Details(Flat_No,Username,AreaCarpet,AreaBuiltUp,Status,ResidentType,TenantName,Tenant_Picname,Tenant_Picpath)" + " values(@Flat_No,@Username,@AreaCarpet,@AreaBuiltUp,@Status,@ResidentType,@TenantName,@Tenant_Picname,@Tenant_Picpath)";

       
           
            SqlCommand cmd = new SqlCommand(strQuery);

            cmd.Parameters.AddWithValue("@Flat_No", DropDownList1.Text);
        if (FileUpload1.PostedFile != null)
        {
            string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

            //Save files to disk
            FileUpload1.SaveAs(Server.MapPath("Tenantimg/" + FileName));

            cmd.Parameters.AddWithValue("@Tenant_Picname", FileName);
            cmd.Parameters.AddWithValue("@Tenant_Picpath", "Tenantimg/" + FileName);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Tenant_Picname", Label24.Text);
            cmd.Parameters.AddWithValue("@Tenant_Picpath", Label25.Text);

        }
            cmd.Parameters.AddWithValue("@ResidentType", RadioButtonList1.Text);
            cmd.Parameters.AddWithValue("@AreaBuiltUp", TextBox15.Text);



            cmd.Parameters.AddWithValue("@AreaCarpet", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Username", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Status", TextBox16.Text);


            cmd.Parameters.AddWithValue("@TenantName", TextBox5.Text);






            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn;

            cmd.ExecuteNonQuery();

            string message = string.Empty;
            message = " Congratulations!!! Registration successful.\\n  For  Flat No: " + DropDownList1.Text.ToString() + "\\n n Resident is:" + RadioButtonList1.Text.ToString();

            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);




            conn.Close();


        
}

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Flat_Details.aspx");
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(RadioButtonList1.Text=="Owner")
        {
            TextBox5.Text = "";
            Label10.Enabled = false;
            TextBox5.Enabled = false;
            RegularExpressionValidator1.Enabled = false;
            RequiredFieldValidator15.Enabled = false;
            FileUpload1.Enabled = false;
            RequiredFieldValidator12.Enabled = false;
        }
        else
        {
            TextBox5.Text = "";
            Label10.Enabled = true;
            TextBox5.Enabled = true;
            RegularExpressionValidator1.Enabled = true;
            RequiredFieldValidator15.Enabled = true;
            FileUpload1.Enabled = true;
            RequiredFieldValidator12.Enabled = true;
        }
    }
}

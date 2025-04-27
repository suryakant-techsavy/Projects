using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class AddNotices : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox4.Text = DateTime.Now.ToString();
       
            SqlConnection conn = new SqlConnection(@"Data Source=HP;Initial Catalog=college;Integrated Security=True");
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT Short_Notice FROM Notice1 ", conn);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                // TextBox1.Text = dr[0].ToString();
                TextBox3.Text = dr[0].ToString();

            }
        
        TextBox4.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
        con.Open();
        string str1 = "select * from Notice1 where Short_Notice ='" + TextBox3.Text + "'";
        SqlCommand cmd = new SqlCommand(str1, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["collegeConnectionString2"].ConnectionString);
            con1.Open();

            string str = "update Notice1 set Short_Notice='" + TextBox2.Text + "'";
            SqlCommand cmd1 = new SqlCommand(str, con1);
            cmd1.ExecuteNonQuery();
            string message = string.Empty;
            message = " \tSuccessfully Changed Notice Of The Day\\n\\n" + "Your New Notice is:-" + TextBox2.Text;
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            con1.Close();
            con.Close();
        }
        SqlConnection conn = new SqlConnection(@"Data Source=HP;Initial Catalog=college;Integrated Security=True");
        conn.Open();

        SqlCommand cmd2 = new SqlCommand("SELECT Short_Notice FROM Notice1 ", conn);
        SqlDataReader dr1 = cmd2.ExecuteReader();

        if (dr1.Read())
        {
            TextBox3.Text = "\n" + "" + dr1[0].ToString();

        }

        TextBox2.Text = "";
    }


        protected void btnUpload_Click(object sender, EventArgs e)
    {
    
        // Read the file and convert it to Byte Array
        string filePath = FileUpload1.PostedFile.FileName;
        string filename = Path.GetFileName(filePath);
        string ext = Path.GetExtension(filename);
        string contenttype = String.Empty;

        //Set the contenttype based on File Extension
        switch (ext)
        {
            case ".doc":
                contenttype = "application/vnd.ms-word";
                break;
            case ".docx":
                contenttype = "application/vnd.ms-word";
                break;
            case ".xls":
                contenttype = "application/vnd.ms-excel";
                break;
            case ".xlsx":
                contenttype = "application/vnd.ms-excel";
                break;
            case ".jpg":
                contenttype = "image/jpg";
                break;
            case ".png":
                contenttype = "image/png";
                break;
            case ".gif":
                contenttype = "image/gif";
                break;
            case ".pdf":
                contenttype = "application/pdf";
                break;
        }
        if (contenttype != String.Empty)
        {

            Stream fs = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);

            //insert the file into database
            string strQuery = "insert into notice(Name, ContentType, Data,Date)" +
               " values (@Name, @ContentType, @Data,@Date)";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename;
            cmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value
              = contenttype;
            cmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;
            cmd.Parameters.AddWithValue("@Date", TextBox4.Text);
            InsertUpdateData(cmd);
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = "File Uploaded Successfully";
        }
        else
        {
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "File format not recognised." +
              " Upload Image/Word/PDF/Excel formats";
        }
    }
    private Boolean InsertUpdateData(SqlCommand cmd)
    {
        String strConnString = System.Configuration.ConfigurationManager
        .ConnectionStrings["collegeConnectionString2"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            return true;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            return false;
        }
        finally
        {
            
            string str = "select name, contenttype, data,date from notice";
            SqlCommand com = new SqlCommand(str, con);
          
            com.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = com;
            DataSet ds = new DataSet();
            da.Fill(ds);
           
            GridView2.DataBind();
            con.Close();
            
            con.Dispose();
        }

    }

    private DataTable GetData(SqlCommand cmd)
    {
        DataTable dt = new DataTable();
        String strConnString = System.Configuration.ConfigurationManager
        .ConnectionStrings["collegeConnectionString2"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            return dt;
        }
        catch
        {
            return null;
        }
        finally
        {
            con.Close();
            sda.Dispose();
            con.Dispose();
        }
    }









    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}
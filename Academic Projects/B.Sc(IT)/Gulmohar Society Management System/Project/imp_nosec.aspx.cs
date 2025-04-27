using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
public partial class imp_nosec : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HP;Initial Catalog=college;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
   


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        conn.Open();
        string str = "select * from Imp_Numbers where name='"+DropDownList1.Text+"'";
        SqlCommand com = new SqlCommand(str, conn);
        com.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = com;
        DataSet ds = new DataSet();
        da.Fill(ds, "name");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();
    }
}
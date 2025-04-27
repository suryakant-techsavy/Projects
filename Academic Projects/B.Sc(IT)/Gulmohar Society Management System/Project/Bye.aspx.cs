using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
public partial class Bye : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            string strURL = @" Bye-Laws-of-the-Co-Operative-Housing-Societies.docx";
            WebClient req = new WebClient();
            HttpResponse response = HttpContext.Current.Response;
            response.Clear();
            response.ClearContent();
            response.ClearHeaders();
            response.Buffer = true;
            response.AddHeader("Content-Disposition", "attachment;filename=\"" + Server.MapPath(strURL) + "\"");
            byte[] data = req.DownloadData(Server.MapPath(strURL));
            response.BinaryWrite(data);
            response.End();
        }
        catch (Exception ex)
        {
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            string strURL = @" Bye-Laws-of-the-Co-Operative-Housing-Societies.pdf";
            WebClient req = new WebClient();
            HttpResponse response = HttpContext.Current.Response;
            response.Clear();
            response.ClearContent();
            response.ClearHeaders();
            response.Buffer = true;
            response.AddHeader("Content-Disposition", "attachment;filename=\"" + Server.MapPath(strURL) + "\"");
            byte[] data = req.DownloadData(Server.MapPath(strURL));
            response.BinaryWrite(data);
            response.End();
        }
        catch (Exception ex)
        {
        }

    }
}


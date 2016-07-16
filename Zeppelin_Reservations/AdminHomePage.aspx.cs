using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;



public partial class AdminHomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            try
            {
                string qry = "INSERT INTO ZeppelinFlight VALUES ('" + TextBox1.Text + " ', '" +
               TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox14.Text + "', '" + TextBox5.Text +
               "', '" + TextBox6.Text + "', '" + TextBox7.Text + "', '" + TextBox8.Text + "', '" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "', '" + TextBox12.Text + "','" + TextBox13.Text + "')";
                SqlConnection dbConnection = new SqlConnection();
                dbConnection.ConnectionString =
                "server=SSEDB;user=tahrisqallim;password=datadata2014;database=tahrisqallim";
                dbConnection.Open();
                SqlCommand qryCommand = new SqlCommand(qry, dbConnection);
                qryCommand.ExecuteNonQuery();
            }
            catch (Exception Excep)
            {
                // Display Excep msg in Label1
            }
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        string qry = "Select zf_destinationAirport from ZeppelinReservation R inner join ZeppelinFlight F on R.zres_flightID=F.zf_ID ";
        SqlConnection dbConnection = new SqlConnection();
        dbConnection.ConnectionString =
        "server=SSEDB;user=tahrisqallim;password=datadata2014;database=tahrisqallim";
        dbConnection.Open();
        SqlCommand qryCommand = new SqlCommand(qry, dbConnection);
        qryCommand.ExecuteNonQuery();
        string favdestination = qryCommand.ExecuteScalar().ToString();
        string imagepath = Server.MapPath("Images");
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        iTextSharp.text.Image gif = iTextSharp.text.Image.GetInstance(imagepath + "/zeppelin-logo.png");
        pdfDoc.Add(gif);
        pdfDoc.Add(new Paragraph("                   Zeppelin Reservation Report       " + DateTime.Today.ToString("yyyy-MM-dd")));
        pdfDoc.Add(new Paragraph("                   "));
        pdfDoc.Add(new Paragraph("                   The most Popular Destination is:" + favdestination));
        string qry1 = "Select SUM(zf_price) from ZeppelinReservation R inner join ZeppelinFlight F on R.zres_flightID=F.zf_ID ";

        SqlConnection dbConnection1 = new SqlConnection();
        dbConnection1.ConnectionString =
        "server=SSEDB;user=tahrisqallim;password=datadata2014;database=tahrisqallim";
        dbConnection1.Open();

        SqlCommand qryCommand1 = new SqlCommand(qry1, dbConnection1);
        qryCommand1.ExecuteNonQuery();
        string totamount = qryCommand1.ExecuteScalar().ToString();
        pdfDoc.Add(new Paragraph("                   Totat amount of reservations sold: $" + totamount));
        string qry2 = "Select Count(zf_price) from ZeppelinReservation R inner join ZeppelinFlight F on R.zres_flightID=F.zf_ID ";

        SqlConnection dbConnection2 = new SqlConnection();
        dbConnection2.ConnectionString =
        "server=SSEDB;user=tahrisqallim;password=datadata2014;database=tahrisqallim";
        dbConnection2.Open();

        SqlCommand qryCommand2 = new SqlCommand(qry2, dbConnection2);
        qryCommand2.ExecuteNonQuery();
        string numberofreser = qryCommand2.ExecuteScalar().ToString();
        pdfDoc.Add(new Paragraph("                   Totat number of reservations sold: " + numberofreser));

        pdfDoc.Close();
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;" +
                                       "filename=report.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Write(pdfDoc);
        Response.End();
    }
    
}
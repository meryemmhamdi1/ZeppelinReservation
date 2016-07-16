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
using iTextSharp.text.html.simpleparser;
using System.IO;


public partial class OrderSummary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int userID = (int)(Session["userID"]);
        int flight_ID = (int)(Session["flight_ID"]);
        int zres_ID = (int)(Session["zres_ID"]);
        SqlConnection dbConnection = new SqlConnection();
        dbConnection.ConnectionString =
            "server=SSEDB;user=tahrisqallim;password=datadata2014;database=tahrisqallim";
        dbConnection.Open();
        string commandqry = "Select zu_fname from ZeppelinUser where zu_ID= "+userID;
        SqlCommand fname = new SqlCommand(commandqry, dbConnection);
        string first_name = fname.ExecuteScalar().ToString();
        
        string commandqry1 = "Select zu_lname from ZeppelinUser where zu_ID= "+userID;
        SqlCommand lname = new SqlCommand(commandqry1, dbConnection);
        string last_name = lname.ExecuteScalar().ToString();
        
        string commandqry2 = "Select zu_address from ZeppelinUser where zu_ID= "+userID;
        SqlCommand address_qry = new SqlCommand(commandqry2, dbConnection);
        string address = address_qry.ExecuteScalar().ToString();

        string commandqry3 = "Select zf_departureAirport from ZeppelinFlight where zf_ID= "+flight_ID;
        SqlCommand dairport_qry = new SqlCommand(commandqry3, dbConnection);
        string departure_airport = dairport_qry.ExecuteScalar().ToString();

         string commandqry4 = "Select zf_destinationAirport from ZeppelinFlight where zf_ID= "+flight_ID;
        SqlCommand aairport_qry = new SqlCommand(commandqry4, dbConnection);
        string arrival_airport = aairport_qry.ExecuteScalar().ToString();

          string commandqry5 = "Select zf_departureDate from ZeppelinFlight where zf_ID= "+flight_ID;
        SqlCommand ddate_qry = new SqlCommand(commandqry5, dbConnection);
        string departure_date = ddate_qry.ExecuteScalar().ToString();

         string commandqry6 = "Select zf_arrivalDate from ZeppelinFlight where zf_ID= "+flight_ID;
        SqlCommand adate_qry = new SqlCommand(commandqry6, dbConnection);
        string arrival_date = adate_qry.ExecuteScalar().ToString();

        string commandqry7 = "Select zf_departureTime from ZeppelinFlight where zf_ID= "+flight_ID;
        SqlCommand dtime_qry = new SqlCommand(commandqry7, dbConnection);
        string departure_time = dtime_qry.ExecuteScalar().ToString();

        string commandqry8 = "Select zf_arrivalTime from ZeppelinFlight where zf_ID= "+flight_ID;
        SqlCommand atime_qry = new SqlCommand(commandqry8, dbConnection);
        string arrival_time = atime_qry.ExecuteScalar().ToString();

          string commandqry9 = "Select zres_class from ZeppelinReservation where zres_ID= "+zres_ID;
        SqlCommand class_qry = new SqlCommand(commandqry9, dbConnection);
        string z_class = class_qry.ExecuteScalar().ToString();

        TextBox1.Text=first_name+last_name;
          TextBox2.Text=address;
           TextBox3.Text=userID.ToString();
            TextBox4.Text=flight_ID.ToString();
             TextBox5.Text=zres_ID.ToString();
              TextBox6.Text=departure_airport;
               TextBox7.Text=arrival_airport;
                TextBox8.Text=departure_date;
                 TextBox9.Text=arrival_date;
                  TextBox10.Text=departure_time;
                   TextBox11.Text=arrival_time;
                   TextBox12.Text = z_class;
    }
   
    protected void Button_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button_Click(object sender, EventArgs e)
    {
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        string imagepath = Server.MapPath("Images");
        iTextSharp.text.Image gif = iTextSharp.text.Image.GetInstance(imagepath + "/zeppelin-logo.png");
        pdfDoc.Add(gif);
        pdfDoc.Add(new Paragraph(" "));
        pdfDoc.Add(new Paragraph(" "));
        pdfDoc.Add(new Paragraph("                                             Order Summary"));
        pdfDoc.Add(new Paragraph(" "));
        pdfDoc.Add(new Paragraph(" "));
        pdfDoc.Add(new Paragraph("              Name:                "+TextBox1.Text));
        pdfDoc.Add(new Paragraph(" "));
        pdfDoc.Add(new Paragraph("              Address:             " + TextBox2.Text));
        pdfDoc.Add(new Paragraph(" "));
        pdfDoc.Add(new Paragraph("              User ID:             " + TextBox3.Text));
        pdfDoc.Add(new Paragraph(" "));
        pdfDoc.Add(new Paragraph("              Flight Number:       " + TextBox4.Text));
        pdfDoc.Add(new Paragraph(" "));
        pdfDoc.Add(new Paragraph("              Reservation Number:  " + TextBox5.Text));
        pdfDoc.Add(new Paragraph(" "));
        pdfDoc.Add(new Paragraph("              Departure Airport:   " + TextBox6.Text));
        pdfDoc.Add(new Paragraph(" "));
        pdfDoc.Add(new Paragraph("              Arrival Airport:     " + TextBox7.Text));
        pdfDoc.Add(new Paragraph(" "));
        pdfDoc.Add(new Paragraph("              Departure Date:      " + TextBox8.Text));
        pdfDoc.Add(new Paragraph(" "));
        pdfDoc.Add(new Paragraph("              Arrival Date:        " + TextBox9.Text));
        pdfDoc.Add(new Paragraph(" "));
        pdfDoc.Add(new Paragraph("              Departure Time:      " + TextBox10.Text));
        pdfDoc.Add(new Paragraph(" "));
        pdfDoc.Add(new Paragraph("              Arrival Time:        " + TextBox11.Text));
        pdfDoc.Add(new Paragraph(" "));
        pdfDoc.Add(new Paragraph("              Class:               " + TextBox12.Text));
        pdfDoc.Add(new Paragraph(" "));

        pdfDoc.Close();
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;" +
                                       "filename=sample.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Write(pdfDoc);
        Response.End();
    }
}
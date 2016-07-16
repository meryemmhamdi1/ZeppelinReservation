using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;


public partial class ClientHomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        MakePayment.Visible = false;
    }
    protected void DropDownList2_Load(object sender, EventArgs e)
    {
        int [] StrArray= { 1, 2, 3, 4, 5, 6, 7, 8 };
        DropDownList2.DataSource = StrArray;
        DropDownList2.DataBind();
    }
  
    protected void Search_Click(object sender, EventArgs e)
    {
       
        string cnx = "server=SSEDB;user=tahrisqallim;password=datadata2014;database=tahrisqallim";
        SqlConnection mycnx = new SqlConnection(cnx);

        try
        {

            if (departure_date.Text.Trim().Length == 0 || arrival_date.Text.Trim().Length == 0 || departure_airport.Text.Trim().Length == 0 || arrival_airport.Text.Trim().Length == 0)
            {
                Label1.Visible = true;
                Label1.Text = "Please make sure you enter all fields!";
            }
            else
            {
                string retString;
                if (DropDownList3.SelectedValue == "Business")
                {
                     retString = "Select count(*) from ZeppelinFlight where zf_departureDate='" + departure_date.Text + "' and zf_arrivalDate='" + arrival_date.Text + "' and zf_departureAirport='" + departure_airport.Text + "' and zf_destinationAirport='" + arrival_airport.Text + "' and seatLeftBusiness>" + DropDownList2.Text;
                }
                else
                {
                    retString = "Select count(*) from ZeppelinFlight where zf_departureDate='" + departure_date.Text + "' and zf_arrivalDate='" + arrival_date.Text + "' and zf_departureAirport='" + departure_airport.Text + "' and zf_destinationAirport='" + arrival_airport.Text + "' and seatLeftEconomy>" + DropDownList2.Text;
                }

                    mycnx.Open();


                SqlCommand cmd = new SqlCommand(retString, mycnx);
                short count = Convert.ToInt16(cmd.ExecuteScalar().ToString());


                if (count == 1)
                {
                     string sqlcom;
                     if (DropDownList3.SelectedValue == "Business")
                     {
                         sqlcom = "Select * from ZeppelinFlight where zf_departureDate='" + departure_date.Text + "' and zf_arrivalDate='" + arrival_date.Text + "' and zf_departureAirport='" + departure_airport.Text + "' and zf_destinationAirport='" + arrival_airport.Text + "' and seatLeftBusiness>" + DropDownList2.Text;

                     }
                     else
                     {
                         sqlcom = "Select * from ZeppelinFlight where zf_departureDate='" + departure_date.Text + "' and zf_arrivalDate='" + arrival_date.Text + "' and zf_departureAirport='" + departure_airport.Text + "' and zf_destinationAirport='" + arrival_airport.Text + "' and seatLeftEconomy>" + DropDownList2.Text;
                     }
                    SqlCommand cmd1 = new SqlCommand(sqlcom, mycnx);
                    SqlDataReader reader = cmd1.ExecuteReader();
                    
                    GridView1.Visible = true;
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                    GridView1.AutoGenerateColumns = true;
                    GridView1.AutoGenerateSelectButton = true;
                    reader.Close();
                    int flight_ID = (int)cmd1.ExecuteScalar();
                    Session.Add("flight_ID", flight_ID);
                    Label1.Visible = true;
                    Search.Text = "Book";
                 
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "No flights found";
                    GridView1.Visible = false;
                }
            }
        }
        catch (SqlException sqle)
        {
            Label1.Text = "Error";
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[0].Text = "Book";
            e.Row.Cells[1].Text = "ID";
            e.Row.Cells[2].Text = "Departure Date";
            e.Row.Cells[3].Text = "Departure Time";
            e.Row.Cells[4].Text = "Arrival Date";
            e.Row.Cells[5].Text = "Arrival Time";
            e.Row.Cells[6].Text = "Departure Airport";
            e.Row.Cells[7].Text = "Arrival Airport";
            e.Row.Cells[8].Text = "Price";
            e.Row.Cells[9].Text = "Currency";
            e.Row.Cells[10].Text = "Number of Stops";
            e.Row.Cells[11].Text = "Zeppelin";
            e.Row.Cells[12].Text = "Seats Left";
          
        }
    }
    protected void SearchTrip_Click(object sender, EventArgs e)
    {
        string cnx = "server=SSEDB;user=tahrisqallim;password=datadata2014;database=tahrisqallim";
        SqlConnection mycnx = new SqlConnection(cnx);

        try
        {

           /* if (ConfirmationNumber.Text.Trim().Length == 0 && arrival_date.Text.Trim().Length == 0 && departure_airport.Text.Trim().Length == 0 )
            {
                Label1.Visible = true;
                Label1.Text = "Please make sure you enter all fields!";
            }
            else
            {*/
                string retString = "Select count(*) from ZeppelinReservation R inner join ZeppelinFlight F on R.zres_flightID=F.zf_ID where zres_ID ="+Int32.Parse(ConfirmationNumber.Text); 
                mycnx.Open();


                SqlCommand cmd = new SqlCommand(retString, mycnx);
                short count = Convert.ToInt16(cmd.ExecuteScalar().ToString());


                if (count == 1)
                {
                    string sqlcom =  "Select zres_ID, zres_flightID,zres_ClientID, zres_quantity, zres_class, zres_rating, zres_comment from ZeppelinReservation R inner join ZeppelinFlight F on R.zres_flightID=F.zf_ID where zres_ID = "+Int32.Parse(ConfirmationNumber.Text); 
                    SqlCommand cmd1 = new SqlCommand(sqlcom, mycnx);
                    SqlDataReader reader = cmd1.ExecuteReader();

                    GridView2.DataSource = reader;
                    GridView2.DataBind();
                    

                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "No Reservation found";
                    GridView2.Visible = false;
                }
            }
        //}
        catch (SqlException sqle)
        {
            Label1.Text = "Error";
        }
    }
    protected void GridView1_Load(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
    protected void GridView2_Load(object sender, EventArgs e)
    {
        GridView2.Visible = true;
    }
    protected void DropDownList3_Load(object sender, EventArgs e)
    {
        String[] classmenu = { "Business","Economy" };
        DropDownList3.DataSource = classmenu;
        DropDownList3.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       GridViewRow row = GridView1.SelectedRow;
       int userID = (int)(Session["userID"]);
        try
        {
           
            string qry = "INSERT INTO ZeppelinReservation (zres_flightID,zres_clientID,zres_quantity,zres_class) VALUES (" + row.Cells[1].Text + "," + userID + "," + DropDownList2.Text + ",'" + DropDownList3.Text + "')";
           
            SqlConnection dbConnection = new SqlConnection();
            dbConnection.ConnectionString =
            "server=SSEDB;user=tahrisqallim;password=datadata2014;database=tahrisqallim";
            dbConnection.Open();
            SqlCommand qryCommand = new SqlCommand(qry, dbConnection);
            qryCommand.ExecuteNonQuery();
            
            MakePayment.Visible = true;
            /*string commandqry = "Select zres_ID from ZeppelinReservation where zres_clientID= "+userID;
            SqlCommand ID = new SqlCommand(commandqry, dbConnection);
            int zres_ID = (int)ID.ExecuteScalar();
            Session.Add("userID", userID);
            Session.Add("zres_ID", zres_ID);*/
              
        }
        catch (Exception Excep)
        {
            Label2.Visible = true;
            Label2.Text = "Reservation couldn't be added:"+ row.Cells[1].Text+","+userID + "," + DropDownList2.Text + "," + DropDownList3.Text;
           
        }
    }
    protected void MakePayment_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("Payment.aspx");
    }
  
}
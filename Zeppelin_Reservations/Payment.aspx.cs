using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   
    protected void DropDownList2_Load(object sender, EventArgs e)
    {
        String[] types= { "Visa", "American Express", "Master Card" };
        DropDownList2.DataSource = types;
        DropDownList2.DataBind();
    }
    protected void DropDownList3_Load(object sender, EventArgs e)
    {
        String[] months = { "Month", "January", "February","March","April","May","June","July","August","September","October","November","December" };
        DropDownList3.DataSource = months;
        DropDownList3.DataBind();
    }
    protected void DropDownList4_Load(object sender, EventArgs e)
    {
        String[] years = { "Year", "2014", "2015", "2016", "2017", "2018", "2019", "2020"};
        DropDownList4.DataSource = years;
        DropDownList4.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int zres_ID = (int)(Session["zres_ID"]);
        int user_ID = (int)(Session["userID"]);
        int flight_ID = (int)(Session["flight_ID"]);
        try
        {
            SqlConnection dbConnection = new SqlConnection();
            dbConnection.ConnectionString = "server=SSEDB;user=tahrisqallim;password=datadata2014;database=tahrisqallim";
            dbConnection.Open();
            
            string amount = "SELECT F.zf_price FROM ZeppelinFlight F inner join ZeppelinReservation R ON F.zf_ID = R.zres_flightID where R.zres_ID="+zres_ID;
            SqlCommand price = new SqlCommand(amount, dbConnection);
            Label3.Text = "Payment Successful and zres_ID=";
            double price_amount  = (double) (int) price.ExecuteScalar();
            Label3.Text = "Payment Successful and zres_ID=" + zres_ID+"and price="+price_amount;
            string qry = "INSERT INTO ZeppelinPayment (zp_type,zp_amount,zp_creditcardnumber,zp_creditcardID,zp_endvalidation,zres_ID) VALUES ('"+ DropDownList2.Text+"',"+price_amount +","+TextBox1.Text+ ","+TextBox2.Text+",'"+DropDownList3.Text+DropDownList4.Text+"',"+zres_ID+")";
            SqlCommand qryCommand = new SqlCommand(qry, dbConnection);
            qryCommand.ExecuteNonQuery();
          
            Session.Add("user_ID", user_ID);
            Session.Add("zres_ID", zres_ID);
            Session.Add("flight_ID", flight_ID);
            Response.Redirect("OrderSummary.aspx");
        }
        catch (Exception Excep)
        {
           // Label3.Text = "Payment not successful";

        }
    }
}
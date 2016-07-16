using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string gender = rbgender.SelectedValue;
      
        try
        {

            
            string add_user = "INSERT INTO ZeppelinUser (zu_username,zu_password,zu_fname,zu_lname,zu_gender,zu_birthdate,zu_email,zu_address,zu_city,zu_country,zu_zipcode,zu_phonenum,zu_securityQuestion,zu_securityAnswer,zu_type) VALUES ('" + username.Text + "','" + password.Text + "','" + first_name.Text + "','" + last_name.Text + "','" + gender + "','" + Calendar1.SelectedDate.ToString() + "','" + email.Text + "','" + address.Text + "','" + city.Text + "','" + country.Text + "'," + zipcode.Text + "," + phone.Text + ",'" + DropDownList1.SelectedValue.ToString() + "','" + answer.Text + "','client')";
            
            SqlConnection dbConnection = new SqlConnection();
            dbConnection.ConnectionString =
            "server=SSEDB;user=tahrisqallim;password=datadata2014;database=tahrisqallim";
            dbConnection.Open();
       
            SqlCommand qryCommand = new SqlCommand(add_user, dbConnection);
            qryCommand.ExecuteNonQuery();
            Label1.Text = "Successful Registration";
            Label1.Visible = true;

        }
        catch (SqlException sqle)
        {
           // Label1.Text= sqle.StackTrace;
            Label1.Text = "Registration not successful. Parameters are:'" + username.Text + "','" + password.Text + "','" + first_name.Text + "','" + last_name.Text + "','" + gender + "','" + Calendar1.SelectedDate.ToString() + "','" + email.Text + "','" + address.Text + "','" + city.Text + "','" + country.Text + "'," + zipcode.Text + "," + phone.Text + ",'" + DropDownList1.SelectedValue.ToString() + "','" + answer.Text + "client" ;
            Label1.Visible = true;
        }
    }
    protected void DropDownList1_Load(object sender, EventArgs e)
    {
        String[] questions = { "What is the name of the city in which you were born?", "What is the name of your first pet?", "What is the brand of your first car?"};
        DropDownList1.DataSource = questions;
        DropDownList1.DataBind();
    }
}
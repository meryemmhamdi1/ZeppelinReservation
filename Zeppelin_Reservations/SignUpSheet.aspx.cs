using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignUpSheet : System.Web.UI.Page
{
 
    protected void Page_Load(object sender, EventArgs e)
    {
         string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
       try{
           SqlConnection dbConnection = new SqlConnection();
           dbConnection.ConnectionString = connStr;
           dbConnection.Open();
           int userID = (int)(Session["userID"]);

           string selectqry = "SELECT  zu_username,zu_password,zu_fname,zu_lname,zu_gender,zu_birthdate,zu_email,zu_address,zu_city,zu_country,zu_zipcode,zu_phonenum,zu_securityQuestion,zu_securityAnswer,zu_type FROM ZeppelinUser where zu_ID=" + userID;


           SqlCommand selectqryCommand = new SqlCommand(selectqry, dbConnection);
           SqlDataReader myReader = selectqryCommand.ExecuteReader();
           while (myReader.Read())
           {
               TextBox2.Text = myReader[0].ToString();
               TextBox3.Text = myReader[1].ToString();
               TextBox4.Text = myReader[2].ToString();
               TextBox5.Text = myReader[3].ToString();
               DropDownList1.Text = myReader[4].ToString();
               TextBox6.Text = myReader[5].ToString();
               TextBox7.Text = myReader[6].ToString();
               TextBox8.Text = myReader[7].ToString();
               TextBox9.Text = myReader[8].ToString();
               TextBox10.Text = myReader[9].ToString();
               TextBox11.Text = myReader[10].ToString();
               TextBox12.Text = myReader[11].ToString();
               DropDownList2.Text = myReader[12].ToString();
               TextBox13.Text = myReader[13].ToString();
               DropDownList3.Text = myReader[14].ToString();
           }
           
         
            }
            catch (Exception Excep)
            {
                String ErrMsg = Excep.ToString();
               
                

            } 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         
       try{
          
           int userID = (int)(Session["userID"]);

           string qry = " UPDATE ZeppelinUser SET zu_username='" + TextBox2.Text + "',zu_password='" + TextBox3.Text + "',zu_fname='" + TextBox4.Text + "',zu_lname='" + TextBox5.Text + "',zu_gender='" + DropDownList1.Text + "',zu_birthdate='" + TextBox6.Text + "',zu_email='" + TextBox7.Text + "',zu_address='" + TextBox8.Text + "' ,zu_city='" + TextBox9.Text + "' ,zu_country='" + TextBox10.Text + "' ,zu_zipcode=" + TextBox11.Text + " ,zu_phonenum=" + TextBox12.Text + ",zu_securityQuestion='" + DropDownList2.Text + "',zu_securityAnswer='" + TextBox13.Text + "',zu_type='" + DropDownList3.Text + "' WHERE zu_ID=" + userID;
          
           SqlConnection dbConnection = new SqlConnection();
           dbConnection.ConnectionString =
           "server=SSEDB;user=tahrisqallim;password=datadata2014;database=tahrisqallim";
           dbConnection.Open();
           Label1.Text = "Test";

           SqlCommand qryCommand = new SqlCommand(qry, dbConnection);
           qryCommand.ExecuteNonQuery();
           Label1.Text = "Successful Update";
            }
            catch (Exception Excep)
            {
                String ErrMsg = Excep.ToString();

               // Label1.Text = "update not successful";
            } 
    }
    
}
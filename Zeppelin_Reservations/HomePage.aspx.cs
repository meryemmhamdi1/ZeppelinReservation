using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       Label1.Visible = false;

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Passwordtextbox_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        string cnx = "server=SSEDB;user=tahrisqallim;password=datadata2014;database=tahrisqallim";
        SqlConnection mycnx = new SqlConnection(cnx);

        try
        { 
            string retString = "Select count(*) FROM ZeppelinUser where zu_username='" + Usernametextbox.Text + "'";

            
            mycnx.Open();

            SqlCommand cmd = new SqlCommand(retString, mycnx);
            short count = Convert.ToInt16(cmd.ExecuteScalar().ToString());
           
            if (count == 1)
            {
                string retString2 = "Select zu_password FROM ZeppelinUser where zu_username='" + Usernametextbox.Text + "'";
       
                SqlCommand pass = new SqlCommand(retString2, mycnx);
                string password = pass.ExecuteScalar().ToString();
                mycnx.Close();
              
                 
                if (password == Passwordtextbox.Text)
                {

                  
                    Session["New"] = Usernametextbox.Text.ToString();

                    Session["flag"] = 1;
                    Label1.Visible = true;
                    Label1.Text = "Sucessful Login";
                    mycnx.Open();
                    string retString3 = "Select zu_type FROM ZeppelinUser where zu_username='" + Usernametextbox.Text + "'";
                    SqlCommand type = new SqlCommand(retString3, mycnx);
                    string usertype = type.ExecuteScalar().ToString();
                    string retString4 = "Select zu_ID FROM ZeppelinUser where zu_username='" + Usernametextbox.Text + "'";
                    SqlCommand ID = new SqlCommand(retString4, mycnx);
                    int userID = (int) ID.ExecuteScalar();
                    Label1.Text = "Redirect"+usertype;
                    if (usertype == "client")
                    {
                        Session.Add("userID", userID);
                       Response.Redirect("ClientHomePage.aspx");
                    }
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "The Password you entered is wrong ! Please Try again";
                }

            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "The username you entered doesn't exist !";
            }
        }
        catch (SqlException sqle)
        {
            Label1.Text = "Error" ;
        }
   
    }
}
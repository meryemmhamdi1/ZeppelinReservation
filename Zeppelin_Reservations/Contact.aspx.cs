using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;


public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("tahrisqalli@gmail.com");
                mail.To.Add(TextBox1.Text);
                mail.Subject = TextBox2.Text;
                mail.Body = TextBox3.Text;

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("tahrisqalli", "auiaui2011");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
              //  MessageBox.Show("mail Send");
            }
            catch (Exception ex)
            {
               // MessageBox.Show(ex.ToString());
            }
        }
    }

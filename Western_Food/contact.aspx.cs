using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Western_Food
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSendEmail_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();

            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;

            System.Net.NetworkCredential credentials =
                new System.Net.NetworkCredential("nhbhaw.3788@gmail.com", "bibiwahab14");
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;

            MailMessage msg = new MailMessage("sender@server.com", "recipient@server.co.uk");
            msg.Subject = "Name: " + txtName.Text + "Subject: " + txtSubj.Text;
            msg.Body = txtMsg.Text;

            smtpClient.Send(msg);

        }
            
       
    }
}
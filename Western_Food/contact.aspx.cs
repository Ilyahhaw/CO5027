﻿using System;
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

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials =
                new System.Net.NetworkCredential("nhbhaw.3788@gmail.com", "Sirah128");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("nhbhaw.3788@gmail.com", txtEmail.Text);
            msg.Subject = "Name: " + txtName.Text + " Subject: " + txtSubject.Text;
            msg.Body = txtMessage.Text;

            smtpClient.Send(msg);

            try
            {
                smtpClient.Send(msg);
                litResult.Text =
                    "<p>Success, your message has been send.. Thankyou for contact us..</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                litResult.Text =
                    "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }
}
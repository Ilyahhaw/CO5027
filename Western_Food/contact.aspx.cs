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

        protected void BtnSendEmail_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials =
                new System.Net.NetworkCredential("c05027lcb@gmail.com", "P@55word1");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("c05027lcb@gmail.com", txtEmail.Text);
            msg.Subject = "Name: " + txtName.Text + " Subject: " + txtSubj.Text;
            msg.Body = txtMsg.Text;
            smtpClient.Send(msg);

            try
            {
                smtpClient.Send(msg);
                litResult.Text =
                    "<p>Your email has been successfully sent.. Thankyou for contact us..</p>";
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
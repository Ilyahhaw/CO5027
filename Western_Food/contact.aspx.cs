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

            System.Net.NetworkCredential credentials =
                new System.Net.NetworkCredential("c05027@gmail.com", "P@55word1");
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;

            MailMessage msg = new MailMessage("sender@server.com", "recipient@server.co.uk");
            msg.Subject = "Name: " + txtName.Text + "Subject: " + txtSubj.Text;
            msg.Body = txtMsg.Text;

            smtpClient.Send(msg);

            try
            {
                smtpClient.Send(msg);
                literal1.Text =
                    "<p> Your email has been successfully sent.. Thankyou for contact us..";
            }
            
            catch (Exception ex)
            {
                //display the full error to the user
                literal1.Text =
                    "<p> Send Failed : " + ex.Message + "!" + ex.InnerException + "</p>";
            }
        }
            
       
    }
}
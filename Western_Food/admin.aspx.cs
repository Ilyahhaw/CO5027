using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Western_Food
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddEntry_Click(object sender, EventArgs e)
        {
            Product entry = new Product ();
            //entry.ProductID = Convert.ToInt32(txtProductID.Text);
            entry.ProductName = txtProductName.Text;
            entry.Description = txtDescription.Text;
            entry.Price = Convert.ToDecimal(txtPrice.Text);
            entry.Quantity = Convert.ToInt32(txtQuantity.Text);
            DatabaseEntities db = new DatabaseEntities();
            db.Products.Add(entry);
            //db.SaveChanges();

            //get the extension of our image file
            string extension = (System.IO.Path.GetExtension(fileuploadControl.FileName).ToLower());
            //check the extension is valid
            if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif")
            {
                //load the image in memory so we can determine it's dimesions
                System.Drawing.Image img = System.Drawing.Image.FromStream(fileuploadControl.PostedFile.InputStream);
                int width = img.Width;
                int height = img.Height;
                //save the image data
                entry.ImgAlt = txtAltText.Text;
                entry.ImgWidth = width;
                entry.ImgHeight = height;
                entry.ImgExt = extension;
                db.Products.Add(entry);
                db.SaveChanges();
                //assemble the filename
                string filename = entry.ProductID.ToString() + extension;


                //save the image file (we could have alternatively saved the posted file
                //but this would save any modifications we many have made to the image)
                img.Save(Server.MapPath("~/UploadedImages/" + filename));
                //inform the user
                litResult.Text = "<p>Your file was uploaded as " + filename + " in the UploadedImages folder</p>";
            }
            else
            {
                db.SaveChanges();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            HttpContext.Current.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminlogin.aspx", true);
        }
    }
}
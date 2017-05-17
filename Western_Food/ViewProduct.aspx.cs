using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Western_Food
{
    public partial class ViewProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string entryIdString = Request.QueryString["ProductID"];
            int entryId = int.Parse(entryIdString);
            DatabaseEntities db = new DatabaseEntities();
            var entry = db.Products.Single(p => p.ProductID == entryId);

            //build the filename
            string filename = entry.ProductID.ToString() + entry.ImgExt;
            //set the image control's attributes
            imageControl.AlternateText = entry.ImgAlt;
            //imageControl.Width = (Unit)entry.ImgWidth;
            //imageControl.Height = (Unit)entry.ImgHeight;
            imageControl.ImageUrl = ("UploadedImages/" + filename).Trim();
        }

    }
}
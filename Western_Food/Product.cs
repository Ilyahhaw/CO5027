//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Western_Food
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        public Product(int productId)
        {
            ProductID = productId;
        }

        public Product()
        {
        }

        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public decimal Price { get; set; }
        public int Quantity { get; set; }
        public string Description { get; set; }
        public string ImgAlt { get; set; }
        public Nullable<int> ImgWidth { get; set; }
        public Nullable<int> ImgHeight { get; set; }
        public string ImgExt { get; set; }
    }
}
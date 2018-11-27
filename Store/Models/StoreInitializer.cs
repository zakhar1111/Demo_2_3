using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Store.Models
{
    public class StoreInitializer : System.Data.Entity.DropCreateDatabaseIfModelChanges<StoreContext>
    {
        protected override void Seed(StoreContext context)
        {
            var products = new List<Product>
            {
            new Product{Name="Kayak", Description="A boat for one persone",Category="Watersport", Price = 275},
            new Product{Name="Lifejacket", Description="Protective and fashionable",Category="Watersport", Price = 49},
            new Product{Name="Soccer Ball", Description="FIFA-approved size and weight",Category="Soccer", Price = 20}
            };

            products.ForEach(s => context.Products.Add(s));
            context.SaveChanges();
        }
    }
}
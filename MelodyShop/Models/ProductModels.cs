using MelodyShop.Service.Entity;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace MelodyShop.Models
{
  public class ProductModels
  {
    public int id { get; set; }

    [Display(Name = "Nazwa")]
    public string name { get; set; }

    [Display(Name = "Kategoria")]
    public string category { get; set; }

    [Display(Name = "Cena")]
    public decimal price { get; set; }

    [Display(Name = "Szczegóły")]
    public string detail { get; set; }

    public List<ProductModels> GetProductModels(List<Product> products)
    {
      var productModelList = new List<ProductModels>();
      foreach (var product in products)
      {
        var item = new ProductModels();
        item.id = product.id;
        item.name = product.name;
        item.category = product.category;
        item.price = product.price;
        item.detail = product.detail;
        productModelList.Add(item);
      }
      return productModelList;
    }
  }
}
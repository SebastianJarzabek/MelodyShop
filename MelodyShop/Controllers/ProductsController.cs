using MelodyShop.Models;
using MelodyShop.Service.Logic;
using System.Web.Mvc;

namespace MelodyShop.Controllers
{
  public class ProductsController : Controller
  {
    // GET: Products
    public ActionResult Index()
    {
      var products = new Products();
      var productsModels = new ProductModels();
      var productModelList = productsModels.GetProductModels(products.GetProducts());
      return View(productModelList);
    }

    // GET: Products/Details/{id}
    public ActionResult Details(int id)
    {
      var products = new Products();
      var productsModels = new ProductModels();
      var productModelList = productsModels.GetProductModels(products.GetProducts());
      var product = productModelList.Find(x => x.id == id);
      return View(product);
    }

    // GET: Products/Create
    public ActionResult Create()
    {
      return View();
    }

    // POST: Products/Create
    [HttpPost]
    public ActionResult Create(FormCollection collection)
    {
      try
      {
        // TODO: Add insert logic here

        return RedirectToAction("Index");
      }
      catch
      {
        return View();
      }
    }

    // GET: Products/Edit/5
    public ActionResult Edit(int id)
    {
      return View();
    }

    // POST: Products/Edit/5
    [HttpPost]
    public ActionResult Edit(int id, FormCollection collection)
    {
      try
      {
        // TODO: Add update logic here

        return RedirectToAction("Index");
      }
      catch
      {
        return View();
      }
    }

    // GET: Products/Delete/5
    public ActionResult Delete(int id)
    {
      return View();
    }

    // POST: Products/Delete/5
    [HttpPost]
    public ActionResult Delete(int id, FormCollection collection)
    {
      try
      {
        // TODO: Add delete logic here

        return RedirectToAction("Index");
      }
      catch
      {
        return View();
      }
    }
  }
}

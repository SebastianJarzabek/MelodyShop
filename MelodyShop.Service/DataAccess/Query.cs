namespace MelodyShop.Service.DataAccess
{
  public class Queries
  {
    private const string ProductList = "EXEC GetAllProducts";

    public string GetProductList()
    {
      return ProductList;
    }
  }
}

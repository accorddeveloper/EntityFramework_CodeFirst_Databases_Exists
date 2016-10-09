using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityFramework_CodeFirst_DB
{
    class Program
    {
        static void Main(string[] args)
        {
            //建立DB連線Object
            LunchBoxModel db = new LunchBoxModel();
            //取得DB Product Table內容比數
            int count = db.Product.Count();

            Console.WriteLine("Product Table Count: "+count);

            //取得DB Product Table所有內容
            IEnumerable<Product> data = db.Product.Select(x => x);
            //列出Product Table內容
            foreach (Product p in data)
            {
                //id
                int id = p.id;
                //name
                string name = p.name;
                //price
                int? price = p.price;
                //category
                string category = p.category;
                //顯示
                Console.WriteLine("{3}\t訂單:{2}\t{0}\t{1}",
                    id, name, price, category);
            }

            Console.ReadKey();
        }
    }
}

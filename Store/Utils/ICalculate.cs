using Store.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Store.Utils
{
    public interface ICalculate
    {
        decimal SumarizeProducts(IEnumerable<CartLine> products);
    }
}

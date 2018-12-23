using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Store.Utils
{
    public class DataDiscount : IDiscount
    {
        public decimal ApplyDiscount(decimal totalSum)
        {
            if(IsOddDay())
            {
                totalSum -= totalSum / 10;
            }
            return totalSum;
        }

        bool IsOddDay()
        {
            var day = DateTime.Now.Day;
            return day % 2 != 0;
        }
    }
}
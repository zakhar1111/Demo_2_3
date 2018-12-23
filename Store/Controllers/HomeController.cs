using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Store.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Demo description.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Team contact page.";

            return View();
        }
    }
}
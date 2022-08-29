using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCHero.Controllers
{
    public class HeroController : Controller
    {
        // GET: Hero
        public ActionResult Index()
        {
            return View();
        }
    }
}
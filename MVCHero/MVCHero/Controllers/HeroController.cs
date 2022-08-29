using MVCHero.Models;
using MVCHero.Models.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCHero.Controllers
{
    public class HeroController : Controller
    {
        HeroContext db = new HeroContext();
        // GET: Hero
        public ActionResult Index(int? page)
        {
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            var itemsToSkip = (pageNumber - 1) * pageSize;

            ViewBag.pageSize = pageSize;
            ViewBag.pageNumber = pageNumber;

            var heroes = db.Heroes.Include("Ratings")
                         .Select(h => new HeroListView
                         { 
                             Id = h.Id,
                             Name = h.Name,
                             Age = h.Age,
                             City = h.City,
                             Picture = h.Picture,
                             Ratings = h.Ratings,
                             RatingsFiltered = h.Ratings.OrderByDescending(d => d.Date).Take(5).ToList(),
                             Rate = ((double)h.Ratings.Sum(s => s.Rate) / (double)h.Ratings.Count())
                         }).OrderByDescending(o => o.Rate);

            ViewBag.pageCount = Math.Ceiling(((decimal)heroes.Count() / (decimal)pageSize));

            return View(heroes.Skip(itemsToSkip).Take(pageSize).ToList());
        }
    }
}
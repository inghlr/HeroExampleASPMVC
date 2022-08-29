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
        public ActionResult Index()
        {
            var heroes = db.Heroes.Include("Ratings")
                         .Select(h => new HeroListView
                         { 
                             Id = h.Id,
                             Name = h.Name,
                             Age = h.Age,
                             City = h.City,
                             Picture = h.Picture,
                             Ratings = h.Ratings,
                             Rate = ((double)h.Ratings.Sum(s => s.Rate) / (double)h.Ratings.Count())
                         }).OrderByDescending(o => o.Rate);
            return View(heroes.ToList());
        }
    }
}
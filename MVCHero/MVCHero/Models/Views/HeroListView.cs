using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCHero.Models.Views
{
    public class HeroListView
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }
        public string City { get; set; }
        public string Picture { get; set; }
        /// <summary>
        /// List of Ratings
        /// </summary>
        public ICollection<Rating> Ratings { get; set; }
        /// <summary>
        /// Auxiliar List to filter and take five to show on HeroList
        /// </summary>
        public ICollection<Rating> RatingsFiltered { get; set; }
        public double Rate { get; set; }
    }
}
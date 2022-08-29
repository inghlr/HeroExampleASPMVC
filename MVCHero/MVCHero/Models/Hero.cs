using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCHero.Models
{
    public class Hero
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
    }
}
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MVCHero.Models
{
    public class Rating
    {
        public int Id { get; set; }
        public int Rate { get; set; }
        public DateTime Date { get; set; }
        public string Name { get; set; }

        [ForeignKey("Hero")]
        public int HeroId { get; set; }
        public virtual Hero Hero { get; set; }
    }
}
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace MVCHero.Models
{
    public class HeroContext : DbContext
    {
        public HeroContext() : base("HeroDbContext")
        { 
        }

        public DbSet<Hero> Heroes { get; set; }
        public DbSet<Rating> Ratings { get; set; }
    }
}
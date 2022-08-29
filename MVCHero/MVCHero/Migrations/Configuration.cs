namespace MVCHero.Migrations
{
    using MVCHero.Models;
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<MVCHero.Models.HeroContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(MVCHero.Models.HeroContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method
            //  to avoid creating duplicate seed data.
            SeedRandomHeroes();
            SeedRandomRatings();
        }

        private void SeedRandomHeroes()
        {
            string[] _hero_name = new string[] { "Batman", "Superman", "Green Lantern", "Wonder Woman", "Flash", "Aquaman" };
            int[] _hero_age = new int[] { 32, 120, 28, 220, 24, 30 };
            string[] _hero_city = new string[] { "Arkham City", "Metrópolis", "Coast City", "Themyscira", "Central City", "Atlantis " };
            string[] _hero_image = new string[] {
                "https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png",
                "https://res.cloudinary.com/debabkluz/image/upload/v1661748963/heroes/superman_th3q5d.jpg",
                "https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png",
                "https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png",
                "https://res.cloudinary.com/debabkluz/image/upload/v1661749135/heroes/flash_vyldmg.png",
                "https://res.cloudinary.com/debabkluz/image/upload/v1661749173/heroes/Aquaman_u7h6yf.jpg"
            };

            int _total = GetRandomNumber(55, 80);
            using (var db = new HeroContext())
            {
                for (int h = 0; h < _total; h++)
                {
                    int _heroSelected = GetRandomNumber(0, _hero_name.Length - 1),
                        _id = (h + 1);
                    var hero = new Hero()
                    {
                        Id = _id,
                        Name = _hero_name[_heroSelected] + " - " + _id,
                        Picture = _hero_image[_heroSelected],
                        City = _hero_city[_heroSelected],
                        Age = _hero_age[_heroSelected],
                    };

                    db.Heroes.Add(hero);
                }
                db.SaveChanges();
            }
        }

        private void SeedRandomRatings()
        {
            string[] _rating_name = new string[] { "Sheldon", "Rajesh", "Howard", "Stuart", "Leonard", "Will", "George" };
            int _rating = 0;
            using (var db = new HeroContext())
            {
                var heroes = db.Heroes.ToList();
                int _rid = 1;
                foreach (var hero in heroes)
                {
                    _rating = GetRandomNumber(1, 10);
                    for (int r = 0; r < _rating; r++)
                    {
                        var rating = new Rating()
                        {
                            Id = hero.Id,
                            Date = DateTime.Now,
                            Name = _rating_name[GetRandomNumber(0, _rating_name.Length - 1)],
                            Hero = hero,
                            HeroId = hero.Id,
                            Rate = GetRandomNumber(1, 5)
                        };
                        _rid++;
                        db.Ratings.Add(rating);
                    }
                }
                db.SaveChanges();
            }
        }

        private static readonly Random getrandom = new Random();
        public static int GetRandomNumber(int min, int max)
        {
            lock (getrandom) { return getrandom.Next(min, max); }
        }
    }
}

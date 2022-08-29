namespace MVCHero.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialData : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Heroes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                        City = c.String(),
                        Picture = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Ratings",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Rate = c.Int(nullable: false),
                        Date = c.DateTime(nullable: false),
                        Name = c.String(),
                        HeroId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Heroes", t => t.HeroId, cascadeDelete: true)
                .Index(t => t.HeroId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Ratings", "HeroId", "dbo.Heroes");
            DropIndex("dbo.Ratings", new[] { "HeroId" });
            DropTable("dbo.Ratings");
            DropTable("dbo.Heroes");
        }
    }
}

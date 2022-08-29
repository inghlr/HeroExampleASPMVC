namespace MVCHero.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AgeField : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Heroes", "Age", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Heroes", "Age");
        }
    }
}

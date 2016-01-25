namespace _05.WebCounterDB.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<_05.WebCounterDB.Data.VisitorDbContext>
    {
        public Configuration()
        {
            this.AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(_05.WebCounterDB.Data.VisitorDbContext context)
        {
        }
    }
}

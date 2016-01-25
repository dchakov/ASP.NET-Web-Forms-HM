namespace _05.WebCounterDB.Data
{
    using Migrations;
    using System.Data.Entity;

    public class VisitorDbContext : DbContext
    {
        public VisitorDbContext()
            : base("VisitorConnection")
        {
            Database.SetInitializer(new MigrateDatabaseToLatestVersion<VisitorDbContext, Configuration>());
        }

        public DbSet<Visitor> Visitors { get; set; }
    }
}
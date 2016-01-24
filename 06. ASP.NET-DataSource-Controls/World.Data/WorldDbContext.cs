namespace World.Data
{
    using World.Models;
    using System.Data.Entity;
    using System.Data.Entity.ModelConfiguration.Conventions;
    using Migrations;

    public class WorldDbContext : DbContext
    {
        public WorldDbContext()
            : base("WorldConnection")
        {
            Database.SetInitializer(new MigrateDatabaseToLatestVersion<WorldDbContext, Configuration>());
        }

        public virtual IDbSet<Continent> Continents { get; set; }

        public virtual IDbSet<Town> Towns { get; set; }

        public virtual IDbSet<Country> Countries { get; set; }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<OneToManyCascadeDeleteConvention>();
            modelBuilder.Conventions.Remove<ManyToManyCascadeDeleteConvention>();

            base.OnModelCreating(modelBuilder);
        }
    }
}

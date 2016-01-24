namespace Todo.Data
{
    using Todo.Models;
    using System.Data.Entity;
    using System.Data.Entity.ModelConfiguration.Conventions;

    public class TodoDbContext : DbContext
    {
        public TodoDbContext()
            : base("TodoConnection")
        {
        }

        public virtual IDbSet<Todo> Todos { get; set; }

        public virtual IDbSet<Category> Categories { get; set; }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<OneToManyCascadeDeleteConvention>();
            modelBuilder.Conventions.Remove<ManyToManyCascadeDeleteConvention>();

            base.OnModelCreating(modelBuilder);
        }

        public static TodoDbContext Create()
        {
            return new TodoDbContext();
        }
    }
}

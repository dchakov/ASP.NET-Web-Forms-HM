namespace Todo.Data
{
    using Todo.Models;
    using System.Data.Entity;
    using Migrations;

    public class TodoDbContext : DbContext
    {
        public TodoDbContext()
            : base("TodoConnection")
        {
            Database.SetInitializer(new MigrateDatabaseToLatestVersion<TodoDbContext, Configuration>());
        }

        public virtual IDbSet<Todo> Todos { get; set; }

        public virtual IDbSet<Category> Categories { get; set; }
    }
}

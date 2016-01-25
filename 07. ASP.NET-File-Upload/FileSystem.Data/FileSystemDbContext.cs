namespace FileSystem.Data
{
    using Migrations;
    using Models;
    using System.Data.Entity;

    public class FileSystemDbContext : DbContext
    {
        public FileSystemDbContext()
            : base("FileSystemConnection")
        {
            Database.SetInitializer(new MigrateDatabaseToLatestVersion<FileSystemDbContext, Configuration>());
        }

        public IDbSet<FileContent> FileContents { get; set; }
    }
}

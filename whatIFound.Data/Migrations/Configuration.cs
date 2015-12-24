namespace whatIFound.Data.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using whatIFound.Data;
    using whatIFound.Data.Entity;

    internal sealed class Configuration : DbMigrationsConfiguration<whatIFound.Data.MemoryDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(MemoryDbContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data. E.g.
            //
            //    context.People.AddOrUpdate(
            //      p => p.FullName,
            //      new Person { FullName = "Andrew Peters" },
            //      new Person { FullName = "Brice Lambson" },
            //      new Person { FullName = "Rowan Miller" }
            //    );
            //
            AddPostSample(context);
        }

        private void AddPostSample(MemoryDbContext context){
            if(!context.Posts.Any()){ return; }

            context.Posts.Add(new Post
            {
                Title = "Hello World!!!",
                Content = "This is a sample memory",
                CreateDate = DateTime.UtcNow,
                LastUpdateDate = DateTime.UtcNow
            });
        }
    }
}

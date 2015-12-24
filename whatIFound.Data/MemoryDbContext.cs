using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using whatIFound.Data.Entity;

namespace whatIFound.Data
{
    public class MemoryDbContext : DbContext
    {
        public DbSet<Post> Posts { get; set; }
    }
}

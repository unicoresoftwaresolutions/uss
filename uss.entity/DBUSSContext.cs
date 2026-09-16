using Microsoft.EntityFrameworkCore;

namespace uss.entity
{
    public class DBUSSContext : DbContext
    {
        public DBUSSContext(DbContextOptions options) : base(options)
        {
            
        }

        public DbSet<Company> Company { get; set; }
    }
}

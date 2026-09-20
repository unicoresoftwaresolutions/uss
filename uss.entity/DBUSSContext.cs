using Microsoft.EntityFrameworkCore;
using uss.model;
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

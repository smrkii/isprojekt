using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.Extensions.DependencyInjection;
using api.Models;

namespace api.Models
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {

        }

        public DbSet<Speaker> Speakers { get; set; }

        public DbSet<api.Models.Država> Država { get; set; }

        public DbSet<api.Models.Festival> Festival { get; set; }

        public DbSet<api.Models.Kraj> Kraj { get; set; }

        public DbSet<api.Models.Lokacija_Na_festivalu> Lokacija_Na_festivalu { get; set; }

        public DbSet<api.Models.Nastopajoči> Nastopajoci { get; set; }

        public DbSet<api.Models.Obiskovalec> Obiskovalec { get; set; }

        public DbSet<api.Models.Vstopnica> Vstopnica { get; set; }
    }
}

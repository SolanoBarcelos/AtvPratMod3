using Microsoft.EntityFrameworkCore;

namespace AtvPratMod3SolanoBarcelos.Models
{
    public class bdCliente : DbContext
    {
        public DbSet<promocao> promocao { get; set; }
        public DbSet<destino> destino { get; set; }    



        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {

            optionsBuilder.UseSqlServer(connectionString: "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=BDagencia;Data Source=LAPTOP-7M3FHSV2");

        }
    }
}

using System.ComponentModel.DataAnnotations.Schema;

namespace AtvPratMod3SolanoBarcelos.Models
{
    public class promocao
    {
        public int id { get; set; }

        public string nome { get; set; }

        public int destinoid { get; set; }

        [ForeignKey(" destinoid")]

        public virtual destino destino { get; set; }    
    }


}

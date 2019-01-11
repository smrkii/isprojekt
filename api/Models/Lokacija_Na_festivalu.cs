using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace api.Models
{
    public class Lokacija_Na_festivalu
    {
        public int Id { get; set; }
        public int ID_Festivala { get; set; }
        public int Cena_Lokacije { get; set; }
        public int Kapaciteta { get; set; }
        public int Zasedenost { get; set; }
    }
}

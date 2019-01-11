using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace api.Models
{
    public class Vstopnica
    {
        public int Id { get; set; }
        public int ID_Festivala { get; set; }
        public int ID_Obiskovalca { get; set; }
        public DateTime Velja_Od { get; set; }
        public DateTime Velja_Do { get; set; }
        public int Cena { get; set; }
    }
}

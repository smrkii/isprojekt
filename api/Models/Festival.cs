using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.EntityFrameworkCore.Design;

namespace api.Models
{
    public class Festival
    {
        public int Id { get; set; }
        public int ID_Kraja { get; set; }
        public string Ime_Festivala { get; set; }
        public int Cena_Na_Dan { get; set; }
        public DateTime Trajanje_Od { get; set; }
        public DateTime Trajanje_Do { get; set; }
    }
}

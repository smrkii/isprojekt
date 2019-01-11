using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.EntityFrameworkCore.Design;

namespace api.Models
{
    public class Nastopajoči
    {
        public int Id { get; set; }
        public int ID_Festivala { get; set; }
        public string Ime_Nastopajočega { get; set; }
        public DateTime Nastop_Od { get; set; }
        public DateTime Nastop_Do { get; set; }
    }
}

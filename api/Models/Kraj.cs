using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.EntityFrameworkCore.Design;

namespace api.Models
{
    public class Kraj
    {
        public int Id { get; set; }
        public int ID_Države { get; set; }
        public string Ime_Kraja { get; set; }
    }
}

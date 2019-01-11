using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.EntityFrameworkCore.Design;

namespace api.Models
{
    public class Država
    {
        public int Id { get; set; }
        public string Ime_Države { get; set; }
    }
}

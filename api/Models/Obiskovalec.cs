using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using api.Models;

namespace api.Models
{
    public class Obiskovalec
    {
        public int Id { get; set; }
        public string Ime_Obiskovalca { get; set; }
        public string Priimek_Obiskovalca { get; set; }
        public string Uporabniško_Ime { get; set; }
        public string Geslo { get; set; }
    }
}

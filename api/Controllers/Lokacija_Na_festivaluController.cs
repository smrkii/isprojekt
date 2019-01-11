using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using api.Models;

namespace api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class Lokacija_Na_festivaluController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public Lokacija_Na_festivaluController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Lokacija_Na_festivalu
        [HttpGet]
        public IEnumerable<Lokacija_Na_festivalu> GetLokacija_Na_festivalu()
        {
            return _context.Lokacija_Na_festivalu;
        }

        // GET: api/Lokacija_Na_festivalu/5
        [HttpGet("{id}")]
        public async Task<IActionResult> GetLokacija_Na_festivalu([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var lokacija_Na_festivalu = await _context.Lokacija_Na_festivalu.FindAsync(id);

            if (lokacija_Na_festivalu == null)
            {
                return NotFound();
            }

            return Ok(lokacija_Na_festivalu);
        }

        // PUT: api/Lokacija_Na_festivalu/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutLokacija_Na_festivalu([FromRoute] int id, [FromBody] Lokacija_Na_festivalu lokacija_Na_festivalu)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != lokacija_Na_festivalu.Id)
            {
                return BadRequest();
            }

            _context.Entry(lokacija_Na_festivalu).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Lokacija_Na_festivaluExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Lokacija_Na_festivalu
        [HttpPost]
        public async Task<IActionResult> PostLokacija_Na_festivalu([FromBody] Lokacija_Na_festivalu lokacija_Na_festivalu)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.Lokacija_Na_festivalu.Add(lokacija_Na_festivalu);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetLokacija_Na_festivalu", new { id = lokacija_Na_festivalu.Id }, lokacija_Na_festivalu);
        }

        // DELETE: api/Lokacija_Na_festivalu/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteLokacija_Na_festivalu([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var lokacija_Na_festivalu = await _context.Lokacija_Na_festivalu.FindAsync(id);
            if (lokacija_Na_festivalu == null)
            {
                return NotFound();
            }

            _context.Lokacija_Na_festivalu.Remove(lokacija_Na_festivalu);
            await _context.SaveChangesAsync();

            return Ok(lokacija_Na_festivalu);
        }

        private bool Lokacija_Na_festivaluExists(int id)
        {
            return _context.Lokacija_Na_festivalu.Any(e => e.Id == id);
        }
    }
}
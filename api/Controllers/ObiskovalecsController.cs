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
    public class ObiskovalecsController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public ObiskovalecsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Obiskovalecs
        [HttpGet]
        public IEnumerable<Obiskovalec> GetObiskovalec()
        {
            return _context.Obiskovalec;
        }

        // GET: api/Obiskovalecs/5
        [HttpPost("{Uporabniško_Ime}")]
        public async Task<IActionResult> GetObiskovalec([FromRoute] String Uporabniško_Ime)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try {
                var obiskovalec = await _context.Obiskovalec.FirstAsync(e => e.Uporabniško_Ime == Uporabniško_Ime);
                if (obiskovalec == null)
                {
                    return NotFound();
                }

                return Ok(obiskovalec);
            } catch {
                return NotFound();
            }
            
            

           
        }

        // PUT: api/Obiskovalecs/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutObiskovalec([FromRoute] int id, [FromBody] Obiskovalec obiskovalec)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != obiskovalec.Id)
            {
                return BadRequest();
            }

            _context.Entry(obiskovalec).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ObiskovalecExists(id))
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

        // POST: api/Obiskovalecs
        [HttpPost]
        public async Task<IActionResult> PostObiskovalec([FromBody] Obiskovalec obiskovalec)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.Obiskovalec.Add(obiskovalec);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetObiskovalec", new { id = obiskovalec.Id }, obiskovalec);
        }

        // DELETE: api/Obiskovalecs/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteObiskovalec([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var obiskovalec = await _context.Obiskovalec.FindAsync(id);
            if (obiskovalec == null)
            {
                return NotFound();
            }

            _context.Obiskovalec.Remove(obiskovalec);
            await _context.SaveChangesAsync();

            return Ok(obiskovalec);
        }

        private bool ObiskovalecExists(int id)
        {
            return _context.Obiskovalec.Any(e => e.Id == id);
        }
    }
}
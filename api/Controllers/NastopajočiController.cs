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
    public class NastopajočiController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public NastopajočiController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Nastopajoči
        [HttpGet]
        public IEnumerable<Nastopajoči> GetNastopajoci()
        {
            return _context.Nastopajoci;
        }

        // GET: api/Nastopajoči/5
        [HttpGet("{id}")]
        public async Task<IActionResult> GetNastopajoči([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var nastopajoči = await _context.Nastopajoci.FindAsync(id);

            if (nastopajoči == null)
            {
                return NotFound();
            }

            return Ok(nastopajoči);
        }

        // PUT: api/Nastopajoči/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutNastopajoči([FromRoute] int id, [FromBody] Nastopajoči nastopajoči)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != nastopajoči.Id)
            {
                return BadRequest();
            }

            _context.Entry(nastopajoči).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!NastopajočiExists(id))
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

        // POST: api/Nastopajoči
        [HttpPost]
        public async Task<IActionResult> PostNastopajoči([FromBody] Nastopajoči nastopajoči)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.Nastopajoci.Add(nastopajoči);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetNastopajoči", new { id = nastopajoči.Id }, nastopajoči);
        }

        // DELETE: api/Nastopajoči/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteNastopajoči([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var nastopajoči = await _context.Nastopajoci.FindAsync(id);
            if (nastopajoči == null)
            {
                return NotFound();
            }

            _context.Nastopajoci.Remove(nastopajoči);
            await _context.SaveChangesAsync();

            return Ok(nastopajoči);
        }

        private bool NastopajočiExists(int id)
        {
            return _context.Nastopajoci.Any(e => e.Id == id);
        }
    }
}
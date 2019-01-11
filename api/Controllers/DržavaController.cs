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
    public class DržavaController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public DržavaController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Država
        [HttpGet]
        public IEnumerable<Država> GetDržava()
        {
            return _context.Država;
        }

        // GET: api/Država/5
        [HttpGet("{id}")]
        public async Task<IActionResult> GetDržava([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var država = await _context.Država.FindAsync(id);

            if (država == null)
            {
                return NotFound();
            }

            return Ok(država);
        }

        // PUT: api/Država/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutDržava([FromRoute] int id, [FromBody] Država država)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != država.Id)
            {
                return BadRequest();
            }

            _context.Entry(država).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!DržavaExists(id))
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

        // POST: api/Država
        [HttpPost]
        public async Task<IActionResult> PostDržava([FromBody] Država država)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.Država.Add(država);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetDržava", new { id = država.Id }, država);
        }

        // DELETE: api/Država/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteDržava([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var država = await _context.Država.FindAsync(id);
            if (država == null)
            {
                return NotFound();
            }

            _context.Država.Remove(država);
            await _context.SaveChangesAsync();

            return Ok(država);
        }

        private bool DržavaExists(int id)
        {
            return _context.Država.Any(e => e.Id == id);
        }
    }
}
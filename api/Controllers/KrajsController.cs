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
    public class KrajsController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public KrajsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Krajs
        [HttpGet]
        public IEnumerable<Kraj> GetKraj()
        {
            return _context.Kraj;
        }

        // GET: api/Krajs/5
        [HttpGet("{id}")]
        public async Task<IActionResult> GetKraj([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var kraj = await _context.Kraj.FindAsync(id);

            if (kraj == null)
            {
                return NotFound();
            }

            return Ok(kraj);
        }

        // PUT: api/Krajs/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutKraj([FromRoute] int id, [FromBody] Kraj kraj)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != kraj.Id)
            {
                return BadRequest();
            }

            _context.Entry(kraj).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!KrajExists(id))
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

        // POST: api/Krajs
        [HttpPost]
        public async Task<IActionResult> PostKraj([FromBody] Kraj kraj)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.Kraj.Add(kraj);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetKraj", new { id = kraj.Id }, kraj);
        }

        // DELETE: api/Krajs/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteKraj([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var kraj = await _context.Kraj.FindAsync(id);
            if (kraj == null)
            {
                return NotFound();
            }

            _context.Kraj.Remove(kraj);
            await _context.SaveChangesAsync();

            return Ok(kraj);
        }

        private bool KrajExists(int id)
        {
            return _context.Kraj.Any(e => e.Id == id);
        }
    }
}
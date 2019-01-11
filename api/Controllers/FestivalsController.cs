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
    public class FestivalsController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public FestivalsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Festivals
        [HttpGet]
        public IEnumerable<Festival> GetFestival()
        {
            return _context.Festival;
        }

        // GET: api/Festivals/5
        [HttpGet("{id}")]
        public async Task<IActionResult> GetFestival([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var festival = await _context.Festival.FindAsync(id);

            if (festival == null)
            {
                return NotFound();
            }

            return Ok(festival);
        }

        // PUT: api/Festivals/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutFestival([FromRoute] int id, [FromBody] Festival festival)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != festival.Id)
            {
                return BadRequest();
            }

            _context.Entry(festival).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!FestivalExists(id))
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

        // POST: api/Festivals
        [HttpPost]
        public async Task<IActionResult> PostFestival([FromBody] Festival festival)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.Festival.Add(festival);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetFestival", new { id = festival.Id }, festival);
        }

        // DELETE: api/Festivals/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteFestival([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var festival = await _context.Festival.FindAsync(id);
            if (festival == null)
            {
                return NotFound();
            }

            _context.Festival.Remove(festival);
            await _context.SaveChangesAsync();

            return Ok(festival);
        }

        private bool FestivalExists(int id)
        {
            return _context.Festival.Any(e => e.Id == id);
        }
    }
}
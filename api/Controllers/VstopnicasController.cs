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
    public class VstopnicasController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public VstopnicasController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Vstopnicas
        [HttpGet]
        public IEnumerable<Vstopnica> GetVstopnica()
        {
            return _context.Vstopnica;
        }

        // GET: api/Vstopnicas/5
        [HttpGet("{ID_Obiskovalca}")]
        public async Task<IActionResult> GetVstopnica([FromRoute] int ID_Obiskovalca)
        {

           // var vstopnica = await _context.Vstopnica.FirstAsync(e => e.ID_Obiskovalca == ID_Obiskovalca);
            var vstopnica = _context.Vstopnica.Where(e => e.ID_Obiskovalca == ID_Obiskovalca);
            if (vstopnica == null)
            {
                return NotFound();
            }
            return Ok(vstopnica);

            
        }

        // PUT: api/Vstopnicas/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutVstopnica([FromRoute] int id, [FromBody] Vstopnica vstopnica)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != vstopnica.Id)
            {
                return BadRequest();
            }

            _context.Entry(vstopnica).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!VstopnicaExists(id))
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

        // POST: api/Vstopnicas
        [HttpPost]
        public async Task<IActionResult> PostVstopnica([FromBody] Vstopnica vstopnica)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.Vstopnica.Add(vstopnica);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetVstopnica", new { id = vstopnica.Id }, vstopnica);
        }

        // DELETE: api/Vstopnicas/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteVstopnica([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var vstopnica = await _context.Vstopnica.FindAsync(id);
            if (vstopnica == null)
            {
                return NotFound();
            }

            _context.Vstopnica.Remove(vstopnica);
            await _context.SaveChangesAsync();

            return Ok(vstopnica);
        }

        private bool VstopnicaExists(int id)
        {
            return _context.Vstopnica.Any(e => e.Id == id);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using AtvPratMod3SolanoBarcelos.Models;

namespace AtvPratMod3SolanoBarcelos.Controllers
{
    public class PromocoesController : Controller
    {
        private readonly bdCliente _context;

        public PromocoesController(bdCliente context)
        {
            _context = context;
        }

        // GET: Promocoes
        public async Task<IActionResult> Index()
        {
            var bdCliente = _context.promocao.Include(p => p.destino);
            return View(await bdCliente.ToListAsync());
        }

        // GET: Promocoes/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var promocao = await _context.promocao
                .Include(p => p.destino)
                .FirstOrDefaultAsync(m => m.id == id);
            if (promocao == null)
            {
                return NotFound();
            }

            return View(promocao);
        }

        // GET: Promocoes/Create
        public IActionResult Create()
        {
            ViewData["destinoid"] = new SelectList(_context.destino, "id", "nome");
            return View();
        }

        // POST: Promocoes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("id,nome,destinoid")] promocao promocao)
        {
            if (ModelState.IsValid)
            {
                _context.Add(promocao);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["destinoid"] = new SelectList(_context.destino, "id", "id", promocao.destinoid);
            return View(promocao);
        }

        // GET: Promocoes/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var promocao = await _context.promocao.FindAsync(id);
            if (promocao == null)
            {
                return NotFound();
            }
            ViewData["destinoid"] = new SelectList(_context.destino, "id", "id", promocao.destinoid);
            return View(promocao);
        }

        // POST: Promocoes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("id,nome,destinoid")] promocao promocao)
        {
            if (id != promocao.id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(promocao);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!promocaoExists(promocao.id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["destinoid"] = new SelectList(_context.destino, "id", "nome", promocao.destinoid);
            return View(promocao);
        }

        // GET: Promocoes/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var promocao = await _context.promocao
                .Include(p => p.destino)
                .FirstOrDefaultAsync(m => m.id == id);
            if (promocao == null)
            {
                return NotFound();
            }

            return View(promocao);
        }

        // POST: Promocoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var promocao = await _context.promocao.FindAsync(id);
            _context.promocao.Remove(promocao);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool promocaoExists(int id)
        {
            return _context.promocao.Any(e => e.id == id);
        }
    }
}

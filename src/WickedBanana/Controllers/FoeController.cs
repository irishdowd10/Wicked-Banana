using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using WickedBanana.Models;
using Microsoft.EntityFrameworkCore;


namespace WickedBanana.Controllers
{
    public class FoeController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();
        //View all Foes
        public IActionResult Index()
        {
            return View(db.Foes.ToList());
        }
        //Create New foe
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Create(Foe foe)
        {
            db.Foes.Add(foe);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        //Edit an foe
        public IActionResult Edit(int id)
        {
            var thisfoe = db.Foes.FirstOrDefault(i => i.FoeId == id);
            return View(thisfoe);
        }
        [HttpPost]
        public IActionResult Edit(Foe foe)
        {
            db.Entry(foe).State = EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        //Delete an foe
        public IActionResult Delete(int id)
        {
            var thisfoe = db.Foes.FirstOrDefault(foe => foe.FoeId == id);
            return View(thisfoe);
        }

        [HttpPost, ActionName("Delete")]
        public IActionResult DeleteConfirmed(int id)
        {
            var thisfoe = db.Foes.FirstOrDefault(foe => foe.FoeId == id);
            db.Foes.Remove(thisfoe);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using WickedBanana.Models;
using Microsoft.EntityFrameworkCore;


namespace WickedBanana.Controllers
{
    public class ItemController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();
        //View all items
        public IActionResult Index()
        {
            return View(db.Items.ToList());
        }
        //Create New Item
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Create(Item item)
        {
            db.Items.Add(item);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        //Edit an Item
        public IActionResult Edit(int id)
        {
            var thisItem = db.Items.FirstOrDefault(i => i.ItemId == id);
            return View(thisItem);
        }
        [HttpPost]
        public IActionResult Edit(Item item)
        {
            db.Entry(item).State = EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        //Delete an item
        public IActionResult Delete(int id)
        {
            var thisItem = db.Items.FirstOrDefault(item => item.ItemId == id);
            return View(thisItem);
        }

        [HttpPost, ActionName("Delete")]
        public IActionResult DeleteConfirmed(int id)
        {
            var thisItem = db.Items.FirstOrDefault(item => item.ItemId == id);
            db.Items.Remove(thisItem);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}

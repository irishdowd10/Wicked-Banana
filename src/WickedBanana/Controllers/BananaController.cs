using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using WickedBanana.Models;
using Microsoft.AspNetCore.Authorization;

namespace WickedBanana.Controllers
{
    public class BananaController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();
        //Create your banana
        [Authorize]
        public IActionResult Create()
        {
            return View();
        }
        [Authorize]
        [HttpPost]
        public IActionResult Create(Banana banana)
        {
            db.Bananas.Add(banana);
            db.SaveChanges();
            ViewBag.addedBananaName = db.Bananas.Last().Name;
            ViewBag.addedBananaAttackDamage = db.Bananas.Last().AttackDamage;
            ViewBag.addedBananaLength = db.Bananas.Last().Length;
            ViewBag.addedBananaImage = db.Bananas.Last().Image;
            return View();
        }
    }
}

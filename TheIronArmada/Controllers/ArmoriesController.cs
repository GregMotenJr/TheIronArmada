using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using TheIronArmada.Models;

namespace TheIronArmada.Controllers
{
    public class ArmoriesController : Controller
    {
        private IronArmadaSystemEntities db = new IronArmadaSystemEntities();

        // GET: Armories
        public ActionResult Index()
        {
            var armories = db.Armories.Include(a => a.Accessory).Include(a => a.Bottom).Include(a => a.Occasion).Include(a => a.Season).Include(a => a.Sho).Include(a => a.Top);
            return View(armories.ToList());
        }

        // GET: Armories/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Armory armory = db.Armories.Find(id);
            if (armory == null)
            {
                return HttpNotFound();
            }
            return View(armory);
        }

        // GET: Armories/Create
        public ActionResult Create()
        {
            ViewBag.AccID = new SelectList(db.Accessories, "AccID", "Name");
            ViewBag.BottomID = new SelectList(db.Bottoms, "BottomID", "Name");
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Name");
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name");
            ViewBag.ShoeID = new SelectList(db.Shoes, "ShoeID", "Name");
            ViewBag.TopID = new SelectList(db.Tops, "TopID", "Name");
            return View();
        }

        // POST: Armories/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ArmoryID,Name,Color,Photo,TopID,BottomID,ShoeID,AccID,SeasonID,OccasionID")] Armory armory)
        {
            if (ModelState.IsValid)
            {
                db.Armories.Add(armory);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.AccID = new SelectList(db.Accessories, "AccID", "Name", armory.AccID);
            ViewBag.BottomID = new SelectList(db.Bottoms, "BottomID", "Name", armory.BottomID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Name", armory.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name", armory.SeasonID);
            ViewBag.ShoeID = new SelectList(db.Shoes, "ShoeID", "Name", armory.ShoeID);
            ViewBag.TopID = new SelectList(db.Tops, "TopID", "Name", armory.TopID);
            return View(armory);
        }

        // GET: Armories/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Armory armory = db.Armories.Find(id);
            if (armory == null)
            {
                return HttpNotFound();
            }
            ViewBag.AccID = new SelectList(db.Accessories, "AccID", "Name", armory.AccID);
            ViewBag.BottomID = new SelectList(db.Bottoms, "BottomID", "Name", armory.BottomID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Name", armory.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name", armory.SeasonID);
            ViewBag.ShoeID = new SelectList(db.Shoes, "ShoeID", "Name", armory.ShoeID);
            ViewBag.TopID = new SelectList(db.Tops, "TopID", "Name", armory.TopID);
            return View(armory);
        }

        // POST: Armories/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ArmoryID,Name,Color,Photo,TopID,BottomID,ShoeID,AccID,SeasonID,OccasionID")] Armory armory)
        {
            if (ModelState.IsValid)
            {
                db.Entry(armory).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.AccID = new SelectList(db.Accessories, "AccID", "Name", armory.AccID);
            ViewBag.BottomID = new SelectList(db.Bottoms, "BottomID", "Name", armory.BottomID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Name", armory.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name", armory.SeasonID);
            ViewBag.ShoeID = new SelectList(db.Shoes, "ShoeID", "Name", armory.ShoeID);
            ViewBag.TopID = new SelectList(db.Tops, "TopID", "Name", armory.TopID);
            return View(armory);
        }

        // GET: Armories/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Armory armory = db.Armories.Find(id);
            if (armory == null)
            {
                return HttpNotFound();
            }
            return View(armory);
        }

        // POST: Armories/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Armory armory = db.Armories.Find(id);
            db.Armories.Remove(armory);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}

﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Inventory.Controllers
{
    public class TablesController : Controller
    {
        // GET: Tables
        public ActionResult Index()
        {
            return View();
        }
    }
}
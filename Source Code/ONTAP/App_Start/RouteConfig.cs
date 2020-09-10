using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace ONTAP
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "SanPham", action = "SanPham", id = UrlParameter.Optional }
               // defaults: new { controller = "App", action = "ChiTietSP", id = UrlParameter.Optional }
                 //defaults: new { controller = "App", action = "Contact", id = UrlParameter.Optional }
            );
        }
    }
}
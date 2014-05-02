﻿using System.Net.Http;
using Campus.SDK;
using System;
using System.Net;
using Core;

namespace Site
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            var proxy = new WebProxy("10.13.100.13:3128", true)
            {
                Credentials = new NetworkCredential("kbis_user", "kbis13")
            };
            
            //Client.Proxy = proxy;

            Campus.SDK.Client.GetFromCache += Cache.Get;
            Campus.SDK.Client.AddToCache += Cache.Set;
        }

        

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}
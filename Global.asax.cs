using System;
using System.Web;
using System.Web.Routing;

namespace Mygod.Skylark.Deployer
{
    public class Global : HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            RouteTable.Routes.MapPageRoute("Main", string.Empty, "~/Step1.aspx", false);
            RouteTable.Routes.MapPageRoute("Step1", "1", "~/Step1.aspx", false);
            RouteTable.Routes.MapPageRoute("Step2", "2", "~/Step2.aspx", false);
            RouteTable.Routes.MapPageRoute("Step3", "3", "~/Step3.aspx", false);
        }

        /*protected void Session_Start(object sender, EventArgs e)
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

        }*/
    }
}
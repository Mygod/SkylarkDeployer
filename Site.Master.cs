using System;
using System.Reflection;
using System.Web.UI;

namespace Mygod.Skylark.Deployer
{
    public partial class Site : MasterPage
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Page.Title)) Page.Title = "云雀™ 部署器";
            else Page.Title += " - 云雀™ 部署器";
        }

        protected static readonly Assembly CurrentAssembly = Assembly.GetExecutingAssembly();
    }
}
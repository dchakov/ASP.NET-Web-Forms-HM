using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_01.ASP.NET_MVC_application.Startup))]
namespace _01.ASP.NET_MVC_application
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

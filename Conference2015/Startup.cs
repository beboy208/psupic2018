using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Conference2015.Startup))]
namespace Conference2015
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

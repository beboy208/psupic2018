using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Conference2018.Startup))]
namespace Conference2018
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

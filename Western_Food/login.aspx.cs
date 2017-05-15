using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace Western_Food
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtUserLogin.Text, txtpasswordLogin.Text);
            if (user != null)
            {
                litLoginResult.Text = "Success!.";
                LogUserIn(userManager, user);
                Server.Transfer("Private.aspx", true);
            }
            else
            {
                litLoginResult.Text = "Invalid username or password.";
            }
        }

        private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);
            //Note:user is automatically redirected if trying to access another page

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("identityConnectionString");

            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            var user = new IdentityUser() { UserName = txtUserRegister.Text, Email = txtUserRegister.Text };
            //IdentityResult result = manager.Create(user, txtpasswordRegister.Text);
            manager.Create(user, txtpasswordRegister.Text);

            IdentityRole endUserRole = new IdentityRole("endUser");
            roleManager.Create(endUserRole);
            manager.AddToRole(user.Id, "endUser");
            IdentityResult result = manager.Update(user);

            if (result.Succeeded)
            {
                litRegisterResult.Text = "Successfully Registered!" + result.Errors.FirstOrDefault();
            }
            else
            {
                litRegisterResult.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }
    }      
    
}
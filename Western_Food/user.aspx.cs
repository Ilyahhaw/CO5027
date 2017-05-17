using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Western_Food
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Page.Validate("two");
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            
            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            //create user 
            var user = new IdentityUser(){UserName = txtUserRegister.Text, Email = txtEmailRegister.Text };
            IdentityResult result = manager.Create(user, txtpasswordRegister.Text);

            if (result.Succeeded)
            {
                litRegisterResult.Text = "Successfully Registered!" + result.Errors.FirstOrDefault();
            }
            else
            {
                litRegisterResult.Text = "An error has occurred: " + result.Errors.FirstOrDefault();
            }
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Page.Validate("one");
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtUserLogin.Text, txtpasswordLogin.Text);

            if (user != null)
            {
                litLoginResult.Text = "Success!.";
                LogUserIn(userManager, user);
                Server.Transfer("product.aspx", true);
            }
            else
            {
                litLoginResult.Text = "Invalid username or password.";
            }
        }

        private void LogUserIn(UserManager<IdentityUser>usermanager,IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);
            //Note:user is automatically redirected if trying to access another her page
        }
    }
}
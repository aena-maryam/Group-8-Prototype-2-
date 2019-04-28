using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RMS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            String name = u_name.Text;
            String password = password_.Text;

            myDAL obj = new myDAL();
            bool result = obj.isValidLogin(name, password);

            if (result == true)
                Response.Redirect("./Home.aspx");

            else
                Response.Write("<script>alert('Invalid username or password')</script>");
        }
        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Sign-Up.aspx");
        }
        protected void ForgetButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("./ForgetPassword.aspx");
        }
    }
}
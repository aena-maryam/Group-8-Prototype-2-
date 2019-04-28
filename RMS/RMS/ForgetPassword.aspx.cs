using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RMS
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ConfirmPassword_Click(object sender, EventArgs e)
        {
            String pass = new_password.Text;
            String confirmpass = password_.Text;
            String name = u_name.Text; 

            if(pass==confirmpass)
            {
                myDAL obj = new myDAL();
                bool result = obj.changePassword(name, pass, confirmpass);

                if (result == true)
                {
                    Response.Write("<script>alert('Password Changed')</script>");
                    Message.Text = "Password Changed";
                    Response.Redirect("./Login.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Entered Passwords in both fields don't match')</script>");
                Message.Text = "Entered Passwords in both fields don't match";
            }
        }
    }
}
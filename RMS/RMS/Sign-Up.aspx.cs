using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RMS
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SignupButton_Click(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();

            String fname = u_fname.Text;
            String lname = u_lname.Text;
            String uname = u_name.Text;
            String emailid = u_email.Text;
            String password = password_.Text;
            String gend = gender.SelectedItem.Text;
            String question = securityQuestion.SelectedItem.Text;
            String ans = answer.Text;

            bool found = obj.check(fname, lname, uname, emailid, password, gend, question);

            if (found == true)
            {
                obj.sign_up(fname, lname, uname, emailid, password, gend, question, ans);
                Response.Write("<script>alert('You have successfully registered to RMS.')</script>");
                Server.Transfer("Home.aspx");
            }

            else
            {
                Response.Write("<script>alert('Unsuccessful Registration. Please try again.')</script>");
            }
        }
    }
}
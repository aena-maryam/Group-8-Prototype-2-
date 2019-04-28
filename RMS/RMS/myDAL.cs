using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace RMS
{
    public class myDAL
    {
        private static readonly string connString =
        System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;


        public void sign_up(String u_fname, String u_lname, String u_name, String u_email, String password_, String gender, String securityQuestion, String answer)
        {
            try
            {
                SqlConnection conn = new SqlConnection(connString);
                conn.Open();
                String w_role = "user";
                SqlCommand cmd = new SqlCommand("Insert into Users values (" + getNewId() + ",'" + w_role + "','" + u_fname + "','" + u_lname + "','" + u_name + "','" + u_email + "','" + password_ + "','" + gender + "','" + securityQuestion + "','" + answer + "')", conn);
                DataSet ds = new DataSet();

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);
                conn.Close();

            }
            catch (SqlException e)
            {
                //
            }
        }

        public String getNewId()
        {
            try
            {
                DataTable dt;
                SqlConnection conn = new SqlConnection(connString);
                conn.Open();

                SqlCommand cmd = new SqlCommand("Select max(U_ID) from Users", conn);
                DataSet ds = new DataSet();

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);
                dt = ds.Tables[0];
                conn.Close();

                int newid = (int)Convert.ToInt64(dt.Rows[0][0].ToString()) + 1;

                return newid.ToString();
            }
            catch (SqlException e)
            {
                //do nothing
                return "";
            }
        }


        public bool check(String u_fname, String u_lname, String u_name, String u_email, String password_, String gender, String securityQuestion)
        {
            try
            {
                SqlConnection conn = new SqlConnection(connString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select * from  USERS where u_name = '" + u_name + "' and password_ = '" + password_ + "'", conn);

                DataSet ds = new DataSet();

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);
                conn.Close();

                if (ds.Tables[0].Rows.Count > 0)
                    return false;
                else
                    return true;
            }
            catch (SqlException e)
            {
                return false;
            }
        }


        public bool isValidLogin(String u_name, String password_)
        {
            try
            {
                SqlConnection conn = new SqlConnection(connString);
                conn.Open();

                SqlCommand cmd = new SqlCommand("Select * from  USERS where u_name = '" + u_name + "' and password_ = '" + password_ + "'", conn);
                DataSet ds = new DataSet();

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);
                conn.Close();

                if (ds.Tables[0].Rows.Count > 0)
                    return true;
                else
                    return false;
            }
            catch (SqlException e)
            {
                return false;
            }
        }


        public bool changePassword(String u_name, String pass, String password_)
        {
            try
            {
                SqlConnection conn = new SqlConnection(connString);
                conn.Open();

                SqlCommand cmd = new SqlCommand("UPDATE USERS SET password_='" + password_ + "' WHERE u_name = '" + u_name + "'", conn);
                DataSet ds = new DataSet();

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);
                conn.Close();

                return true;
            }
            catch (SqlException e)
            {
                return false;
            }
        }
    }
}
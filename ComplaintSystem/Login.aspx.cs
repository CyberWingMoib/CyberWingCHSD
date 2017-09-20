using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ValidateUser(object sender, EventArgs e)
        {
            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["CyberHelpDeskConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Validate_User"))
                {
                    
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", Login1.UserName);
                    cmd.Parameters.AddWithValue("@Password", Login1.Password);
                    cmd.Connection = con;
                    con.Open();
                    userId = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
                switch (userId)
                {
                    case -1:
                        Login1.FailureText = "Username and/or password is incorrect.";
                        break;
                    case -2:
                        Login1.FailureText = "Account has not been activated.";
                        break;
                    default:
                        FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                        break;
                }
            }
        }

        protected void ValidateUser(object sender, AuthenticateEventArgs e)
        {

            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["CyberHelpDeskConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
                con.Open();
            SqlCommand cmd = new SqlCommand("Validate_User");
                    cmd.Connection = con;
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", Login1.UserName);
                    cmd.Parameters.AddWithValue("@Password", Login1.Password);
                    userId = Convert.ToInt32(cmd.ExecuteScalar());
                switch (userId)
                {
                    case -1:
                        Login1.FailureText = "Username and/or password is incorrect.";
                        break;
                    case -2:
                        Login1.FailureText = "Account has not been activated.";
                        break;
                    default:
                    if (Login1.UserName == "admin")
                    {
                       // Response.Redirect("~/Admin/default.aspx");
                        FormsAuthentication.SetAuthCookie(Login1.UserName, Login1.RememberMeSet);
                        Response.Redirect("~/Admin/default.aspx");
                    }

                    else
                    {
                        cmd.CommandText = "Select * from Users where Username = '" + Login1.UserName + "' and Password = '" + Login1.Password + "'";
                        cmd.CommandType = System.Data.CommandType.Text;
                        SqlDataReader rdr = cmd.ExecuteReader();
                        rdr.Read();
                        Session["Comp_type"] = rdr[9].ToString();
                        FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                    }
                        break;
                }
            con.Close();
            }
        }

       
    }

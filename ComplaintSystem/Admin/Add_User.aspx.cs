using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintSystem.Admin
{
    public partial class Add_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage(@"Login.aspx");

            }
            
        }

        protected void btn_Insert_Click(object sender, EventArgs e)
        {
            if (txt_displayname.Text == string.Empty || txt_login.Text == string.Empty || txt_password.Text == string.Empty)
                return;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CyberHelpDeskConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = con.CreateCommand();

            cmd.CommandText = "insert into Users values('" + txt_displayname.Text + "','" + txt_login.Text + "','" + txt_password.Text + "','" + txt_email.Text + "'," + ddl_role.SelectedValue + ",'');";
            cmd.ExecuteNonQuery();

            con.Close();
            GridView2.DataBind();


            Response.Redirect("Add_User.aspx");
            //txt_displayname.Text = "";
            //txt_login.Text = "";
            //txt_password.Text = "";
            //txt_email.Text = "";
        }

    }
}
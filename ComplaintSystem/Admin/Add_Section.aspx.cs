using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Security;

namespace ComplaintSystem.Admin
{
    public partial class Add_Section : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage(@"Login.aspx");
            }
        }
        protected void AddSectionBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CyberHelpDeskConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "insert into Section values('" + AddSecTxt.Text + "','" + Request.QueryString["Dept_id"] + "');";
            cmd.ExecuteNonQuery();

            con.Close();
            //GridView1.DataBind();
            AddSecTxt.Text = "";
            Response.Redirect(Request.Url.ToString());

        }

        
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Departments.aspx");
        }
    }
}
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
    public partial class Add_ComplaintType : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage(@"Login.aspx");
            }
        }

        protected void DeptAddBtn_Click(object sender, EventArgs e)
        {
            if (ComTypeTxt.Text == string.Empty)
                return;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CyberHelpDeskConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = con.CreateCommand();

            cmd.CommandText = "insert into Complainttype values('" + ComTypeTxt.Text + "'," + ddl_role.SelectedValue+ ");";
            cmd.ExecuteNonQuery();

            con.Close();
            GridView1.DataBind();
            ComTypeTxt.Text = "";
        }
    }
}
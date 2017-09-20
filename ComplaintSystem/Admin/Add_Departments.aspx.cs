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
    public partial class Add_Departments : System.Web.UI.Page
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
            if (DeptTxt.Text == string.Empty)
                return;

            SqlConnection con =new SqlConnection(ConfigurationManager.ConnectionStrings["CyberHelpDeskConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = con.CreateCommand();

            cmd.CommandText = "insert into Department values('" + DeptTxt.Text + "');";
            cmd.ExecuteNonQuery();

            con.Close();
            GridView1.DataBind();
            DeptTxt.Text = "";


        }
    }
}
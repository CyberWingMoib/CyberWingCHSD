using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ComplaintSystem
{
    public partial class AddSection : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=ASMAA-PC;Initial Catalog=CyberHelpDesk;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddSectionBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "insert into Section values('" + AddSecTxt.Text + "','" + Request.QueryString["Dept_id"] + "');";
        cmd.ExecuteNonQuery();

            con.Close();
            //GridView1.DataBind();
            AddSecTxt.Text = "";
            Response.Redirect(Request.Url.ToString());
            
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ComplaintSystem
{
    public partial class Users : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=ASMAA-PC;Initial Catalog=CyberHelpDesk;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();

            string strRole=RolesDropD.SelectedValue;
            string strDesig=DesigDropD.SelectedValue;

            cmd.CommandText = "insert into Users values('" + idTxt.Text + "','"+ passwordtxt.Text+"','"+ strRole +"','"+strDesig+"',"+ddlComptype.SelectedValue+")";
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect(Request.Url.ToString());
            idTxt.Text = "";
            passwordtxt.Text = "";
            

        }
    }
}
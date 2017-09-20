using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Reflection.Emit;

namespace ComplaintSystem.HelpDesk
{
    public partial class Inbox1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage(@"Login.aspx");
            }
        }
        SqlConnection con;
        SqlCommand cmd;


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                // Retrieve the row index stored in the 
                // CommandArgument property.
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button 
                // from the Rows collection.
                GridViewRow row = GridView1.Rows[index];
                string sno = row.Cells[1].Text;
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["CyberHelpDeskConnectionString"].ConnectionString);
                con.Open();
                cmd = new SqlCommand("Update ReceivingDesk set Status = 'Inprocess' where Comp_sno = '" + sno + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
            }
        }

        protected void GridView1_DataBinding(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            foreach (GridViewRow item in GridView1.Rows)
            {
                if (item.Cells[4].Text == "MoS" || e.Row.Cells[4].Text == "MoS")
                {
                    item.BackColor = System.Drawing.Color.Red;
                    item.ForeColor = System.Drawing.Color.White;
                }
            }
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    if (e.Row.Cells[4].Text == "MoS" || e.Row.Cells[4].Text == "MoS")
            //    {
            //        e.Row.BackColor = System.Drawing.Color.Red;
            //        e.Row.ForeColor = System.Drawing.Color.White;
            //    }
            //}
        }
    }
}
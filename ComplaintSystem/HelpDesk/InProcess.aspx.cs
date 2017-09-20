using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ComplaintSystem.HelpDesk
{
    public partial class InProcess : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Select")
            {
                // Retrieve the row index stored in the 
                // CommandArgument property.
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button 
                // from the Rows collection.
                GridViewRow row = GridView_1.Rows[index];
                string id = row.Cells[1].Text;
                string action = row.Cells[11].Text;
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["CyberHelpDeskConnectionString"].ConnectionString);
                con.Open();
                cmd = new SqlCommand("Update ReceivingDesk set Action = '"+action+ "', Status = 'Completed', Completiondate = '"+DateTime.Now+"' where Comp_sno= '" + id+"'  ",con);
                cmd.ExecuteNonQuery();
                GridView_1.DataBind();
            }
        }
            
    }
}
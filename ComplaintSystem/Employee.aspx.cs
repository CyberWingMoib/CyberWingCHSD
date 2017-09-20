using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ComplaintSystem;
using System.Configuration;
namespace WebFormsCSHelpDesk
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  GetSec(); 
        }

       
            SqlCommand cmd;
            SqlConnection con;

        protected void Button1_Click(object sender, EventArgs e)
        {
            string madevia ;

            if (radOnline.Checked == true)
	        {
		        madevia = "Online";
	        }
            else if (radTelephone.Checked == true)
	        {
		        madevia = "Telephone";
	        }
            else
            {
                madevia = "Other";
            }
            try
            {

                con = new SqlConnection(ConfigurationManager.ConnectionStrings["CyberHelpDeskConnectionString"].ConnectionString); 
                con.Open();
                cmd = new SqlCommand();
                cmd.Connection =con;
                cmd.CommandText = "Select Userid from Users where Ct_id= "+ddlComplainttype.SelectedValue+"";
                SqlDataReader rdr = cmd.ExecuteReader();
                rdr.Read();
                string allocid = rdr["Userid"].ToString();
                rdr.Close();
                
                //SqlDataReader rdr = cmd.ExecuteReader();
                //int count = 0, allocran = 0;
                //  String allocid = "0";
                //while(rdr.Read()){
                //   count++;
                //}
                //if (count > 0)
                //{
                //    Random rand = new Random();
                //        allocran = rand.Next(0,count);
                //        allocid = rdr[allocran].ToString();
                //}
                //else
                //{
                //    allocid = rdr[allocran].ToString();

                //}

               


                cmd.CommandText = "Select MAX(Comp_no)+1 from ReceivingDesk ";
                cmd.CommandType =CommandType.Text;
                object res = cmd.ExecuteScalar();
                int id;
                if (res == DBNull.Value)
                {
                    id = 1;
                }
                else
                {
                    id = Convert.ToInt32(res);
                }
                string sid = "CCSH-"+DateTime.Now.Date.ToString("dd/MM/yyyy")+"-"+id.ToString();
                cmd = new SqlCommand("INSERT INTO ReceivingDesk ([Comp_sno],[Comp_name],[Comp_designation],[Comp_department],[Comp_section],[Type],[Comp_roomno],[Phoneno],[Comp_type],[Comp_detail],[Datetime],[Comp_made_via],[Register_by],[Register_byDesig],[User_id],[Status]) Values ('" +
                    sid + "','" + txtName.Text + "','" + ddlDesignation.SelectedItem + "','" + ddlDepartment.SelectedItem + "','" + ddlSection.SelectedItem + "','" + ddlType.SelectedItem + "','" + txtRoomno.Text + "','" + txtPhoneno.Text + "','" + ddlComplainttype.SelectedItem + "','" + txtDetail.Text + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "','" + madevia + "','" + txtRegisterby.Text + "','" + ddlRegDesig.SelectedItem + "','" + allocid + "','" + "pending" + "')", con);
                cmd.ExecuteNonQuery();
	        }
	        catch (Exception)
	        {
		
		        throw;
	        }
           
            //conDatabase.Open();
            //string name = TextBox1.Text;
            //string desg = DropDownList4.SelectedValue;
            //string dept = DropDownList2.SelectedValue;
            //string section = DropDownList3.SelectedValue;
            //string type = DropDownList1.SelectedValue;
            //string phone = TextBox5.Text;
            //string room = TextBox6.Text;


            
            //string query1 = "INSERT INTO Employee(Emp_name, Designation, Department, Emp_type, Phone_no, Room_no ) " + "Values('" + name + "', '" + desg + "', '" + dept + "', '" + type + "', '" + phone + "', '" + room + "')";


            //SqlCommand cmdDatabase1 = new SqlCommand(query1, conDatabase);

            //cmdDatabase1.ExecuteNonQuery();



            //TextBox1.Text = String.Empty;


            //conDatabase.Close();
        }

        private void GetSec()
        {

            String constring = ConfigurationManager.ConnectionStrings["CyberHelpDeskConnectionString"].ConnectionString;
            SqlConnection conDatabase = new SqlConnection(constring);


            conDatabase.Open();
            //DropDownList2.SelectedIndex = 0;

            string dept = ddlDepartment.SelectedValue;
            String query = "select Sec_name, Sec_id from Section where Dept_id='" + dept + "'";

            SqlCommand cmdDatabase = new SqlCommand(query, conDatabase);
            SqlDataAdapter da = new SqlDataAdapter(cmdDatabase);

            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset
            ddlSection.DataSource=null;
            ddlSection.DataTextField = ds.Tables[0].Columns["Sec_name"].ToString(); // text field name of table dispalyed in dropdown
            ddlSection.DataValueField = ds.Tables[0].Columns["Sec_id"].ToString();
            ddlSection.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
            ddlSection.DataBind();  //binding dropdownlist
}

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetSec();

        }

        protected void DropDownList2_DataBound(object sender, EventArgs e)
        {
            GetSec();
        }
    }
}
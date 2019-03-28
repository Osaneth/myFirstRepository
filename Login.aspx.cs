using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class metrocs_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlcon = new SqlConnection(@"Data Source=DELL-LATITUDE23\KINISQL1; initial Catalog=USP_ENROLMENT;Integrated Security=true"))
        //SqlConnection sqlconn = new SqlConnection("Data Source=ICTNB-LB; Initial Catalog=USPEnrollment; Integrated Security=true;");
        //SqlDataAdapter sda = new SqlDataAdapter("Select count(*) from Users where Username=" + txtusername.Text);

        {
            
            string query = "Select count(1) from Users where username=@username and password=@password";
            sqlcon.Open();
            SqlCommand sqlcmd = new SqlCommand(query, sqlcon);

            sqlcmd.Parameters.AddWithValue("@username", txtusername.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@password", txtpasswrd.Text.Trim());    

            //try {

            //}
            int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
            if (count == 1)
            {
                Session["username"] = txtusername.Text.Trim();
                Response.Redirect("/metrocs/Default.aspx");
            }
            else
            {
                lblErrorMessage.Visible = true;
            }

            sqlcon.Close();
        }
        


    }
}
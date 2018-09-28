using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Configuration;


public partial class custlogin : System.Web.UI.Page

{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    String str;

    protected void Page_Load(object sender, EventArgs e)
    {
        str = ConfigurationManager.ConnectionStrings["restaurante"].ConnectionString;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
        str = "Select * from register where r_email='" + (cemail.Text) + "' and r_password='" + (cpass.Text) + "' ";
        cmd = new SqlCommand(str, con);
        //int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["User_name"] = cemail.Text;

            Session["User_id"] = ds.Tables[0].Rows[0][0].ToString();
            Response.Write(Session["User_id"].ToString());
           
            Response.Redirect("custhome.aspx");
        }
        else
        {
            Label3.Text = "Invalid user";


        }

    }
}
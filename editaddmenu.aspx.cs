using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System.Data.SqlClient;

public partial class addmenu : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    String str;

    protected void Page_Load(object sender, EventArgs e)
    {
        str = ConfigurationManager.ConnectionStrings["restaurante"].ConnectionString;
        con = new SqlConnection(str);
        con.Open();

        if (!IsPostBack)
        {

            String strsql;
            strsql = "select * from add_menu where id=" + Request.QueryString["id"].ToString();
            cmd = new SqlCommand(strsql, con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                iname.Text = dr.GetValue(1).ToString();
                icost.Text = dr.GetValue(2).ToString();
                icategory.Text = dr.GetValue(3).ToString();

               






            }
            dr.Close();
        }

    }
    private String getId(String tblName, String colName)
    {
        String strsql;
        int id = 0;
        strsql = "select * from " + tblName;
        cmd = new SqlCommand(strsql, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            dr.Close();
            strsql = "select max(" + colName + ") from " + tblName;
            cmd = new SqlCommand(strsql, con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                id = int.Parse(dr.GetValue(0).ToString());
            }
        }
        dr.Close();
        id = id + 1;
        return (id + "");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       String ccid = getId("add_menu", "id");
        str = "update add_menu set i_name='" + (iname.Text) + "', i_cost='" + (icost.Text) + "', i_category='" + (icategory.Text)  +  "' where id=" + Request.QueryString["id"].ToString();
        cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery(); 
        con.Close();
        Label5.Text = "Menu updated succesfully";

        }
   
protected void  Button2_Click(object sender, EventArgs e)
{
    Response.Redirect("adminmenu.aspx");
}
}
   


    

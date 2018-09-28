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



public partial class staff : System.Web.UI.Page
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
            strsql = "delete  from staff where s_id=" + Request.QueryString["s_id"].ToString();
            cmd = new SqlCommand(strsql, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("staffgrid.aspx");

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
       
        String uid = getId("staff", "s_id");
        str = "delete from staff where s_id=" + Request.QueryString["s_id"].ToString();
        cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        Label5.Text = "Deleted";
        con.Close();

    }


    }

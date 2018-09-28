using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;



public partial class tableres : System.Web.UI.Page
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
            strsql = "select * from register where r_id='" + Session["User_id"].ToString() + "'";
            Response.Write(strsql);
            cmd = new SqlCommand(strsql, con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                name.Text = dr.GetValue(1).ToString();
                contact.Text = dr.GetValue(2).ToString();
                adress.Text = dr.GetValue(3).ToString();








            }

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
        String rid,ruserid="1", strsql, rname,radress, rcontact, rdate, rtime, rseats,rsrequest,rstatus="pending";
        rname = name.Text;
        radress = adress.Text;
        rcontact = contact.Text;
        rdate= date.Text;
        rtime = time.Text;
        rseats = seats.Text;
        rsrequest = sr.Text;
        rid = getId("reservation", "r_id");

        strsql = "insert into reservation values(" + rid + ",'" + Session["User_id"].ToString() +"', '" + rname + "','" + radress + "','" + rcontact + "','" + rdate + "','" + rtime + "','" + rseats + "','" + rsrequest + "','" + rstatus + "')";
        cmd = new SqlCommand(strsql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("custhome.aspx?status=table");

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    }

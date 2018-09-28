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

public partial class register : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    String str;
    protected void Page_Load(object sender, EventArgs e)
    {
        String path = (@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Rahul\Documents\restaurante.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        con = new SqlConnection();
        con.ConnectionString = path;
        con.Open();
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
        String id,strsql, rrname, rrcontact,rradress,rremail,rrpassword;
        rrname = rname.Text;
        rrcontact = rcontact.Text;
        rradress = radress.Text;
        rremail = remail.Text;
        rrpassword = rpassword.Text;
        id = getId("register", "r_id");
        strsql = "insert  into register values('" + id + "','" + rrname + "','" + rrcontact + "','" + rradress + "','" + rremail + "','" + rrpassword + "')";
        cmd = new SqlCommand(strsql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Registration succesful";
       
    }
}
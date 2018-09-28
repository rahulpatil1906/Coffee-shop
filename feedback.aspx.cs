using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;


public partial class feedback : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        String path = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Rahul\Documents\restaurante.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
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
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String f_id, strsql, f_name, f_feedbacktxt, f_feedback;
        f_name = fname.Text;
        f_feedbacktxt = frate.Text;
        f_feedback = ftext.Text;
        f_id = getId("feedback", "fid");
        strsql = "insert into feedback values(" + f_id + ",'" + f_name + "','" + f_feedbacktxt + "','" + f_feedback + "')";
        cmd = new SqlCommand(strsql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Label5.Text = "Thank you for your feedback";


    }
}
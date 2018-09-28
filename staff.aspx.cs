using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;


public partial class staff : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        String strsql, staffid, staffname,staffage,staffpost;

        staffid = getId("staff", "s_id");
        staffname = sname.Text;
        staffage = sage.Text;
        staffpost = sposition.Text;


        if (simage.HasFile)
        {
            String strname = simage.FileName.ToString();
            simage.PostedFile.SaveAs(Server.MapPath("~/style/") + strname);
            String path = "~//style//" + strname;
            strsql = "insert into staff values(" + staffid + ",'" + staffname + "','" + staffage + "','" + staffpost + "','" + path + "')";
            cmd = new SqlCommand(strsql, con);
            cmd.ExecuteNonQuery();
            con.Close();


            Label3.Visible = true;
            Label5.Text = "Image Uploaded successfully";
            sname.Text = "";
        }
        else
        {
            Label5.Visible = true;
            Label5.Text = "Plz upload the image!!!!";
        }  
    }


    }

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (id.Text == "manager" && pass.Text == "manager123")
        {
            Response.Redirect("admin_home.aspx");
        }
        else if (id.Text == "cheff" && pass.Text == "cheff123")
        {
            Label3.Text = "successful";
            Response.Redirect("admin_home.aspx");
        }
        else
        {
            Label3.Text = "Invalid user";


        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (Session["new"] != null)
            {
                Label1.Text = Session["new"].ToString();

            }
            else
                Response.Redirect("default2.aspx");
        }

        if (Session["new"] != null)
            {
                Label1.Text = Session["new"].ToString();

            }
            else
                Response.Redirect("default2.aspx");
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["new"] = null;
        Response.Redirect("default2.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        
    }
}

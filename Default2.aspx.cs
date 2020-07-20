using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

      
            /*   SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
               conn.Open();
               string checkuser = (@"select username from [Table] where username='" + TextBox3.Text + "'");
               SqlCommand com1 = new SqlCommand(checkuser, conn);
               int temp1 = Convert.ToInt32(com1.ExecuteScalar().ToString());



               conn.Close();
             * 
             * 
             * 
             * 
           */
   

        


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string check = (@"select count(*) from [Table] where username='" + TextBox1.Text + "'");
        SqlCommand com = new SqlCommand(check, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkpass = (@"select password from [Table] where username='" + TextBox1.Text + "'");
            SqlCommand pass = new SqlCommand(checkpass, conn);
            string password = pass.ExecuteScalar().ToString().Replace(" ", "");
            //  int hash = TextBox2.Text.GetHashCode();
            if (password == txtPassword.Text.GetHashCode().ToString())
            {
                Session["new"] = TextBox1.Text;
                Response.Write("auccessful logging");
                Response.Redirect("default.aspx");

            }
            else
            {

                Response.Write("password is not correct");
            }

        }
        else
        {
            Response.Write("username is not correct");

        }




    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        if (TextBox3.Text == null || TextBox4.Text == null) { Response.Write("ee"); }
        else
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = (@"select count(*) from [Table] where username='" + TextBox3.Text + "'");
            SqlCommand com1 = new SqlCommand(checkuser, conn);
            int temp1 = Convert.ToInt32(com1.ExecuteScalar().ToString());
            conn.Close();
            if (temp1 == 1)
            {
                Response.Write("username exists");

            }
            else
            {




                try
                {

                    conn.Open();
                    string insert = (@"INSERT INTO [Table] 
                                  (username,password,Gmail,anssecond,ansfirst) VALUES 
                                  (@user,@pass,@mail,@A2,@A2)");
                    SqlCommand com2 = new SqlCommand(insert, conn);
                    com2.Parameters.AddWithValue("@user", TextBox3.Text);
                    com2.Parameters.AddWithValue("@pass", TextBox4.Text.GetHashCode());
                    com2.Parameters.AddWithValue("@mail", TextBox5.Text);
                    com2.Parameters.AddWithValue("@A1", TextBox6.Text);
                    com2.Parameters.AddWithValue("@A2", TextBox7.Text);
                    com2.ExecuteNonQuery();
                    Response.Write("successful registeration ");


                    conn.Close();


                }
                catch (Exception ex)
                {

                    Response.Write("error:" + ex.Message);

                }
            }
        }

    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void showthepassword_CheckedChanged(object sender, EventArgs e)
    {
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default5.aspx");
    }
}
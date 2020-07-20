using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Default5 : System.Web.UI.Page
{
    bool checksuccess;
    string email,ans1,ans2;
    string rString = "";
    protected void Page_Load(object sender, EventArgs e)
    {

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
            string checkemail = (@"select Gmail from [Table] where username='" + TextBox1.Text + "'");
            SqlCommand pass = new SqlCommand(checkemail, conn);

            string checkans1 = (@"select ansfirst from [Table] where username='" + TextBox1.Text + "'");
            SqlCommand pass1 = new SqlCommand(checkans1, conn);

            string checkans2 = (@"select anssecond from [Table] where username='" + TextBox1.Text + "'");
            SqlCommand pass2 = new SqlCommand(checkans2, conn);
             email = pass.ExecuteScalar().ToString().Replace(" ", "");
             ans1 = pass1.ExecuteScalar().ToString().Replace(" ", "");
             ans2 = pass2.ExecuteScalar().ToString().Replace(" ", "");
            //  int hash = TextBox2.Text.GetHashCode();
             conn.Close();
        }

       





        if (temp == 1 && ans1==TextBox6.Text && ans2==TextBox5.Text)
        {


            string to = email; ; //To address    
            string from = "visitsyria0@gmail.com"; //From address    
            MailMessage message = new MailMessage(from, to);
            Random random = new Random();
            int length = 6;
            
            for (var i = 0; i < length; i++)
            {
                rString += ((char)(random.Next(1, 26) + 64)).ToString();
            }
            string mailbody = "password recovery has been reqwested the new password is" + rString;
            message.Subject = "password recovery request";
            message.Body = mailbody;
            message.BodyEncoding = System.Text.Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("visitsyria0@gmail.com", "ahmad.ahmad");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
             //   Response.Write(rString);
            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        else { Response.Write("<script>alert('check the username and the answers ')</script>"); Response.Write(ans1+" "+ans2); }

        if (temp == 1 && ans1 == TextBox6.Text && ans2 == TextBox5.Text)
        {
            try
            {

                conn.Open();
                string insert = (@"UPDATE [Table]
                                  SET password =(@user) 
                                   where username='" + TextBox1.Text + "'");
                SqlCommand com2 = new SqlCommand(insert, conn);
                com2.Parameters.AddWithValue("@user", rString.GetHashCode());
                com2.ExecuteNonQuery();
                // Response.Write("successful ");
                checksuccess = true;

                conn.Close();


            }
            catch (Exception ex)
            {

                checksuccess = false;
                Response.Write("error:" + ex.Message);

            }
        }
        if (checksuccess)
        {
        MultiView1.ActiveViewIndex=1 ;
        }

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
}
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace certificate
{
    public partial class score : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Convert.ToInt32(Session["Score"]) >= 10)
            {
                Label3.Text = "Congo! YOU PASSED THE QUIZ";
                img.ImageUrl = "~/images/pass.png";
            }
            else
            {
                LnkCertificate.Visible = false;
                Label3.Text = "OH NO! YOU FAILED THE QUIZ";
                img.ImageUrl = "~/images/fail.png";
            }
            Label1.Text = Session["Score"].ToString();
            Label2.Text = "/25";

        }
        protected void LnkCertificate_Click(object sender, EventArgs e)
        {
            try
            {
                // Check if the email session variable exists
                if (Session["email"] != null)
                {
                    string email = Session["email"].ToString();
                    string cs = "server=localhost;database=Quiz;uid=root;pwd=aak580;";

                    using (MySqlConnection con = new MySqlConnection(cs))
                    {
                        con.Open();
                        string query = "SELECT name, phone_no FROM UserDetails WHERE email = @Email"; // Removed the comma after phone_no
                        using (MySqlCommand cmd = new MySqlCommand(query, con))
                        {
                            cmd.Parameters.AddWithValue("@Email", email);

                            using (MySqlDataReader reader = cmd.ExecuteReader())
                            {
                                // Check if the email exists
                                if (reader.Read())
                                {
                                    // Fetch user details
                                    string name = reader["name"].ToString();
                                    string phone = reader["phone_no"].ToString();
                                    int score = Convert.ToInt32(Session["Score"]);
                                    string language = Session["language_name"].ToString();

                                    // Redirect to certificate page with user details
                                    Response.Redirect($"certificatePage.aspx?name={name}&email={email}&phone={phone}&score={score}&lang={language}");
                                }
                                else
                                {
                                    Response.Write("Email not found in the database.");
                                }
                            }
                            con.Close();
                        }
                    }
                }
                else
                {
                    Response.Write("Session expired or email not set.");
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message); // Error message
            }
        }


    }
}
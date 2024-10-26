using System;
using MySql.Data.MySqlClient; // Include the MySQL namespace

namespace certificate
{
    public partial class output : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: You can add code here for actions on page load.
        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string email = emailInput.Text; // Get email from input
                string cs = "server=localhost;database=quiz;uid=root;pwd=Admin@123;";

                using (MySqlConnection con = new MySqlConnection(cs))
                {
                    con.Open();
                    string query = "SELECT name, phone_no,score, lang FROM UserDetails WHERE email = @Email";
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
                                int score = Convert.ToInt32(reader["score"]);
                                string language = reader["lang"].ToString();

                                // Redirect to certificate page with user details
                                Response.Redirect($"certificate.aspx?name={name}&email={email}&phone={phone}&score={score}&lang={language}");
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
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message); // Error message
            }
        }
    }
}

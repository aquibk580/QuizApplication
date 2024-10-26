using System;
using MySql.Data.MySqlClient; // Include the MySQL namespace

namespace certificate
{
    public partial class input : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: You can add code here for actions on page load.
        }

        protected void LoginHome_Click(object sender, EventArgs e)
        {
            try
            {
                string cs = "server=localhost;database=quiz;uid=root;pwd=aak580;";
                Session["email"] = email.Text;
                using (MySqlConnection con = new MySqlConnection(cs))
                {
                    string query = "INSERT INTO UserDetails (name, email, phone_no) VALUES (@Name, @Email, @Phone)";

                    using (MySqlCommand cmd = new MySqlCommand(query, con))
                    {
                        // Add parameters to avoid SQL injection
                        cmd.Parameters.AddWithValue("@Name", name.Text.ToUpper());
                        cmd.Parameters.AddWithValue("@Email", email.Text);
                        cmd.Parameters.AddWithValue("@Phone", phone.Text);
                       // cmd.Parameters.AddWithValue("@Score", score.Text);
                       // cmd.Parameters.AddWithValue("@Lang", language.Text.ToUpper());
                        con.Open(); // Open the connection
                        cmd.ExecuteNonQuery(); // Execute the query
                        con.Close();
                    }
                    Response.Redirect("home.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message); // Error message
            }
        }
        
    }
}

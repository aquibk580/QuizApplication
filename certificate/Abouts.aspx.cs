using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace certificate
{
    public partial class Abouts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                string cs = "server=localhost;database=Quiz;uid=root;pwd=aak580;";
                using (MySqlConnection con = new MySqlConnection(cs))
                {

                    string query = "INSERT INTO contactnumber (contact,message) VALUES (@contact,@message)";
                    using (MySqlCommand cmd = new MySqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@contact", ContactInput.Text);
                        cmd.Parameters.AddWithValue("@message", MessageInput.Text);
                        con.Open(); // Open the connection
                        cmd.ExecuteNonQuery(); // Execute the query
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
using System;
using System.Data;
using System.Web.UI;
using MySql.Data.MySqlClient;

namespace certificate
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Clear any previous messages on page load if needed.
            MessageLabel.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Password = "admin1234";
            string inputpass = TextBox1.Text;

            if (inputpass == Password)
            {
                // Define your connection string
                string cs = "server=localhost;database=Quiz;uid=root;pwd=aak580;";

                using (MySqlConnection con = new MySqlConnection(cs))
                {
                    string query = "SELECT * FROM contactnumber";
                    using (MySqlCommand cmd = new MySqlCommand(query, con))
                    {
                        con.Open(); // Open the connection
                        using (MySqlDataReader reader = cmd.ExecuteReader())
                        {
                            // Create a DataTable to hold the query results
                            DataTable dt = new DataTable();
                            dt.Load(reader);

                            // Bind the data to the Repeater
                            Repeater1.DataSource = dt;
                            Repeater1.DataBind();
                        }
                    }
                }
            }
            else
            {
                MessageLabel.Text = "Wrong password"; // Display incorrect password message
            }
        }
    }
}

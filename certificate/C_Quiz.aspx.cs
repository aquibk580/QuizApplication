using System;
using System.Data;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace certificate
{
    public partial class C_Quiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeater();
            }
        }

        private void BindRepeater()
        {
            string server = "localhost";
            string database = "Quiz";
            string uid = "root";
            string password = "aak580";

            string connectionString = "Server=" + server + ";" + "Database=" + database + ";" + "User Id=" + uid + ";" + "Password= " + password + ";";

            string query = Session["query"] as string;

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                MySqlCommand command = new MySqlCommand(query, connection);
                MySqlDataAdapter adapter = new MySqlDataAdapter(command);
                DataTable dataTable = new DataTable();

                try
                {
                    connection.Open();
                    adapter.Fill(dataTable);

                    RepeaterQuestions.DataSource = dataTable;
                    RepeaterQuestions.DataBind();

                    // Initialize the correctAnswers array and store in ViewState
                    string[] correctAnswers = new string[dataTable.Rows.Count];
                    for (int i = 0; i < dataTable.Rows.Count; i++)
                    {
                        correctAnswers[i] = dataTable.Rows[i]["correct_answer"].ToString();
                    }

                    ViewState["CorrectAnswers"] = correctAnswers;

                    if (dataTable.Rows.Count > 0)
                    {
                        lang.Text = dataTable.Rows[1]["language_name"].ToString();
                        Label1.Text = dataTable.Rows[1]["language_name"].ToString();
                        Session["language_name"] = dataTable.Rows[1]["language_name"].ToString();

                    }
                }
                catch (Exception ex)
                {
                    Response.Write($"<script>alert('Error: {ex.Message}');</script>");
                }
            }
        }

        public void Submit_Click(Object sender, EventArgs e)
        {
            // Retrieve correct answers from ViewState
            string[] correctAnswers = ViewState["CorrectAnswers"] as string[];

            if (correctAnswers == null)
            {
                result.Text = "No answers were found.";
                return;
            }

            int score = 0;

            for (int i = 0; i < RepeaterQuestions.Items.Count; i++)
            {
                RepeaterItem item = RepeaterQuestions.Items[i];

                // Find each RadioButton by their IDs within the repeater item
                RadioButton R1 = (RadioButton)item.FindControl("R1");
                RadioButton R2 = (RadioButton)item.FindControl("R2");
                RadioButton R3 = (RadioButton)item.FindControl("R3");
                RadioButton R4 = (RadioButton)item.FindControl("R4");

                // Get the correct option from the correctAnswers array
                string correctOption = correctAnswers[i];

                // Check which radio button is checked and compare with the correct option
                if ((R1.Checked && R1.Attributes["value"] == correctOption) ||
                    (R2.Checked && R2.Attributes["value"] == correctOption) ||
                    (R3.Checked && R3.Attributes["value"] == correctOption) ||
                    (R4.Checked && R4.Attributes["value"] == correctOption))
                {
                    score++;
                }
            }

            // Display the score
            //result.Text = "Your Score: " + score.ToString();
            Session["score"] = score.ToString();
            Response.Redirect("score.aspx");
        }

    }
}

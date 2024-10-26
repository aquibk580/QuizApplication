using System;
using MySql.Data.MySqlClient; // Include the MySQL namespace

namespace certificate
{
    public partial class certificatePage : System.Web.UI.Page
    {
        protected string name;
        protected string email;
        protected string phone;
        protected int score;
        protected string language;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch data from query string
                name = Request.QueryString["name"];
                email = Request.QueryString["email"];
                phone = Request.QueryString["phone"];
               score = Convert.ToInt32(Request.QueryString["score"]);
              language = Request.QueryString["lang"];

                // Set the Literal values
                litName.Text = name;
                litEmail.Text = email;
                litPhone.Text = phone;
                litDate.Text = DateTime.Now.ToString("dd-MM-yyyy");
                litTime.Text = DateTime.Now.ToString("hh:mm");
                litScore.Text = $"{score}/25";
                litLanguage.Text = language;
            }
        }

        protected void B1_Click(object sender, EventArgs e)
        {
            // Redirect to home.aspx
            Response.Redirect("home.aspx");
        }
    }
}

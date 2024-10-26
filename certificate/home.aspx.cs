using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace certificate
{

    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCSharpQuiz_Click(object sender, EventArgs e)
        {
            Session["query"] = "SELECT * FROM Languages JOIN QuizQuestions ON Languages.language_id=QuizQuestions.language_id where Languages.language_id=1 ;"; Response.Redirect("C_Quiz.aspx");
        }
        protected void btnJavaQuiz_Click(object sender, EventArgs e)
        {
            Session["query"] = "SELECT * FROM Languages JOIN QuizQuestions ON Languages.language_id=QuizQuestions.language_id where Languages.language_id=2 ;"; Response.Redirect("C_Quiz.aspx");
        }
        protected void btnCQuiz_Click(object sender, EventArgs e)
        {
            Session["query"] = "SELECT * FROM Languages JOIN QuizQuestions ON Languages.language_id=QuizQuestions.language_id where Languages.language_id=3 ;"; Response.Redirect("C_Quiz.aspx");
        }
        protected void btnAspNetQuiz_Click(object sender, EventArgs e)
        {
            Session["query"] = "SELECT * FROM Languages JOIN QuizQuestions ON Languages.language_id=QuizQuestions.language_id where Languages.language_id=4 ;"; Response.Redirect("C_Quiz.aspx");
        }
        protected void btnCppQuiz_Click(object sender, EventArgs e)
        {
            Session["query"] = "SELECT * FROM Languages JOIN QuizQuestions ON Languages.language_id=QuizQuestions.language_id where Languages.language_id=5 ;"; Response.Redirect("C_Quiz.aspx");
        }
        protected void btnCssQuiz_Click(object sender, EventArgs e)
        {
            Session["query"] = "SELECT * FROM Languages JOIN QuizQuestions ON Languages.language_id=QuizQuestions.language_id where Languages.language_id=6 ;"; Response.Redirect("C_Quiz.aspx");
        }
        protected void btnJsQuiz_Click(object sender, EventArgs e)
        {
            Session["query"] = "SELECT * FROM Languages JOIN QuizQuestions ON Languages.language_id=QuizQuestions.language_id where Languages.language_id=8 ;"; Response.Redirect("C_Quiz.aspx");
        }
        protected void btnPlSqlQuiz_Click(object sender, EventArgs e)
        {
            Session["query"] = "SELECT * FROM Languages JOIN QuizQuestions ON Languages.language_id=QuizQuestions.language_id where Languages.language_id=9 ;"; Response.Redirect("C_Quiz.aspx");
        }
        protected void btnSqlQuiz_Click(object sender, EventArgs e)
        {
            Session["query"] = "SELECT * FROM Languages JOIN QuizQuestions ON Languages.language_id=QuizQuestions.language_id where Languages.language_id=10 ;"; Response.Redirect("C_Quiz.aspx");
        }
        protected void btnLanguage_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            string selectedLanguage = clickedButton.ID;
            Response.Redirect($"dox.aspx?lang={selectedLanguage}");
        }
    }
}
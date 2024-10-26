using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace certificate
{
    public partial class dox : System.Web.UI.Page
    {
        //private static List<string> languages = new List<string> { "CSharp", "Java", "Python", "C", "Cpp" };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string lang = Request.QueryString["lang"] ?? "csharp";
                ViewState["CurrentLang"] = lang;
                UpdateContent();
            }

        }
        private void UpdateContent()
        {
            string currentLang = (string)ViewState["CurrentLang"];

            // Add client-side script to load content
            ScriptManager.RegisterStartupScript(this, GetType(), "LoadContent", $"loadContent('{currentLang}');", true);
        }
        protected void DownloadButton_Click(object sender, EventArgs e)
        {

            string currentLang = (string)ViewState["CurrentLang"];
            string fileName = $"{currentLang}.pdf"; // Construct the PDF file name based on the current language
            string filePath = Server.MapPath($"~/Files/{fileName}");

            // Check if the file exists
            if (System.IO.File.Exists(filePath))
            {
                Response.ContentType = "application/pdf";
                Response.AppendHeader("Content-Disposition", $"attachment; filename={fileName}");
                Response.TransmitFile(filePath);
                Response.End();
            }
            else
            {
                // Handle the case where the file does not exist (optional)
                Response.StatusCode = 404; // File not found
                Response.End();
            }
        }

        

        

       




    }

}
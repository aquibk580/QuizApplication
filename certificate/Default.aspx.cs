using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace certtificate
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLanguage_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            string selectedLanguage = clickedButton.ID;
            Response.Redirect($"dox.aspx?lang={selectedLanguage}");
        }
    }
}


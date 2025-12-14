using System;

namespace webhomework_new
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/account/login.aspx");
            }
        }
    }
}

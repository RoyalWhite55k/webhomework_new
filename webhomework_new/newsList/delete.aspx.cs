using System;
using System.Data.SQLite;

namespace webhomework_new.newsList
{
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/account/login.aspx");
            }

            int id;
            if (!int.TryParse(Request.QueryString["id"], out id))
            {
                Response.Redirect("manage.aspx");
            }

            string author = Session["username"].ToString();

            Db.Execute(
                "DELETE FROM news WHERE id=@id AND author=@a",
                new SQLiteParameter("@id", id),
                new SQLiteParameter("@a", author)
            );

            Response.Redirect("manage.aspx");
        }
    }
}

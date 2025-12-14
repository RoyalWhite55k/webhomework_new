using System;
using System.Data.SQLite;

namespace webhomework_new.newsList
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 未登录不能发布
            if (Session["username"] == null)
            {
                Response.Redirect("~/account/login.aspx");
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string title = txtTitle.Text.Trim();
            string content = txtContent.Text.Trim();
            string author = Session["username"].ToString();

            Db.Execute(
                "INSERT INTO news(title, content, author) VALUES(@t, @c, @a)",
                new SQLiteParameter("@t", title),
                new SQLiteParameter("@c", content),
                new SQLiteParameter("@a", author)
            );

            Response.Write("<script>alert('发布成功');location='list.aspx';</script>");
        }
    }
}

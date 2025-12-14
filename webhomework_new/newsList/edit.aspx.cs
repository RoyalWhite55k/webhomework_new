using System;
using System.Data.SQLite;

namespace webhomework_new.newsList
{
    public partial class edit : System.Web.UI.Page
    {
        int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/account/login.aspx");
            }

            // 获取新闻 id
            if (!int.TryParse(Request.QueryString["id"], out id))
            {
                Response.Redirect("manage.aspx");
            }

            if (!IsPostBack)
            {
                LoadData();
            }
        }

        // 加载原始数据到页面
        void LoadData()
        {
            using (var conn = new SQLiteConnection(Db.ConnStr))
            {
                conn.Open();
                using (var cmd = new SQLiteCommand(
                    "SELECT title, content FROM news WHERE id=@id", conn))
                {
                    cmd.Parameters.AddWithValue("@id", id);
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            txtTitle.Text = reader["title"].ToString();
                            txtContent.Text = reader["content"].ToString();
                        }
                        else
                        {
                            Response.Redirect("manage.aspx");
                        }
                    }
                }
            }
        }

        // 保存修改（UPDATE）
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string title = txtTitle.Text.Trim();
            string content = txtContent.Text.Trim();
            string author = Session["username"].ToString();

            Db.Execute(
                "UPDATE news SET title=@t, content=@c WHERE id=@id AND author=@a",
                new SQLiteParameter("@t", title),
                new SQLiteParameter("@c", content),
                new SQLiteParameter("@id", id),
                new SQLiteParameter("@a", author)
            );

            Response.Write("<script>alert('修改成功');location='manage.aspx';</script>");
        }
    }
}

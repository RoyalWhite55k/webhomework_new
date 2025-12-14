using System;
using System.Data;
using System.Data.SQLite;

namespace webhomework_new.newsList
{
    public partial class manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/account/login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadMyNews();
            }
        }

        void LoadMyNews()
        {
            string author = Session["username"].ToString();
            DataTable dt = new DataTable();

            using (var conn = new SQLiteConnection(Db.ConnStr))
            {
                conn.Open();
                using (var da = new SQLiteDataAdapter(
                    "SELECT * FROM news WHERE author=@a ORDER BY id DESC",
                    conn))
                {
                    da.SelectCommand.Parameters.AddWithValue("@a", author);
                    da.Fill(dt);
                }
            }

            rpMyNews.DataSource = dt;
            rpMyNews.DataBind();

            pnlEmpty.Visible = dt.Rows.Count == 0;
        }
    }
}

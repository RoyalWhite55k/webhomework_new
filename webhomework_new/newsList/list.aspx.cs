using System;
using System.Data;
using System.Data.SQLite;

namespace webhomework_new.newsList
{
    public partial class list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadNews();
            }
        }

        void LoadNews()
        {
            DataTable dt = new DataTable();

            using (var conn = new SQLiteConnection(Db.ConnStr))
            {
                conn.Open();
                using (var da = new SQLiteDataAdapter(
                    "SELECT * FROM news ORDER BY id DESC", conn))
                {
                    da.Fill(dt);
                }
            }

            rpNews.DataSource = dt;
            rpNews.DataBind();

            pnlEmpty.Visible = dt.Rows.Count == 0;
        }

    }
}

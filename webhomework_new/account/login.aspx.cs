using System;
using System.Data.SQLite;

namespace webhomework_new.account
{
    public partial class login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUser.Text.Trim();
            string password = txtPwd.Text.Trim();

            object count = Db.Scalar(
                "SELECT COUNT(*) FROM users WHERE username=@u AND password=@p",
                new SQLiteParameter("@u", username),
                new SQLiteParameter("@p", password)
            );

            if (Convert.ToInt32(count) == 0)
            {
                Response.Write("<script>alert('用户名或密码错误');</script>");
                return;
            }

            // ✅ 写入 Session（关键）
            Session["username"] = username;

            Response.Redirect("~/index.aspx");
        }
    }
}

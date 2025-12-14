using System;
using System.Data.SQLite;
using webhomework_new;

namespace webhomework_new.account
{
    public partial class register : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUser.Text.Trim();
            string password = txtPwd.Text.Trim();

            object count = Db.Scalar(
                "SELECT COUNT(*) FROM users WHERE username = @u",
                new SQLiteParameter("@u", username)
            );

            if (Convert.ToInt32(count) > 0)
            {
                Response.Write("<script>alert('用户名已存在');</script>");
                return;
            }

            Db.Execute(
                "INSERT INTO users(username, password) VALUES(@u, @p)",
                new SQLiteParameter("@u", username),
                new SQLiteParameter("@p", password)
            );

            Response.Write("<script>alert('注册成功');location='login.aspx';</script>");
        }
    }
}

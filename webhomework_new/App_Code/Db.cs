using System;
using System.Data;
using System.Data.SQLite;
using System.IO;
using System.Web;

namespace webhomework_new
{
    public static class Db
    {
        public static string DbPath
        {
            get
            {
                return HttpContext.Current.Server.MapPath("~/App_Data/webhomework.db");
            }
        }

        public static string ConnStr
        {
            get
            {
                return "Data Source=" + DbPath + ";Version=3;";
            }
        }

        static Db()
        {
            if (!File.Exists(DbPath) || new FileInfo(DbPath).Length == 0)
            {
                if (File.Exists(DbPath))
                {
                    File.Delete(DbPath);
                }
                SQLiteConnection.CreateFile(DbPath);
            }

            using (var conn = new SQLiteConnection(ConnStr))
            {
                conn.Open();

                string userSql = @"
                CREATE TABLE IF NOT EXISTS users (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    username TEXT UNIQUE NOT NULL,
                    password TEXT NOT NULL,
                    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
                );";

                using (var cmd = new SQLiteCommand(userSql, conn))
                {
                    cmd.ExecuteNonQuery();
                }

                string newsSql = @"
                CREATE TABLE IF NOT EXISTS news (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    title TEXT NOT NULL,
                    content TEXT NOT NULL,
                    author TEXT NOT NULL,
                    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
                );";

                using (var cmd = new SQLiteCommand(newsSql, conn))
                {
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public static object Scalar(string sql, params SQLiteParameter[] ps)
        {
            using (var conn = new SQLiteConnection(ConnStr))
            {
                conn.Open();
                using (var cmd = new SQLiteCommand(sql, conn))
                {
                    if (ps != null)
                        cmd.Parameters.AddRange(ps);

                    return cmd.ExecuteScalar();
                }
            }
        }

        public static int Execute(string sql, params SQLiteParameter[] ps)
        {
            using (var conn = new SQLiteConnection(ConnStr))
            {
                conn.Open();
                using (var cmd = new SQLiteCommand(sql, conn))
                {
                    if (ps != null)
                        cmd.Parameters.AddRange(ps);

                    return cmd.ExecuteNonQuery();
                }
            }
        }

        public static DataTable Query(string sql, params SQLiteParameter[] ps)
        {
            using (var conn = new SQLiteConnection(ConnStr))
            {
                conn.Open();
                using (var cmd = new SQLiteCommand(sql, conn))
                {
                    if (ps != null)
                        cmd.Parameters.AddRange(ps);

                    using (var da = new SQLiteDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }
}

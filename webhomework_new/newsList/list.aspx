<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="list.aspx.cs"
    Inherits="webhomework_new.newsList.list" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>新闻列表</title>

    <style>
        body {
            margin: 0;
            font-family: "Microsoft YaHei", "Segoe UI", sans-serif;
            background: linear-gradient(135deg, #f6f9ff, #eef3ff);
            color: #333;
        }

        .page {
            padding: 50px 0 80px;
        }

        .container {
            width: 900px;
            max-width: 92%;
            margin: 0 auto;
        }

        .page-header {
            margin-bottom: 28px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 12px;
        }

        .page-header h2 {
            margin: 0;
            font-size: 28px;
            color: #3b4cca;
            letter-spacing: 2px;
        }

        .back-home {
            display: inline-block;
            padding: 8px 20px;
            border-radius: 999px;
            background: linear-gradient(135deg, #6a8dff, #7fd7ff);
            color: #fff;
            text-decoration: none;
            font-size: 14px;
            transition: all .3s;
        }

        .back-home:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 24px rgba(0,0,0,0.15);
        }

        .news-card {
            background: #ffffff;
            border-radius: 16px;
            padding: 26px 28px;
            box-shadow: 0 14px 30px rgba(0,0,0,0.08);
            margin-bottom: 22px;
        }

        .news-card h3 {
            margin: 0 0 10px;
            color: #2c3e50;
        }

        .news-card p {
            margin: 0 0 12px;
            color: #555;
            line-height: 1.7;
        }

        .news-card small {
            color: #8a94a6;
            font-size: 13px;
        }

        .empty-box {
            background: #ffffff;
            border-radius: 18px;
            padding: 60px 40px;
            text-align: center;
            box-shadow: 0 14px 30px rgba(0,0,0,0.08);
        }

        .empty-box h3 {
            margin: 0 0 14px;
            font-size: 22px;
            color: #3b4cca;
        }

        .empty-box p {
            margin: 0 0 22px;
            color: #666;
        }

        .empty-box a {
            display: inline-block;
            padding: 10px 26px;
            border-radius: 999px;
            background: linear-gradient(135deg, #6a8dff, #7fd7ff);
            color: #fff;
            text-decoration: none;
            transition: all .3s;
        }

        .empty-box a:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 28px rgba(0,0,0,0.15);
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="page">
        <div class="container">

            <div class="page-header">
                <h2>新闻列表</h2>
                <a class="back-home" href="../index.aspx">返回主页</a>
            </div>

            <asp:Panel ID="pnlEmpty" runat="server" Visible="false">
                <div class="empty-box">
                    <h3>当前一条新闻也没有</h3>
                    <p>您可以新建一条新闻</p>
                    <a href="add.aspx">立即发布新闻</a>
                </div>
            </asp:Panel>

            <asp:Repeater ID="rpNews" runat="server">
                <ItemTemplate>
                    <div class="news-card">
                        <h3><%# Eval("title") %></h3>
                        <p><%# Eval("content") %></p>
                        <small>
                            作者：<%# Eval("author") %> |
                            时间：<%# Eval("created_at") %>
                        </small>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </div>
</form>
</body>
</html>

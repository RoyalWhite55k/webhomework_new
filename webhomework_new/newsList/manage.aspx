<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="manage.aspx.cs"
    Inherits="webhomework_new.newsList.manage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>我发布的新闻</title>

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
            margin-bottom: 20px;
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

        .manage-list {
            margin-top:10px;
            background: #ffffff;
            border-radius: 16px;
            box-shadow: 0 16px 36px rgba(0,0,0,0.08);
            overflow: hidden;
        }

        .manage-item {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 18px 22px;
            border-bottom: 1px solid #edf0f5;
            transition: background .25s;
        }

        .manage-item:last-child {
            border-bottom: none;
        }

        .manage-item:hover {
            background: #f6f9ff;
        }

        .news-title {
            font-size: 15.5px;
            color: #2c3e50;
            font-weight: 600;
            flex: 1;
        }

        .actions {
            display: flex;
            gap: 12px;
            margin-left: 20px;
            white-space: nowrap;
        }

        .actions a {
            padding: 6px 14px;
            border-radius: 999px;
            font-size: 13px;
            text-decoration: none;
            transition: all .25s;
        }

        .actions a.edit {
            color: #4a6cff;
            background: rgba(74,108,255,0.12);
        }

        .actions a.edit:hover {
            background: rgba(74,108,255,0.22);
        }

        .actions a.delete {
            color: #ff5a5a;
            background: rgba(255,90,90,0.12);
        }

        .actions a.delete:hover {
            background: rgba(255,90,90,0.22);
        }

        .empty-box {
            padding: 60px 40px;
            text-align: center;
        }

        .empty-box h3 {
            margin: 0 0 14px;
            font-size: 22px;
            color: #3b4cca;
        }

        .empty-box p {
            margin: 0 0 26px;
            color: #666;
            font-size: 15px;
        }

        .empty-box a {
            display: inline-block;
            padding: 10px 26px;
            border-radius: 999px;
            background: linear-gradient(135deg, #6a8dff, #7fd7ff);
            color: #fff;
            text-decoration: none;
            font-size: 14px;
            transition: all .3s;
        }

        .empty-box a:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 28px rgba(0,0,0,0.15);
        }

        .footer {
            text-align: center;
            margin-top: 26px;
            font-size: 13px;
            color: #9aa4b2;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="page">
        <div class="container">

            <div class="page-header">
                <h2>我发布的新闻</h2>
                <a class="back-home" href="../index.aspx">返回主页</a>
            </div>

            <asp:Panel ID="pnlEmpty" runat="server" Visible="false">
                <div class="manage-list">
                    <div class="empty-box">
                        <h3>当前还没有发布任何新闻</h3>
                        <p>您可以先发布一条新闻，再进行管理操作</p>
                        <a href="add.aspx">立即发布新闻</a>
                    </div>
                </div>
            </asp:Panel>

            <asp:Repeater ID="rpMyNews" runat="server">
                <ItemTemplate>
                    <div class="manage-list">
                        <div class="manage-item">
                            <div class="news-title">
                                <%# Eval("title") %>
                            </div>

                            <div class="actions">
                                <a class="edit"
                                   href='edit.aspx?id=<%# Eval("id") %>'>
                                    编辑
                                </a>

                                <a class="delete"
                                   href='delete.aspx?id=<%# Eval("id") %>'
                                   onclick="return confirm('确定要删除吗？');">
                                    删除
                                </a>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <div class="footer">© Web语言基础课程作业</div>

        </div>
    </div>
</form>
</body>
</html>

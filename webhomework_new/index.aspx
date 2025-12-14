<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="index.aspx.cs"
    Inherits="webhomework_new.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>新闻与在线考试系统</title>
    <link href="content/site.css" rel="stylesheet" />

    <style>
        body {
            margin: 0;
            font-family: "Microsoft YaHei", "Segoe UI", sans-serif;
            background: linear-gradient(135deg, #f6f9ff, #eef3ff);
            color: #333;
        }

        .header {
            background: linear-gradient(135deg, #6a8dff, #7fd7ff);
            padding: 40px 0 30px;
            text-align: center;
            color: #fff;
        }

        .header h1 {
            margin: 0;
            font-size: 32px;
            letter-spacing: 2px;
        }

        .nav {
            margin-top: 25px;
            display: flex;
            justify-content: center;
            gap: 24px;
            flex-wrap: wrap;
        }

        .nav a {
            padding: 10px 22px;
            border-radius: 999px;
            background: rgba(255,255,255,0.2);
            color: #fff;
            text-decoration: none;
            font-size: 15px;
            transition: all .3s;
            backdrop-filter: blur(6px);
        }

        .nav a:hover {
            background: #ffffff;
            color: #4a6cff;
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(0,0,0,0.15);
        }

        .container {
            max-width: 900px;
            margin: 20px auto 60px;
            background: #fff;
            border-radius: 16px;
            padding: 50px 45px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.08);
        }

        .section {
            margin-bottom: 40px;
        }

        .container h2 {
            font-size: 26px;
            margin-bottom: 15px;
            color: #3b4cca;
        }

        .container h3 {
            font-size: 20px;
            margin-bottom: 15px;
            color: #4a6cff;
        }

        .container p {
            color: #666;
            line-height: 1.8;
        }

        .container a {
            color: #4a6cff;
            text-decoration: none;
            font-weight: 500;
        }

        .container a:hover {
            text-decoration: underline;
        }

        .feature-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            gap: 18px;
            padding: 0;
            margin: 0;
            list-style: none;
        }

        .feature-list li {
            background: linear-gradient(135deg, #f5f8ff, #ffffff);
            border-radius: 12px;
            padding: 18px 20px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.06);
            transition: all .3s;
        }

        .feature-list li:hover {
            transform: translateY(-4px);
            box-shadow: 0 14px 30px rgba(0,0,0,0.1);
        }

        .status {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: #f3f7ff;
            border-radius: 12px;
            padding: 18px 22px;
            font-size: 16px;
        }

        .status strong {
            font-size: 22px;
            color: #ff6b6b;
        }

        .footer {
            text-align: center;
            padding: 25px;
            color: #9aa4b2;
            font-size: 14px;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

    <div class="header">
        <h1>Web语言基础课程作业</h1>
        <div class="nav">
            <a href="newsList/list.aspx">信息展示</a>
            <a href="newsList/manage.aspx">信息管理</a>
            <a href="newsList/add.aspx">信息发布</a>
            <a href="/quiz.aspx">在线答题</a>
        </div>
    </div>

    <div class="container">

        <div class="section">
            <h2>系统简介</h2>
            <p>
                本系统基于 ASP.NET WebForms 技术开发，
                使用 SQL Server 数据库存储数据，
                实现新闻发布、新闻展示、在线答题等功能。
            </p>
            github主页:
            <a href="https://github.com/RoyalWhite55k" target="_blank">
                https://github.com/RoyalWhite55k
            </a>
        </div>

        <div class="section">
            <h3>主要功能</h3>
            <ul class="feature-list">
                <li>用户注册与登录</li>
                <li>新闻信息展示与详情查看</li>
                <li>后台新闻数据管理（增删改查）</li>
                <li>在线简易答题与结果判定</li>
            </ul>
        </div>

        <div class="section">
            <div class="status">
                <span>当前在线人数：</span>
                <strong>1</strong>
            </div>
        </div>

    </div>

    <div class="footer">
        © Web语言基础课程作业
    </div>

</form>
</body>
</html>

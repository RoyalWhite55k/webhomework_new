<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="quiz.aspx.cs"
    Inherits="webhomework_new.quiz" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>MBTI 性格测试</title>

    <style>
        body {
            margin: 0;
            font-family: "Microsoft YaHei", "Segoe UI", sans-serif;
            background: linear-gradient(135deg, #f6f9ff, #eef3ff);
            color: #333;
        }

        .page {
            min-height: 100vh;
            padding: 46px 0 70px;
        }

        .box {
            width: 860px;
            max-width: 92%;
            margin: 0 auto;
            background: #fff;
            border-radius: 18px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.08);
            overflow: hidden;
        }

        .hero {
            padding: 26px 36px;
            background: linear-gradient(135deg, #6a8dff, #7fd7ff);
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 12px;
        }

        .hero h2 {
            margin: 0;
            font-size: 26px;
            letter-spacing: 2px;
        }

        .back-home {
            display: inline-block;
            padding: 8px 20px;
            border-radius: 999px;
            background: rgba(255,255,255,0.22);
            color: #fff;
            text-decoration: none;
            font-size: 14px;
            transition: all .3s;
        }

        .back-home:hover {
            background: #ffffff;
            color: #4a6cff;
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        .content {
            padding: 34px 36px 38px;
        }

        .question {
            margin: 18px 0;
            padding: 18px 18px 14px;
            border-radius: 14px;
            background: linear-gradient(135deg, #f5f8ff, #ffffff);
            box-shadow: 0 10px 24px rgba(0,0,0,0.06);
            transition: all .3s;
        }

        .question:hover {
            transform: translateY(-2px);
            box-shadow: 0 14px 30px rgba(0,0,0,0.10);
        }

        .question p {
            margin: 0 0 12px;
            font-size: 16px;
            color: #2c3e50;
            font-weight: 600;
        }

        .question table {
            width: 100%;
            border-collapse: collapse;
        }

        .question td {
            padding: 8px 6px;
        }

        .question input[type=radio] {
            transform: translateY(1px);
            margin-right: 10px;
            accent-color: #6a8dff;
        }

        .question label {
            cursor: pointer;
            color: #4b5563;
            font-size: 15px;
        }

        .actions {
            display: flex;
            justify-content: center;
            margin-top: 22px;
        }

        input[type=submit] {
            width: 100%;
            max-width: 320px;
            padding: 12px 16px;
            border: none;
            border-radius: 999px;
            background: linear-gradient(135deg, #6a8dff, #7fd7ff);
            color: #fff;
            font-size: 15px;
            cursor: pointer;
            transition: all .3s;
        }

        input[type=submit]:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 28px rgba(0,0,0,0.15);
        }

        input[type=submit]:active {
            transform: translateY(0);
            box-shadow: 0 8px 18px rgba(0,0,0,0.12);
        }

        .result {
            margin-top: 22px;
            padding: 18px 18px;
            border-radius: 14px;
            background: linear-gradient(135deg, #eef3ff, #ffffff);
            box-shadow: 0 10px 24px rgba(0,0,0,0.06);
            border: 1px solid rgba(106,141,255,0.18);
        }

        .result span, .result label {
            font-size: 15px;
            color: #2c3e50;
        }

        .footer {
            text-align: center;
            margin-top: 18px;
            font-size: 13px;
            color: #9aa4b2;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="page">
        <div class="box">

            <div class="hero">
                <h2>MBTI 简易性格测试</h2>
                <a class="back-home" href="index.aspx">返回主页</a>
            </div>

            <div class="content">

                <div class="question">
                    <p>1️⃣ 周末你更倾向于：</p>
                    <asp:RadioButtonList ID="q1" runat="server">
                        <asp:ListItem Value="E">和朋友外出社交</asp:ListItem>
                        <asp:ListItem Value="I">独处或在家休息</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

                <div class="question">
                    <p>2️⃣ 你做决定时更依赖：</p>
                    <asp:RadioButtonList ID="q2" runat="server">
                        <asp:ListItem Value="T">逻辑分析</asp:ListItem>
                        <asp:ListItem Value="F">个人感受</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

                <div class="question">
                    <p>3️⃣ 你做事更偏向：</p>
                    <asp:RadioButtonList ID="q3" runat="server">
                        <asp:ListItem Value="J">提前计划好</asp:ListItem>
                        <asp:ListItem Value="P">随机应变</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

                <div class="actions">
                    <asp:Button ID="btnSubmit" runat="server"
                        Text="提交测试"
                        OnClick="btnSubmit_Click" />
                </div>

                <asp:Panel ID="pnlResult" runat="server" Visible="false" CssClass="result">
                    <asp:Label ID="lblResult" runat="server" />
                </asp:Panel>

                <div class="footer">© Web语言基础课程作业</div>
            </div>
        </div>
    </div>
</form>
</body>
</html>

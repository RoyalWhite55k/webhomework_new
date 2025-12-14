<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="edit.aspx.cs"
    Inherits="webhomework_new.newsList.edit" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>编辑新闻</title>

    <style>
        body {
            margin: 0;
            font-family: "Microsoft YaHei", "Segoe UI", sans-serif;
            background: linear-gradient(135deg, #f6f9ff, #eef3ff);
            min-height: 100vh;
            color: #333;
        }

        .page {
            padding: 50px 0 80px;
        }

        .card {
            width: 760px;
            max-width: 92%;
            margin: 0 auto;
            background: #ffffff;
            border-radius: 18px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.08);
            overflow: hidden;
        }

        .card-header {
            background: linear-gradient(135deg, #6a8dff, #7fd7ff);
            padding: 26px 32px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 12px;
        }

        .card-header h2 {
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

        .card-body {
            padding: 34px 32px 38px;
        }

        .form-item {
            margin-bottom: 26px;
        }

        .form-control {
            width: 100%;
            padding: 12px 14px;
            border-radius: 12px;
            border: 1px solid #dcdfe6;
            font-size: 14px;
            box-sizing: border-box;
            transition: all .3s;
            font-family: inherit;
        }

        .form-control:focus {
            outline: none;
            border-color: #6a8dff;
            box-shadow: 0 0 0 3px rgba(106,141,255,0.15);
        }

        textarea.form-control {
            resize: vertical;
            min-height: 180px;
            line-height: 1.6;
        }

        .actions {
            display: flex;
            justify-content: center;
            margin-top: 10px;
        }

        input[type=submit] {
            width: 100%;
            max-width: 260px;
            padding: 12px;
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
        <div class="card">
            <div class="card-header">
                <h2>编辑新闻</h2>
                <a class="back-home" href="../index.aspx">返回主页</a>
            </div>

            <div class="card-body">
                <div class="form-item">
                    <asp:TextBox
                        ID="txtTitle"
                        runat="server"
                        CssClass="form-control" />
                </div>

                <div class="form-item">
                    <asp:TextBox
                        ID="txtContent"
                        runat="server"
                        CssClass="form-control"
                        TextMode="MultiLine" />
                </div>

                <div class="actions">
                    <asp:Button
                        ID="btnSave"
                        runat="server"
                        Text="保存修改"
                        OnClick="btnSave_Click" />
                </div>

                <div class="footer">© Web语言基础课程作业</div>
            </div>
        </div>
    </div>
</form>
</body>
</html>

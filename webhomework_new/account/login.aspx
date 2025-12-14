<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="login.aspx.cs"
    Inherits="webhomework_new.account.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>用户登录</title>

    <style>
        body {
            margin: 0;
            font-family: "Microsoft YaHei", "Segoe UI", sans-serif;
            background: linear-gradient(135deg, #f6f9ff, #eef3ff);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .box {
            width: 380px;
            max-width: 90%;
            background: #ffffff;
            padding: 42px 38px;
            border-radius: 16px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.08);
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #3b4cca;
            letter-spacing: 2px;
        }

        .form-control {
            width: 100%;
            padding: 12px 14px;
            border-radius: 10px;
            border: 1px solid #dcdfe6;
            font-size: 14px;
            margin-top: 16px;
            box-sizing: border-box;
            transition: all .3s;
        }

        .form-control:focus {
            outline: none;
            border-color: #6a8dff;
            box-shadow: 0 0 0 3px rgba(106,141,255,0.15);
        }

        input[type=submit],
        button {
            width: 100%;
            padding: 12px;
            margin-top: 22px;
            border: none;
            border-radius: 999px;
            background: linear-gradient(135deg, #6a8dff, #7fd7ff);
            color: #fff;
            font-size: 15px;
            cursor: pointer;
            transition: all .3s;
        }

        input[type=submit]:hover,
        button:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }

        .footer-link {
            margin-top: 22px;
            text-align: center;
            font-size: 14px;
            color: #666;
        }

        .footer-link a {
            color: #4a6cff;
            text-decoration: none;
            margin-left: 4px;
        }

        .footer-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

    <div class="box">
        <h2>登录</h2>

        <asp:TextBox
            ID="txtUser"
            runat="server"
            CssClass="form-control"
            placeholder="用户名" />

        <asp:TextBox
            ID="txtPwd"
            runat="server"
            CssClass="form-control"
            TextMode="Password"
            placeholder="密码" />

        <asp:Button
            ID="btnLogin"
            runat="server"
            Text="登录"
            OnClick="btnLogin_Click" />

        <div class="footer-link">
            还没有账号？
            <a href="register.aspx">立即注册</a>
        </div>
    </div>

</form>
</body>
</html>

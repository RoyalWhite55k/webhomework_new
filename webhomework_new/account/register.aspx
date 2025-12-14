<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="register.aspx.cs"
    Inherits="webhomework_new.account.register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>用户注册</title>
    <link href="../content/site.css" rel="stylesheet" />

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

        .container {
            width: 420px;
            max-width: 90%;
            background: #ffffff;
            padding: 42px 38px;
            border-radius: 18px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.08);
        }

        h2 {
            text-align: center;
            margin-bottom: 34px;
            color: #3b4cca;
            letter-spacing: 2px;
        }

        .form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .form-item {
            width: 100%;
            margin-bottom: 22px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-size: 14px;
            color: #555;
        }

        .form-control {
            width: 100%;
            padding: 12px 14px;
            border-radius: 12px;
            border: 1px solid #dcdfe6;
            font-size: 14px;
            box-sizing: border-box;
            transition: all .3s;
        }

        .form-control:focus {
            outline: none;
            border-color: #6a8dff;
            box-shadow: 0 0 0 3px rgba(106,141,255,0.15);
        }

        span[style*="color"] {
            display: block;
            margin-top: 6px;
            font-size: 13px;
        }

        .btn-wrap {
            width: 100%;
            display: flex;
            justify-content: center;
            margin-top: 8px;
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
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }

        .msg {
            text-align: center;
            margin-top: 14px;
        }

        hr {
            margin: 32px 0 22px;
            border: none;
            height: 1px;
            background: linear-gradient(to right, transparent, #ddd, transparent);
        }

        .links {
            text-align: center;
            font-size: 14px;
        }

        .links a {
            color: #4a6cff;
            text-decoration: none;
            margin: 0 6px;
        }

        .links a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

    <div class="container">
        <h2>用户注册</h2>

        <div class="form">
            <div class="form-item">
                <asp:Label runat="server" Text="账号&nbsp&nbsp&nbsp&nbsp"></asp:Label>
                <asp:TextBox ID="txtUser" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator
                    ControlToValidate="txtUser"
                    ErrorMessage="用户名不能为空"
                    ForeColor="Red"
                    runat="server" />
            </div>

            <div class="form-item">
                <asp:Label runat="server" Text="密码&nbsp&nbsp&nbsp&nbsp"></asp:Label>
                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator
                    ControlToValidate="txtPwd"
                    ErrorMessage="密码不能为空"
                    ForeColor="Red"
                    runat="server" />
            </div>

            <div class="btn-wrap">
                <asp:Button
                    ID="btnRegister"
                    runat="server"
                    Text="注册"
                    OnClick="btnRegister_Click" />
            </div>

            <div class="msg">
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" />
            </div>
        </div>

        <hr />

        <div class="links">
            <a href="../index.aspx">返回首页</a> |
            <a href="login.aspx">已有账号？去登录</a>
        </div>
    </div>

</form>
</body>
</html>

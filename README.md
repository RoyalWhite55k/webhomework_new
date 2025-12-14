[README.md](https://github.com/user-attachments/files/24148967/README.md)

**GitHub 仓库地址**：  
https://github.com/RoyalWhite55k/webhomework_new

# Web课程作业网站

> 基于 ASP.NET WebForms 的课程实践项目，包含新闻管理与在线答题功能。

##  项目简介

本项目是《Web语言基础》课程实践作品，采用 **ASP.NET WebForms + SQLite** 技术栈，实现了一个完整的新闻发布与在线答题系统，涵盖用户认证、数据持久化、前后台分离以及基础交互体验设计。

---

## 功能特性

-  用户注册与登录
-  新闻信息发布 / 编辑 / 删除（CRUD）
-  新闻列表展示与个人新闻管理
-  在线答题测试
---

## 技术栈

- **前端**：ASP.NET WebForms、HTML、CSS  
- **后端**：C#（.NET Framework）  
- **数据库**：SQLite  
- **开发工具**：Visual Studio 2022  
- **Web 服务器**：IIS Express  

---

## 项目结构

```
.
├── index.aspx                 # 首页
├── account/
│   ├── login.aspx             # 用户登录
│   └── register.aspx          # 用户注册
├── newsList/
│   ├── list.aspx              # 新闻列表
│   ├── manage.aspx            # 我的新闻管理
│   ├── add.aspx               # 发布新闻
│   └── edit.aspx              # 编辑新闻
├── quiz.aspx                  # MBTI 在线测试
├── App_Data/
│   └── news.db                # SQLite 数据库
├── README.md
└── *.sln
```

---

## 运行方式

### 环境要求

- Windows 操作系统  
- Visual Studio 2019 / 2022  
- **.NET Framework 4.x**
- IIS Express（Visual Studio 自带）

⚠️ 本项目为 **ASP.NET WebForms 项目**，不能直接打开 `.aspx` 文件运行。

---

## 测试账号说明

项目中已预置测试账号，**可直接登录体验系统功能**，也支持自行注册。

### 测试账号 1

- 账号：`royal`
- 密码：`royal`

### 测试账号 2

- 账号：`111`
- 密码：`111`

> 如需使用自己的账号，可通过「用户注册」页面创建新账号。

---

### 启动步骤

1. 使用 Visual Studio 打开项目根目录下的 `.sln` 文件  
2. 右键 Web 项目 → **设为启动项目**  
3. 点击工具栏中的 **▶ IIS Express**  
4. 浏览器自动访问：

```
http://localhost:端口号/index.aspx
```


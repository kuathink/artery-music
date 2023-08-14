<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/5/15
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>管理员后台</title>
        <style type="text/css">
            * {
                margin: 0;
                padding: 0;
            }
            
            body {
                font-size: 14px;
            }
            
            /* 顶部导航栏 */
            header {
                height: 60px;
                background-color: #555;
                color: #fff;
            }
            
            header h1 {
                padding: 10px;
                float: left;
                font-size: 24px;
            }
            
            header a {
                display: inline-block;
                color: #fff;
                padding: 20px;
            }
            
            header a.active {
                background-color: #444;
            }
            
            header a:hover {
                background-color: #444;
            }
            
            /* 左侧菜单栏 */
            nav {
                width: 200px;
                min-height: 600px;
                background-color: #eee;
                padding: 20px;
                float: left;
            }
            
            nav ul {
                list-style: none;
                margin: 0;
                padding: 0;
            }
            
            nav li {
                margin-bottom: 10px;
            }
            
            nav a {
                color: #333;
                text-decoration: none;
                padding: 5px 10px;
                display: block;
                border-radius: 3px;
            }
            
            nav a:hover {
                background-color: #ddd;
            }
            
            nav .active {
                background-color: #ccc;
                color: #fff;
            }
            
            /* 内容区 */
            .content {
                margin-left: 220px;
                padding: 20px;
            }
            
            .content h2 {
                margin-bottom: 20px;
                font-size: 22px;
            }
            
            .content p {
                line-height: 24px;
                margin-bottom: 10px;
            }
            
            .content form {
                margin-bottom: 20px;
            }
            
            .content input[type="text"],
            .content input[type="password"],
            .content select {
                width: 200px;
                padding: 5px;
                border-radius: 3px;
                border: 1px solid #ccc;
            }
            
            .content input[type="submit"] {
                padding: 5px 20px;
                background-color: #555;
                color: #fff;
                border: none;
                border-radius: 3px;
                cursor: pointer;
            }
            
            .content input[type="submit"]:hover {
                background-color: #444;
            }
            
            /* 注册表单 */
            #register-form {
                max-width: 500px;
                margin: 0 auto;
                background-color: #fff;
                padding: 20px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            }
            
            #register-form h2 {
                margin-bottom: 20px;
                font-size: 24px;
                text-align: center;
            }
            
            #register-form label {
                display: block;
                margin-bottom: 5px;
            }
            
            #register-form input[type="text"],
            #register-form input[type="password"] {
                width: 100%;
                margin-bottom: 10px;
            }
            
            #register-form input[type="submit"] {
                width: auto;
                margin-top: 20px;
            }
            
            /* 用户列表 */
            #user-list {
                table-layout: fixed;
                width: 100%;
                border-collapse: collapse;
            }
            
            #user-list th,
            #user-list td {
                text-align: center;
                padding: 10px;
                border: 1px solid #ccc;
            }
            
            #user-list th {
                background-color: #f7f7f7;
            }
            
            #user-list tr:nth-child(even) td {
                background-color: #f7f7f7;
            }
        </style>
    </head>
    <body>
        <header>
            <h1>管理员后台</h1>
            <a href="#" class="active">首页</a>
            <a href="#">用户管理</a>
            <a href="#">商品管理</a>
        </header>
        <nav>
            <ul>
                <li><a href="#" class="active">首页</a></li>
                <li><a href="#">用户管理</a></li>
                <li><a href="#">商品管理</a></li>
                <li><a href="#">退出登录</a></li>
            </ul>
        </nav>
        <div class="content">
            <h2>欢迎来到管理员后台</h2>
            <p>这里是管理员后台的首页，您可以在左侧菜单栏中选择不同的功能进行管理。</p>
            <h2>用户注册</h2>
            <form id="register-form" action="#" method="post">
                <h2>注册</h2>
                <label>
                    用户名：<input type="text" name="username" placeholder="请输入用户名" required>
                </label>
                <label>
                    密码：<input type="password" name="password" placeholder="请输入密码" required>
                </label>
                <input type="submit" value="注册">
            </form>
            <h2>用户列表</h2>
            <table id="user-list">
                <thead>
                <tr>
                    <th>用户名</th>
                    <th>注册时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>user1</td>
                    <td>2021-01-01</td>
                    <td>
                        <a href="#">编辑</a>
                        <a href="#">删除</a>
                    </td>
                </tr>
                <tr>
                    <td>user2</td>
                    <td>2021-01-02</td>
                    <td>
                        <a href="#">编辑</a>
                        <a href="#">删除</a>
                    </td>
                </tr>
                <tr>
                    <td>user3</td>
                    <td>2021-01-03</td>
                    <td>
                        <a href="#">编辑</a>
                        <a href="#">删除</a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>

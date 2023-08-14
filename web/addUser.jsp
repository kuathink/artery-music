<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/5/13
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>add</title>
        <link rel="stylesheet" href="css/addUser.css">
    </head>
    <body style="margin: 0 100px">
        <div class="container">
            <h1 id="h">添加用户</h1>
            <form action="addUser" method="post" class="addUserForm">
                <div class="add-nav">
                    <label>
                        <div class="nav">设置账号</div>
                    </label>
                    <input type="text" id="account" name="account">
                </div>
                <div class="add-nav">
                    <label>
                        <div class="nav">设置密码</div>
                    </label>
                    <input type="password" id="password" name="password">
                </div>
                <div class="add-nav">
                    <label>
                        <div class="nav">确认密码</div>
                    </label>
                    <input type="password" id="re_password" name="password">
                </div>
                <div class="add-nav">
                    <label>
                        <div class="nav">设置邮箱</div>
                    </label>
                    <input type="email" id="email" name="email">
                </div>
                <div class="sure-nav">
                    <input class="make-sure" type="submit" value="添加">
                    <input class="make-sure" type="reset" value="重置">
                </div>
            </form>
        </div>
    </body>
</html>

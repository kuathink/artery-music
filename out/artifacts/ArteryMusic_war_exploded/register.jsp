<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/5/7
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>register</title>
        <link rel="stylesheet" href="css/register.css">
        <link rel="stylesheet" href="css/iconfont.css">
    </head>
    <body>
        <%-- 整体布局--%>
        <div class="container right-panel-active">
            <%-- 登录表单--%>
            <div class="container_form container--in">
                <form class="form" action="login" method="post" id="loginForm">
                    <h2 class="form_title">欢迎登录</h2>
                    <input type="text" class="input" name="account" placeholder="账号"
                           value=${messageModel.object.account}>
                    <input type="password" class="input" name="password" placeholder="密码"
                           value=${messageModel.object.password}>
                    <a href="#" class="forgetPwd">忘记密码？</a>
                    <span id="msg" style="color: red;font-size: 10px;text-align: center;">
                        ${messageModel.msg}
                    </span>
                    <button class="btn" id="loginBtn">登录</button>
                </form>
            </div>
            
            <%--注册表单--%>
            <div class="container_form container--up">
                <form class="form" action="register" method="post" id="registerForm">
                    <h2 class="form_title">注册账号</h2>
                    <input type="text" class="input" placeholder="账号" id="account" name="account"
                           onblur="checkUsername()" required>
                    <span id="aMsg" style="font-size: 10px;color: red"></span>
                    <input type="email" class="input" placeholder="邮箱" id="email" name="email">
                    <input type="text" class="input" placeholder="密码" id="password" name="password">
                    <div style="display: flex;flex-direction: column;">
                        <span class="iconfont icon-gouxuan-retangle" style="font-size: 10px;color: gray;">
                            密码由4-10位字符组成，必须以字母开头（例：am1010）
                        </span>
                    </div>
                    <button class="btn" id="registerBtn">点击注册</button>
                    <%-- 显示错误消息 --%>
                    <c:if test="${not empty message}">
                        <p style="color:red;font-size: 10px">${message}</p>
                    </c:if>
                </form>
            </div>
            
            
            <div class="container_overlay">
                <div class="overlay">
                    <div class="overlay_panel overlay--right">
                        <button class="btn" id="register">
                            已有账号，直接登录
                        </button>
                    </div>
                    <div class="overlay_panel overlay--left">
                        <button class="btn" id="login">
                            没有账号，点击注册
                        </button>
                    </div>
                </div>
            </div>
        
        </div>
        
        
        <script src="js/register.js"></script>
        <!-- 引入jQuery的js文件 -->
        <script type="text/javascript" src="js/jquery-3.6.4.js"></script>
        <script type="text/javascript">
            function checkUsername() {
                var account = document.getElementById("account").value.trim();
                var Msg = document.getElementById("aMsg");
                if (account.length < 4 || account.length > 10) {
                    Msg.innerHTML = "账号不能为空，且必须在4-10之间";
                    Msg.style.color = "red";
                    return false;
                } else if (!/^\w+$/.test(account)) {
                    Msg.innerHTML = "用户名只能包含字母、数字、下划线";
                    Msg.style.color = "red";
                    return false;
                } else {
                    Msg.innerHTML = "";
                    return true;
                }
            }
        </script>
        <%--        <script type="text/javascript">--%>
        <%--            /**--%>
        <%--             * 登录表单验证--%>
        <%--             *      1.给登录按钮绑定事件(通过id选择器绑定)--%>
        <%--             *      2.获取用户姓名和密码的值--%>
        <%--             *      3.判断用户名是否为空--%>
        <%--             *          if null:提示用户(span标签赋值)，return--%>
        <%--             *      4.判断密码是否为空--%>
        <%--             *          if null:提示用户(span标签赋值)，return--%>
        <%--             *      5.if non_null:手动提交表单--%>
        <%--             */--%>
        <%--            $("#loginBtn").click(function () {--%>
        <%--                // 2.获取用户姓名和密码的值--%>
        <%--                var account = $("#account").val();--%>
        <%--                var password = $("#password").val();--%>
        <%--                // 3.判断用户名是否为空--%>
        <%--                if (isEmpty(account)){--%>
        <%--                    // if null:提示用户(span标签赋值)，return--%>
        <%--                    $("#msg").html("用户名不可为空");--%>
        <%--                    return;--%>
        <%--                }--%>
        <%--                // 4.判断密码是否为空--%>
        <%--                if (isEmpty(password)){--%>
        <%--                    // if null:提示用户(span标签赋值)，return--%>
        <%--                    $("#msg").html("密码不可为空");--%>
        <%--                    return;--%>
        <%--                }--%>
        <%--                // 5.if non_null:手动提交表单--%>
        <%--                $("#loginForm").submit();--%>
        
        <%--            });--%>
        
        <%--            /**--%>
        <%--             * 判断字符串是否为空--%>
        <%--             *      if null:return true--%>
        <%--             *      if non_null:return false--%>
        <%--             * @param str--%>
        <%--             * @returns {boolean}--%>
        <%--             */--%>
        <%--            function isEmpty(str) {--%>
        <%--                if (str == null||str.trim()==""){--%>
        <%--                    return true;--%>
        <%--                }--%>
        <%--                return false;--%>
        <%--            }--%>
        
        <%--        </script>--%>
    </body>
</html>

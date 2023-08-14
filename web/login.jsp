<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/5/7
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link rel="stylesheet" href="css/loginService.css">
        <link rel="stylesheet" href="fonts/font.css">
        <link rel="stylesheet" href="css/iconfont.css">
        <link rel="stylesheet" href="css/animate.css">
        
        <meta charset="utf-8">
        <title>LoginService</title>
        <style type="text/css">
            #cancel-login:hover {
                animation: turnAround 1s linear infinite;
            }
            
            @keyframes turnAround {
                0% {
                    transform: rotate(0deg);
                }
                100% {
                    transform: rotate(360deg);
                }
            }
        </style>
    </head>
    <body>
        <!-- whole -->
        <div class="whole">
            <!-- 头部 -->
            <header>
                <div class="head">
                    <div class="logo-image">
                        <a href="index.html" class="iconfont icon-quxiao" title="取消登录" id="cancel-login"></a>
                    </div>
                </div>
            </header>
            
            <main class="main">
                <div class="main_message">
                    <p class="animate__animated animate__slideInDown">Welcome to the ArteryMusic</p>
                    <br>
                    <p class="animate__animated animate__slideInDown">动脉的循环系统世界，有你也有我</p>
                    <br>
                    <p class="animate__animated animate__pulse">在这里感受动脉的神经律动 越听悦活力</p>
                </div>
                <div class="main_right">
                    <form action="register" method="post" class="form-menu" id="loginForm">
                        <div class="select-menu">
                            <p><a href="#">密码登录</a></p>
                            <p><a href="#">注册账号</a></p>
                        </div>
                        <div class="input-menu">
                            <div class="input-userName">
                                <input type="text" id="ac" name="account" placeholder="手机号" maxlength="11"
                                       value=${messageModel.object.account}>
                            </div>
                            <div class="input-userPassword">
                                <input type="password" id="password" name="password" placeholder="密码"
                                       value=${messageModel.object.password}>
                            </div>
                            <div class="input-verificationCode">
                                <input type="text" name="verificationCode" placeholder="验证码">
                                <input type="submit" name="btn-code" value="发送验证码">
                            </div>
                            <span id="msg" style="color: red;font-size: 10px;text-align: center">
                                ${messageModel.msg}
                            </span>
                        
                        </div>
                        <div class="btn-menu">
                            <input type="submit" id="loginBtn" name="btn-login" value="登录">
                        </div>
                        <div class="icon-menu">
                            <a href="#" class="iconfont icon-QQ"></a>
                            <a href="#" class="iconfont icon-wechat"></a>
                            <a href="#" class="iconfont icon-twitter"></a>
                            <a href="#" class="iconfont icon-weibo"></a>
                        </div>
                    </form>
                </div>
            </main>
            <!-- 底部 -->
            <footer></footer>
        </div>
        
        <!-- 引入jQuery的js文件 -->
        <script type="text/javascript" src="js/jquery-3.6.4.js"></script>
        <script type="text/javascript">
            /**
             * 登录表单验证
             *      1.给登录按钮绑定事件(通过id选择器绑定)
             *      2.获取用户姓名和密码的值
             *      3.判断用户名是否为空
             *          if null:提示用户(span标签赋值)，return
             *      4.判断密码是否为空
             *          if null:提示用户(span标签赋值)，return
             *      5.if non_null:手动提交表单
             */
            $("#loginBtn").click(function () {
                // 2.获取用户姓名和密码的值
                var account = $("#account").val();
                var password = $("#password").val();
                // 3.判断用户名是否为空
                if (isEmpty(account)) {
                    // if null:提示用户(span标签赋值)，return
                    $("#msg").html("用户名不可为空");
                    return;
                }
                // 4.判断密码是否为空
                if (isEmpty(password)) {
                    // if null:提示用户(span标签赋值)，return
                    $("#msg").html("密码不可为空");
                    return;
                }
                // 5.if non_null:手动提交表单
                $("#loginForm").submit();

            });

            /**
             * 判断字符串是否为空
             *      if null:return true
             *      if non_null:return false
             * @param str
             * @returns {boolean}
             */
            function isEmpty(str) {
                if (str == null || str.trim() == "") {
                    return true;
                }
                return false;
            }
        </script>
    </body>
</html>

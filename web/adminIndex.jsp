<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/5/9
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>动脉音乐-后台管理</title>
        <%--引入iconfont图标库--%>
        <link rel="stylesheet" href="css/iconfont.css">
        <link rel="stylesheet" href="css/admin.css">
        <base target="_parent">
    </head>
    <body>
        <%--整体--%>
        <div class="container">
            <%--header--%>
            <div class="header">
                <div class="header-menu">
                    <i class="iconfont icon-caidan"></i>
                    <span class="backstage">动脉音乐 后台管理</span>
                </div>
            </div>
            
            <%-- main--%>
            <div class="main">
                <%--导航栏--%>
                <div class="tab-menu">
                    <ul>
                        <li>
                            <i class="icon iconfont icon-gengduo"></i>
                            <a href="adminIndex.jsp">系统首页</a>
                        </li>
                        <li>
                            <i class="icon iconfont icon-yonghuguanli"></i>
                            <button class="btnInfo" id="btnInfo-user">用户管理</button>
                        </li>
                        <li>
                            <i class="icon iconfont icon-maikefeng2"></i>
                            <%--                            <a href="queryAll">歌单管理</a>--%>
                            <button class="btnInfo" id="btnInfo-music">歌单管理</button>
                        </li>
                        <li>
                            <i class="icon iconfont icon-shezhi1"></i>
                            <a href="welcome.jsp" target="welcome">编辑信息</a>
                        </li>
                    </ul>
                </div>
                
                <%--                <iframe src="welcome.jsp" name="welcome" width="100%" height="auto" frameborder="0"></iframe>--%>
                
                <%--                <iframe src="queryAll" name="queryUsers" width="100%" height="auto" frameborder="0"></iframe>--%>
                <%-- 显示用户的信息--%>
                <div id="info-display" style="width: 90%;margin:14px 20px;flex: 1;">
                    <%-- flex: 1; 给子元素分配一个占据剩余空间的比例--%>
                </div>
            
            </div>
        
        </div>
        
        <script type="text/javascript" src="js/jquery-3.6.4.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                // 点击按钮时发送 AJAX 请求
                $('#btnInfo-user').click(function () {
                    $.ajax({
                        url: 'queryAll',
                        type: 'GET',
                        dataType: 'html',
                        success: function (data) {
                            // 将从服务器返回的用户信息添加到页面上
                            $('#info-display').html(data);
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(textStatus + ': ' + errorThrown);
                        },
                        complete: function () {
                            // AJAX 请求完成后，重新设置字体大小
                            $('body').css('font-size', '18px');
                        }
                    });
                });
                $('#btnInfo-music').click(function () {
                    $.ajax({
                        url: 'sysIndex.jsp',
                        type: 'GET',
                        dataType: 'html',
                        success: function (data) {
                            // 将从服务器返回的用户信息添加到页面上
                            $('#info-display').html(data);
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(textStatus + ': ' + errorThrown);
                        },
                        complete: function () {
                            // AJAX 请求完成后，重新设置字体大小
                            $('body').css('font-size', '18px');
                        }
                    });
                });
            });
        </script>
    </body>
</html>

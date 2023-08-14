<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/5/13
  Time: 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%--%>
<%--    String path = request.getContextPath();--%>
<%--    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";--%>
<%--%>--%>
<%--<base href="<%=basePath%>">--%>
<html>
    <head>
        <title>update</title>
        <link rel="stylesheet" href="css/updateUser.css">
    </head>
    <body style="margin: 0 100px">
        <div class="container">
            <h1 id="h">修改信息</h1>
            <%if (request.getAttribute("error") != null) {%>
            <p style="color:red;"><%=request.getAttribute("error")%>
            </p>
            <%}%>
            <form action="updateUser" method="post" class="updateForm">
                <div class="update-nav">
                    <label>ID不可改</label>
                    <input type="text" name="id" value="${user.id}" readonly class="id">
                </div>
                <div class="update-nav">
                    <label>
                        <div class="nav">修改账号</div>
                    </label>
                    <input type="text" name="account" value="${user.account}">
                </div>
                <div class="update-nav">
                    <label>
                        <div class="nav">修改密码</div>
                    </label>
                    <input type="password" name="password" value="${user.password}">
                </div>
                <div class="update-nav">
                    <label>
                        <div class="nav">修改邮箱</div>
                    </label>
                    <input type="email" name="email" value="${user.email}">
                </div>
                <div class="sure-nav">
                    <input class="make-sure" type="submit" value="确认修改">
                    <a href="${pageContext.request.contextPath}/queryAll">返回用户列表</a>
                </div>
            </form>
        
        </div>
    </body>
</html>

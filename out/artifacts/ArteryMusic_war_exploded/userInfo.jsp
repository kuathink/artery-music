<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/5/13
  Time: 20:57
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
        <title>所有用户信息</title>
        <link rel="stylesheet" href="css/iconfont.css">
        <link rel="stylesheet" href="css/userInfo.css">
    </head>
    <body>
        <div style="display: flex;width: 100%;">
            <div class="add-nav">
                <a href="addUser.jsp" class="add iconfont icon-tianjia">添加</a>
            </div>
            <div class="add-nav" style="width: 110px;background-color: rgb(204,29,29)">
                <a href="deleteUser" class="delete iconfont icon-shanchu">删除已选</a>
            </div>
        </div>
        <!-- 在表格中展示查询结果 -->
        <table border="1">
            <thead>
            <tr>
                <th>
                    <input type="checkbox">
                </th>
                <th>ID</th>
                <th>用户名</th>
                <th>密码</th>
                <th>邮箱</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${userList}">
                <tr>
                    <td>
                        <input type="checkbox" name="ids" value="${user.id}">
                    </td>
                    <td>${user.id}</td>
                    <td>${user.account}</td>
                    <td>${user.password}</td>
                    <td>${user.email}</td>
                    <td>
                        <a href="updateUser?id=${user.id}">修改</a>
                        <a href="deleteUser?id=${user.id}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

    </body>
</html>

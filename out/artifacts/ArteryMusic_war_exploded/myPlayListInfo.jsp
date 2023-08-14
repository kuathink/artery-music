<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/6/11
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <link rel="stylesheet" href="css/myPlayListInfo.css">
        <title>我的歌单</title>
    </head>
    <body>
        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>歌曲</th>
                <th>歌手</th>
                <th>专辑</th>
                <th>时长</th>
                <th>操作</th>
            </tr>
            </thead>

            <tbody>
            <c:forEach var="song" items="${allSongs}">
                <tr>
                    <td>${song.id}</td>
                    <td>${song.songName}</td>
                    <td>${song.singer}</td>
                    <td>${song.album}</td>
                    <td>${song.duration}</td>
                    <td>
                        <a href="deleteSong?id=${song.id}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            
            </tbody>
        </table>
    </body>
</html>

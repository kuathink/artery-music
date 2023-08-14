<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/6/13
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="chn">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="../demo/css/wyy.css">
        <script src="../demo/js/wyy.js"></script>
    </head>
    <body>
        <!-- 大盒子 -->
        <div class="box">
            <!-- 左侧按钮 -->
            <a href="javascript:;" class="left">&lt</a>
            <!-- 右侧按钮 -->
            <a href="javascript:;" class="right">&gt</a>
            <!-- 轮播图片 -->
            <ul class="imgs">
                <li class="one">
                    <a href="#"><img src="../images/DmaiMusicAlbum/album01.png" alt=""></a>
                </li>
                <li class="two">
                    <a href="#"><img src="../images/DmaiMusicAlbum/album02.png" alt=""></a>
                </li>
                <li class="three">
                    <a href="#"><img src="../images/DmaiMusicAlbum/album03.png" alt=""></a>
                </li>
                <li class="four">
                    <a href="#"><img src="../images/DmaiMusicAlbum/album04.png" alt="" class="rose"></a>
                </li>
                <li class="five">
                    <a href="#"><img src="../images/DmaiMusicAlbum/album05.png" alt=""></a>
                </li>
                <li class="six">
                    <a href="#"><img src="../images/DmaiMusicAlbum/album06.png" alt=""></a>
                </li>
            </ul>
            <%--小圆圈--%>
            <ul class="list"></ul>
            <%--两个空盒子，实现左右两侧图片点击效果--%>
            <div class="rights"></div>
            <div class="lefts"></div>
        </div>
    </body>
</html>


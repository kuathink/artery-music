<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/5/10
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>轮播图示例</title>
        <!-- 引入jQuery库 -->
        <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        
        <!-- 引入Bootstrap库 -->
        <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
        <style>
            .carousel {
                position: relative;
            }
            
            .carousel-inner {
                position: relative;
                overflow: hidden;
                width: 100%;
            }
            
            .carousel-inner .item {
                position: relative;
                display: none;
                -webkit-transition: 0.6s ease-in-out left;
                -moz-transition: 0.6s ease-in-out left;
                -ms-transition: 0.6s ease-in-out left;
                -o-transition: 0.6s ease-in-out left;
                transition: 0.6s ease-in-out left;
            }
            
            .carousel-inner .item img {
                display: block;
                margin: 0 auto;
                max-height: 500px;
            }
            
            .carousel-inner .item.active {
                display: block;
            }
            
            .carousel-control {
                top: 50%;
                margin-top: -25px;
            }
            
            .carousel-control.left {
                left: -30px;
            }
            
            .carousel-control.right {
                right: -30px;
            }
            
            .carousel-control i {
                display: inline-block;
                margin-top: -2px;
            }
            
            .carousel-control:hover i {
                opacity: 0.7;
            }
            
            .carousel-indicators {
                position: absolute;
                bottom: 10px;
                left: 50%;
                margin-left: -45px;
                z-index: 15;
                list-style: none;
            }
            
            .carousel-indicators li {
                display: inline-block;
                width: 10px;
                height: 10px;
                margin: 1px;
                text-indent: -999px;
                cursor: pointer;
                background-color: #ccc;
                border: 1px solid #ccc;
                border-radius: 10px;
            }
            
            .carousel-indicators .active {
                background-color: #555;
            }
            
            .carousel-caption {
                position: absolute;
                left: 0;
                right: 0;
                bottom: 0;
                z-index: 10;
                padding: 15px;
                background-color: rgba(0, 0, 0, 0.5);
            }
            
            .carousel-caption h3 {
                margin: 0;
                font-size: 20px;
                line-height: 1.25;
                font-weight: 600;
            }
            
            .carousel-caption p {
                margin: 8px 0 0;
                font-size: 16px;
                line-height: 1.5;
            }
        </style>
    </head>
    <body>
        <!-- 创建轮播图 -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- 轮播图指示器 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            
            <!-- 轮播图内容 -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="../images/DmaiMusicAlbum/album01.png" alt="Slide 1">
                    <div class="carousel-caption">
                        <h3>Slide 1</h3>
                        <p>描述1</p>
                    </div>
                </div>
                
                <div class="item">
                    <img src="../images/DmaiMusicAlbum/album02.png" alt="Slide 2">
                    <div class="carousel-caption">
                        <h3>Slide 2</h3>
                        <p>描述2</p>
                    </div>
                </div>
                
                <div class="item">
                    <img src="../images/DmaiMusicAlbum/album03.png" alt="Slide 3">
                    <div class="carousel-caption">
                        <h3>Slide 3</h3>
                        <p>描述3</p>
                    </div>
                </div>
            </div>
            
            <!-- 轮播图控制 -->
            <a class="carousel-control left" href="#myCarousel" data-slide="prev"><i
                    class="glyphicon glyphicon-chevron-left"></i></a>
            <a class="carousel-control right" href="#myCarousel" data-slide="next"><i
                    class="glyphicon glyphicon-chevron-right"></i></a>
        </div>
        
        <!-- 初始化轮播图 -->
        <script>
            $('.carousel').carousel({
                interval: 5000 // 自动播放间隔
            });
        </script>
    </body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/5/17
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>图片轮播</title>
        <style>
            /* 轮播容器样式 */
            .container {
                position: relative;
                width: 800px;
                height: 400px;
                margin: 0 auto;
                border: 4px solid #8B8B8B;
                overflow: hidden;
            }
            
            /* 图片容器样式 */
            .images {
                position: absolute;
                width: 800%;
                height: 100%;
                top: 0;
                left: 0;
                animation: slide 10s linear infinite;
            }
            
            /* 单个图片样式 */
            .images img {
                float: left;
                width: 800px;
                height: 400px;
            }
            
            /* 图片序号样式 */
            .indexes {
                position: absolute;
                bottom: 20px;
                left: 50%;
                transform: translateX(-50%);
                display: flex;
            }
            
            /* 单个图片序号样式 */
            .indexes span {
                display: block;
                width: 16px;
                height: 16px;
                margin: 0 8px;
                border-radius: 50%;
                background-color: rgba(255, 255, 255, 0.5);
                transition: all 0.4s ease;
                cursor: pointer;
            }
            
            /* 当前图片序号样式 */
            .indexes span.active {
                width: 24px;
                height: 24px;
                background-color: #fff;
                border: 2px solid #8B8B8B;
            }
            
            /* CSS 动画定义 */
            @keyframes slide {
                0% {
                    transform: translateX(0);
                }
                16.666% {
                    transform: translateX(0);
                }
                33.333% {
                    transform: translateX(-100%);
                }
                50% {
                    transform: translateX(-100%);
                }
                66.666% {
                    transform: translateX(-200%);
                }
                83.333% {
                    transform: translateX(-200%);
                }
                100% {
                    transform: translateX(-300%);
                }
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="images">
                <img src="../images/DmaiMusicAlbum/album01.png" alt="1">
                <img src="../images/DmaiMusicAlbum/album02.png" alt="2">
                <img src="../images/DmaiMusicAlbum/album03.png" alt="3">
                <img src="../images/DmaiMusicAlbum/album04.png" alt="4">
                <img src="../images/DmaiMusicAlbum/album05.png" alt="5">
                <img src="../images/DmaiMusicAlbum/album06.png" alt="6">
                <img src="../images/DmaiMusicAlbum/album07.png" alt="7">
            </div>
            <div class="indexes">
                <span class="active"></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
        
        <script>
            var currentIndex = 0;
            var imageElems = document.querySelectorAll('.images img');
            var indexElems = document.querySelectorAll('.indexes span');

            setInterval(function () {
                imageElems[currentIndex].classList.remove('active');
                indexElems[currentIndex].classList.remove('active');

                currentIndex = (currentIndex + 1) % imageElems.length;

                imageElems[currentIndex].classList.add('active');
                indexElems[currentIndex].classList.add('active');
            }, 5000);
        </script>
    </body>
</html>
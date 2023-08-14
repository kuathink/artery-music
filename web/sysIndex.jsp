<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/5/18
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>导航栏示例</title>
        <style>
            .nav {
                display: flex;
                justify-content: space-around;
                align-items: center;
                background-color: #eee;
                height: 50px;
            }
            
            .nav a {
                text-decoration: none;
                color: #333;
                font-size: 18px;
            }
            
            .content {
                margin-top: 20px;
            }
            
            .hide {
                display: none;
            }
        </style>
    </head>
    <body>
        <nav class="nav">
            <a href="#nav-1">页面1</a>
            <a href="#nav-2">页面2</a>
            <a href="#nav-3">页面3</a>
        </nav>
        <div class="content">
            <iframe id="content-1" class="hide" src="https://www.baidu.com" width="100%" height="500"></iframe>
            <iframe id="content-2" class="hide" src="https://www.google.com" width="100%" height="500"></iframe>
            <iframe id="content-3" class="hide" src="https://www.bing.com" width="100%" height="500"></iframe>
        </div>
        <script>
            var navs = document.querySelectorAll('.nav a');
            var contents = document.querySelectorAll('.content iframe');
            for (var i = 0; i < navs.length; i++) {
                navs[i].dataset.index = i;
                navs[i].addEventListener('click', function () {
                    var index = this.dataset.index;
                    for (var j = 0; j < contents.length; j++) {
                        if (j == index) {
                            contents[j].classList.remove('hide');
                        } else {
                            contents[j].classList.add('hide');
                        }
                    }
                });
            }
        </script>
    </body>
</html>

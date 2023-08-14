<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/5/16
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <style type="text/css">
            .container > .header {
                height: 50px;
                background: red;
                position: static;
                top: 0;
                left: 0;
                right: 0;
            }
            
            .main {
                display: flex;
            }
            
            .left {
                width: 200px;
                background: #2c7776;
                position: static;
                top: 50px;
                left: 0;
                bottom: 0;
                height: 100%;
            }
            
            .right {
                width: 100%;
                background: yellowgreen;
                flex: 1;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="header">头</div>
            <div class="main">
                <div class="left">左</div>
                <div class="right">右</div>
            </div>
        </div>
    </body>
</html>

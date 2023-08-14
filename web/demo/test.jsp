<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/5/15
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <meta charset="UTF-8">
        <title>垂直标签页示例</title>
        <style type="text/css">
            * {
                margin: 0;
                padding: 0;
            }
            
            /* 左侧导航栏样式 */
            #sidebar {
                width: 200px;
                height: 100%;
                background-color: #f5f5f5;
                position: fixed;
                top: 0;
                left: 0;
            }
            
            #sidebar ul {
                list-style: none;
                padding: 20px 0;
                margin: 0;
            }
            
            #sidebar li {
                margin: 10px 0;
                cursor: pointer;
                padding: 5px 20px;
            }
            
            #sidebar li.active {
                color: #337ab7;
                background-color: #fff;
            }
            
            /* 内容区样式 */
            .tab-wrap {
                margin-left: 220px;
                padding: 20px;
                min-height: calc(100% - 40px);
                border-left: 1px solid #ccc;
            }
            
            .tab-content {
                display: none;
            }
            
            .tab-content.active {
                display: block;
            }
        </style>
    </head>
    <body>
        <div id="sidebar">
            <ul>
                <li class="active" data-target="#tab1">选项卡一</li>
                <li data-target="#tab2">选项卡二
                </li>
                <li data-target="#tab3">选项卡三</li>
            </ul>
        </div>
        <div class="tab-wrap">
            <div class="tab-content active" id="tab1">
                <p>这是选项卡一的内容</p>
            </div>
            <div class="tab-content" id="tab2">
                <p>这是选项卡二的内容</p>
            </div>
            <div class="tab-content" id="tab3">
                <p>这是选项卡三的内容</p>
            </div>
        </div>
        <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script type="text/javascript">
            $(function () {
                $('#sidebar li').click(function () {
                    var targetId = $(this).data('target');
                    $('#sidebar li').removeClass('active');
                    $(this).addClass('active');
                    $('.tab-content').removeClass('active');
                    $(targetId).addClass('active');
                });
            });
        </script>
    </body>
</html>
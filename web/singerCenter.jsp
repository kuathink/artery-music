<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/5/22
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>singerCenter</title>
        <link rel="stylesheet" href="css/iconfont.css">
        <link rel="stylesheet" href="css/singerCenter.css">
        <link rel="stylesheet" href="css/otherIcon.css">
    </head>
    <body>
        <div class="box">

            <!-- head部分01开始 -->
            <div class="dm-head-1">
                <div class="dm-head-1-nav">
                    <div class="nav_tab">
                        <a href="index.jsp">
                            <b>首页</b>
                        </a>
                    </div>
                    <div class="nav_tab">
                        <a href="#">
                            <b>音乐人中心</b>
                        </a>
                    </div>
                    <div class="nav_tab">
                        <a href="#">
                            <b>帮助</b>
                        </a>
                    </div>
                </div>
                <!-- <div class="dm-head-1-tab">
                    <a href="index.html" class="dm-head-1-tabDescription"><b>首页</b></a>
                </div> -->

                <div class="dm-head-1-tabOther"></div>

                <div class="dm-head-1-tab">
                    <a href="#" class="dm-head-1-tabMessage">
                        <i class="iconfont icon-xinxi-copy"></i>
                    </a>
                </div>

                <div class="dm-head-1-tabMy">
                    <div class="myImg">

                    </div>
                </div>
            </div>
            <!-- head部分结束-->

            <!-- main布局开始-->
            <div class="main">
                <!-- 左侧导航栏-->
                <div class="main_left">
                    <div class="main_item">
                        <div class="main_left_title">
                            <div class="release_song">
                                <i class="iconfont icon-fabu"></i>
                                <a href="#">发布歌曲</a>
                            </div>
                        </div>
                        <ul class="main_left_subnav">
                            <li>
                                <a href="#">
                                    <i class="iconfont icon-home"></i>
                                    <b>主页</b>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="iconfont icon-musicguangli"></i>
                                    <b>作品管理</b>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="iconfont icon-shouyi"></i>
                                    <b>结算收益</b>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="iconfont icon-shuju"></i>
                                    <b>数据管理</b>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- 右侧导航栏-->
                <div class="main_right">
                    <div class="right_item">
                        <!-- 公告-->
                        <div class="right_gonggao">
                            <img src="./images/DmaiMusicImage/公告2.png" alt="">
                            <b>关于动脉音乐认证标准的说明公告...</b>
                            <!-- <marquee behavior="" direction="" scrollamount="1" onmouseover="this.stop()" onmouseout="this.start()">
                                <b>关于动脉音乐认证标准的说明公告...</b>
                            </marquee> -->
                        </div>
                        <!-- user-->
                        <div class="right_user">
                            <div class="userImg"></div>
                            <div class="userMessage">
                                <div class="name">${user.account}</div>
                                <div class="identity" style="display: flex;align-items: center;">
                                    <img src="./images/DmaiMusicImage/identity_green.png" alt="">
                                    <a href="#">动脉音乐人、歌手、独家签约艺人</a>
                                    <i class="iconfont icon-right"></i>
                                </div>
                                <span><b>ID：dm0001</b></span>
                            </div>
                        </div>

                        <!-- 音乐详细类-->
                        <div class="music_detailed">
                            <!-- 音乐数据-->
                            <div class="music-data">
                                <div class="data-box">
                                    <p><span><b>音乐播放量(次)</b></span></p>
                                    <div class="dataImg">
                                        <i class="iconfont icon-bofangliang"></i>
                                    </div>
                                    <div class="dataNumber">
                                        <span>500.2w</span>
                                    </div>
                                </div>
                                <div class="data-box">
                                    <p><span><b>作品(首)</b></span></p>
                                    <div class="dataImg">
                                        <i class="iconfont icon-fabuguanli"></i>
                                    </div>
                                    <div class="dataNumber">
                                        <span>1628</span>
                                    </div>
                                </div>
                                <div class="data-box">
                                    <p><span><b>累计收入(亿)</b></span></p>
                                    <div class="dataImg">
                                        <i class="iconfont icon-shouru"></i>
                                    </div>
                                    <div class="dataNumber">
                                        <span>￥8888.88w</span>
                                    </div>
                                </div>
                                <div class="data-box">
                                    <p><span><b>音乐人指数</b></span></p>
                                    <div class="dataImg">
                                        <i class="iconfont icon-zhishu"></i>
                                    </div>
                                    <div class="dataNumber" style="border: none;">
                                        <span>99.8%</span>
                                    </div>
                                </div>
                            </div>

                            <!-- 音乐活动-->
                            <div class="music-activity">
                                <div class="activity-nav">
                                    <p><b>推荐活动</b></p>
                                </div>
                                <div class="activity-box">
                                    <div class="activity-box-1">
                                    </div>
                                    <div class="activity-box-2"></div>
                                    <div class="activity-box-3"></div>
                                </div>
                            </div>
                        </div>
                        <!-- End -->

                    </div>
                </div>

            </div>
            <!-- main布局结束 -->

        </div>
    </body>
</html>

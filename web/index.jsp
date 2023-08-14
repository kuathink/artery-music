<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/5/6
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <%-- Animate.css 动画--%>
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/indexStyle.css">
        <%-- 引入阿里巴巴icon图标--%>
        <link rel="stylesheet" href="css/iconfont.css">
        <link rel="stylesheet" href="fonts/font.css">
        
        <script type="text/javascript" src="js/ChangImg.js"></script>
        
        <!-- <script src="js/lrc.js"></script> -->
        <script src="js/lrc03.js"></script>
        <!-- 音乐底部播放功能 -->
        <script type="text/javascript" src="js/music_play.js"></script>
        <!-- star 3D -->
        
        <meta charset="utf-8">
        <title>动脉音乐</title>
        <style type="text/css">
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            
            html {
                background: url(images/image.jpg) no-repeat fixed 0 0;
                background-size: cover;
            }
        </style>
    </head>
    
    <body>
        <!-- head部分01开始 -->
        <div class="dm-head-1">
            <div class="dm-head-logo">
                <img src="images/DmaiMusicImage/动脉音乐透明logo.png" alt=""
                     class="logoImg animate__animated animate__lightSpeedInLeft ">
            </div>
            <div class="dm-head-1-search">
                <a href="#" class="search_icon iconfont icon-sousuo"></a>
                <input type="text" class="dm-head-1-search-input" placeholder="听我想听的,唱我所爱">
            </div>
            <div class="dm-head-1-tab">
                <a href="index.jsp" class="dm-head-1-tabDescription"><b>发现音乐</b></a>
                <a href="DmaiMusicVIP.html" class="dm-head-1-tabDescription"><b>数字商店</b></a>
                <a href="queryMyPlayList" class="dm-head-1-tabDescription"><b>我的歌单</b></a>
                <a href="singerCenter.jsp" class="dm-head-1-tabDescription"><b>音乐人中心</b></a>
            </div>
            <div class="dm-head-1-tabOther"></div>
            <div class="dm-head-1-tab">
                <%--判断用户是否已登录。如果用户已登录，就直接显示该用户的用户名；如果用户未登录，就显示登录和注册链接。--%>
                <c:if test="${not empty user}">
                    <a href="#"
                       class="dm-head-1-tabDescription animate__animated animate__lightSpeedInRight"><b>${user.account}</b></a>
                </c:if>
                <c:if test="${empty user}">
                    <a href="register.jsp"
                       class="dm-head-1-tabDescription animate__animated animate__lightSpeedInRight"><b>登录/注册</b></a>
                </c:if>
            </div>
        </div>
        <!-- head部分结束-->
        
        <%--main--%>
        <div class="middle">
            <%--左边--%>
            <div class="dm-middle-left">
                <div class="dm-middle-left-hot">
                    <h2 class="dm-middle-left-hot-head">硬&nbsp;&nbsp;地&nbsp;&nbsp;围&nbsp;&nbsp;炉&nbsp;&nbsp;音&nbsp;&nbsp;乐&nbsp;&nbsp;榜</h2>
                </div>
                
                <div class="dm-middle-left-hot-classify">
                    <div class="dm-middle-left-hot-classify-imgBox">
                        <img class="img-slide img1" src="images/DmaiMusicAlbum/album01.png" alt="1">
                        <img class="img-slide img2" src="images/DmaiMusicAlbum/album02.png" alt="2">
                        <img class="img-slide img3" src="images/DmaiMusicAlbum/album03.png" alt="3">
                        <img class="img-slide img4" src="images/DmaiMusicAlbum/album04.png" alt="4">
                        <img class="img-slide img5" src="images/DmaiMusicAlbum/album05.png" alt="5">
                        <img class="img-slide img6" src="images/DmaiMusicAlbum/album06.png" alt="6">
                        <img class="img-slide img7" src="images/DmaiMusicAlbum/album07.png" alt="7">
                        <img class="img-slide img8" src="images/DmaiMusicAlbum/album08.png" alt="8">
                    </div>
                </div>
                
                <div class="dm-middle-left-foot">
                    <div class="dm-middle-left-classify">
                        <div class="classify-tab iconfont">新歌热门</div>
                        <div class="classify-tab">华语</div>
                        <div class="classify-tab">欧美</div>
                        <div class="classify-tab">日韩</div>
                    </div>
                    <div class="left_foot_btn" onclick="display('lb')">
                        <i class="iconfont icon-zhankai"></i>
                    </div>
                
                </div>
            </div>
            <script>
                function IconChange() {
                    var a = Math.random() * 5;
                    $('img').attr('src', 'image' + a + '.jpg');
                }
            </script>
            
            <%--右边--%>
            <div class="dm-middle-right">
                <div class="dm-middle-right-head">
                    <div class="dm-middle-right-imgBox">
                        <img src="images/DmaiMusicImage/李荣浩.png" alt="">
                    </div>
                    <div class="dm-middle-right-indroduce">
                        <h4><a href="" style="color: white;">李荣浩</a></h4>
                        <img src="images/DmaiMusicImage/identity_01.png" alt="">
                        <h6>关注</h6>
                    </div>
                    <div class="dm-middle-right-indroduce">
                        <span>动脉入驻艺人、歌手、制作人、全能唱作人</span>
                    </div>
                </div>
                
                <div class="dm-middle-right-musicName">
                    <p>爸爸妈妈</p>
                </div>
                
                <!-- 歌词滚动-->
                <div id="dm-middle-right-musicBox" class="music-menu">
                    <ul>
                        <li class="active">1</li>
                    </ul>
                </div>
                
                <div class="dm-middle-right-musicLyric">
                
                </div>
                <div class="dm-middle-right-center-lyric"></div>
                <div class="dm-middle-right-foot">
                    <div class="dm_middle_right_foot_btn">
                        <a href="#" class="previous iconfont icon-shangyishou" title="上一首"></a>
                        <a href="#" class="play iconfont icon-bofang" title="播放" id="start"></a>
                        <a href="#" class="pause iconfont icon-zanting" title="暂停" id="stop"></a>
                        <a href="#" class="next iconfont icon-xiayishou" title="下一首"></a>
                    </div>
                    <div class="dm_middle_right_foot-audio">
                        <audio controls class="audio" id="audio_0"></audio>
                    </div>
                    <div class="dm_middle_right_foot-music_name"></div>
                </div>
                <!-- 歌词滚动JS-->
                <script src="js/musicMove.js"></script>
            </div>
        
        </div>
        
        
        
        <%--隐藏的div--%>
        <div id="lb" style="display: none">
            <form action="queryMyPlayList" method="post">
                <%--歌单列表--%>
                <div class="song-list">
                    <div class="song-box">
                        <div class="box-left">
                            <img src="images/DmaiMusicAlbum/a1.png" alt="">
                        </div>
                        <div class="box-right">
                            <div class="songName">天台来信</div>
                            <div class="singer">Kirsty刘瑾睿</div>
                            <div class="album">前程似锦</div>
                            <div class="duration">04:03</div>
                            <div class="add-song">
                                <a href="#">加入我的歌单</a>
                            </div>
                        </div>
                    </div>
                    <div class="song-box">
                        <div class="box-left">
                            <img src="images/DmaiMusicAlbum/a2.png" alt="">
                        </div>
                        <div class="box-right">
                            <div class="songName">歌名
                            </div>
                            <div class="singer">歌手</div>
                            <div class="album">专辑</div>
                            <div class="duration">时长</div>
                            <div class="add-song">
                                <input type="submit" value="加入我的歌单">
                                <%--                        <a href="#">加入我的歌单</a>--%>
                            </div>
                        </div>
                    </div>
                    
                    <div class="song-box">
                        <div class="box-left">
                            <img src="images/DmaiMusicImage/李荣浩.png" alt="">
                        </div>
                        <div class="box-right">
                            <c:forEach var="song" items="${allSongs}">
                                <li>${song.songName}</li>
                                <li>${song.singer}</li>
                                <li>${song.album}</li>
                                <li>${song.duration}</li>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="song-box">
                        <div class="box-left"></div>
                        <div class="box-right"></div>
                    </div>
                    <div class="song-box">
                        <div class="box-left"></div>
                        <div class="box-right"></div>
                    </div>
                </div>
            </form>
        </div>
        <script src="js/show_and_hide.js"></script>
        
        <div class="dmfoot">
            <div style="height: 60px;"></div>
            <div class="dmfoot-1">
                <a href="#">&nbsp;&nbsp;动脉音乐工作室</a>
                <a href="#">&nbsp;&nbsp;商务合作</a>
                <a href="#">&nbsp;&nbsp;广告服务</a>
                <a href="#">&nbsp;&nbsp;隐私政策</a>
                <a href="会员服务协议.html">&nbsp;&nbsp;用户服务协议</a>
            </div>
            <div class="dmfoot-1">
                <a href="#">&nbsp;&nbsp;四川工业科技学院J-9 512寝室</a>
                <a href="#">&nbsp;&nbsp;桂公网备案 451062031052号</a>
                <a href="#">&nbsp;&nbsp;网络文化经营许可证</a>
            </div>
            <div class="footer">
                <span>Copyright &copy;&nbsp;2022-2023 ArteryMusic，All Rights Reserved</span>
                <span>Created by 马业坤 on 四川工业科技学院</span>
            </div>
        </div>
    
    </body>
</html>

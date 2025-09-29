<p align="center">
    <img alt="logo" src="upload/logo%20(1).png" width="120" height="120" >
</p>
<h1 align="center" style="margin: 30px 0 30px; font-weight: bold;">ArteryMusic</h1>
<h4 align="center">基于JavaWeb的在线音乐系统（动脉音乐网站)</h4>
<p align="center">
   <a href="https://gitee.com/mayestspace/openfeet/stargazers">
      <img src="https://gitee.com/mayestspace/artery-music/badge/star.svg?theme=gvp">
   </a>
	<a href="https://gitee.com/mayestspace/artery-music">
      <img src="https://img.shields.io/badge/ArteryMusic-v1.1-brightgreen.svg">
   </a>
	<a href="https://gitee.com/mayestspace/artery-music/blob/master/LICENSE">
      <img src="https://img.shields.io/badge/license-GPL%20v3-blue">
   </a>
</p>

### 关于动脉音乐

ArteryMusic是一个简单的在线音乐系统（动脉音乐网站），支持用户登录、用户注册、信息管理（增删改查）、音频播放以及数字购买商店等，集成最新的mysql数据库和mybatis框架；
极大的提升该项目的使用体验与后续二次开发。

**重点：** 努力更新中......

### 软件架构
`Java+Javaweb+Servlet+Jsp+mybatis+mysql+Tomcat`

***需要引入的jar包***
>可去`Maven Repository`官网下载：[https://mvnrepository.com/](https://mvnrepository.com/)
```java
commons-dbutils-1.7.jar
javax.servlet-api-4.0.1.jar
jstl-1.2.jar
mybatis-3.5.11.jar
mysql-connection-j-8.0.32.jar
```


### 安装部署教程

1.  执行SQL，创建数据库
```md
(SQL文件位于：https://gitee.com/mayestspace/artery-music/blob/master/src/arterymusic.spl)
```
2.  项目导入IDEA 启动
3.  访问测试！
4.  自行根据代码逻辑填充测试数据，查看即可！

### 演示界面
#### 前端

1)首页

![image-20230814144511195](upload/index.png)

2)登录

![image-20230814141233940](upload/login.png)

3)注册

![image-20230814141309424](upload/register.png)

4)数字商店（音乐会员购买）

![image-20230814141638094](upload/digital_store.png)


#### 后端
1)管理员操作界面

![image-20230814141418966](upload/admin.png)


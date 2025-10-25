<p align="center">
    <img alt="logo" src="upload/logo%20(1).png" width="120" height="120" >
</p>
<h1 align="center" style="font-weight: bold;">ArteryMusic v1.0</h1>
<h4 align="center">基于JavaWeb的在线音乐系统（动脉音乐网站)，支持Java和Maven双版本</h4>
<p align="center">
   <a href="https://gitee.com/mayekun/artery-music/stargazers">
      <img src="https://gitee.com/mayestspace/artery-music/badge/star.svg?theme=gvp">
   </a>
	<a href="https://gitee.com/mayestspace/artery-music">
      <img src="https://img.shields.io/badge/ArteryMusic-v1.1-brightgreen.svg">
   </a>
	<a href="https://gitee.com/mayestspace/artery-music/blob/master/LICENSE">
      <img src="https://img.shields.io/badge/license-GPL%20v3-blue">
   </a>
</p>

### ✔️项目升级
❌️即将重磅发布`Maven`版本，敬请期待！！！

✔️Maven`版本已发布👇️
【maven版本地址】: [https://gitee.com/mayekun/artery-music-maven](https://gitee.com/mayekun/artery-music-maven)

### 🔖关于动脉音乐

ArteryMusic是一个简单的在线音乐系统（动脉音乐网站），支持用户登录、用户注册、信息管理（增删改查）、音频播放以及数字购买商店等，集成最新的`mysql`数据库和`mybatis`框架；极大的提升该项目的使用体验与后续二次开发。

**重点：** 持续开发中......

### 🎃软件架构

#### 1）技术栈

|                 后端                 |          前端           |
| :----------------------------------: | :---------------------: |
| Javaweb+Servlet+mybatis+MySQL+Tomcat | HTML+JSP+CSS+JavaScript |

`Java+Javaweb+Servlet+Jsp+mybatis+mysql+Tomcat`

#### 2）需要引入的 jar 包（重点）

>可去`Maven Repository`官网下载：[https://mvnrepository.com/](https://mvnrepository.com/)
```java
commons-dbutils-1.7.jar
javax.servlet-api-4.0.1.jar
jstl-1.2.jar
mybatis-3.5.11.jar
mysql-connection-j-8.0.32.jar
```

#### 3）项目结构



### 💻安装部署
- 下载项目，建议使用`git`克隆下载，保持同步更新
```java
git clone https://gitee.com/mayekun/artery-music.git
```
> 若要使用最新完整版本，建议克隆下载项目后，切换`maven`分支，Maven 版本与 Java 版本同步更新

```java
git checkout maven
```

- 启动流程
1.  在Navicat中连接`mysql`服务器后，执行SQL，创建数据库`arterymusic` 或直接导入SQL文件；
```md
(SQL文件位于：https://gitee.com/mayestspace/artery-music/blob/master/src/arterymusic.spl)
```
2.  项目导入IDEA 后，修改根目录下`jdbc.properties`配置文件中数据库的账号密码（改为自己本地设置的）,然后选择Tomcat服务器启动；
```md
jdbc.driver=com.mysql.cj.jdbc.Driver
jdbc.url=jdbc:mysql://localhost:3306/arterymusic?characterEncoding=utf-8
#  请替换为你的本地数据库账户密码
jdbc.username=root 
jdbc.password=root
```
3.  访问测试！
4.  自行根据代码逻辑填充测试数据，查看即可！

### 🌎️在线体验

【免注册登录体验】：[https://music.rezone.top/](http://music.rezone.top/)

【后台管理入口】：[https://music.rezone.top/adminIndex.jsp](https://music.rezone.top/adminIndex.jsp)

```java
Tips 本地部署时换成实际本地端口进行访问。
例：http://本地端口/ArteryMusic/后台管理页面（默认是adminIndex.jsp）
```



### 📺演示界面
| ![注册页面](upload/register.png) | ![image-20230814141233940](upload/login.png) |
| -------------------------------- | -------------------------------------------- |
| ![首页](upload/index.png)        | ![数字商店](upload/digital_store.png)        |
| ![音乐人中心](upload/center.png) | ![后台管理](upload/admin.png)                |



### 📑许可证书

本项目基于[GPL-3.0](https://gitee.com/mayestspace/artery-music/blob/master/LICENSE)协议许可，特此声明可用于个人课程设计与学习使用。
**重点**：项目代码毫无保留开源，支持下载体验使用！！！

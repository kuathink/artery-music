package com.arterymusic.servlet;

import com.arterymusic.entity.MyPlayList;
import com.arterymusic.mapper.MyPlayListMapper;
import com.arterymusic.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Create by Kudos on 2023/6/12 21:12
 */
@WebServlet(name = "AddSongServlet", urlPatterns = "/addSong")
public class AddSongServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1.请求响应获取字符编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        // 2.请求获取添加表单的参数id
        String songName = request.getParameter("songName");
        String singer = request.getParameter("singer");
        String album = request.getParameter("album");
        String duration = request.getParameter("duration");

        // 3.封装
        MyPlayList playList = new MyPlayList();
        playList.setSongName(songName);
        playList.setSinger(singer);
        playList.setAlbum(album);
        playList.setDuration(duration);

        // 4.获取SqlSession对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        MyPlayListMapper mplMapper = sqlSession.getMapper(MyPlayListMapper.class);
        // 5.调用mapper层的addSong()方法
        try {
            mplMapper.addSong(playList);
            // 响应重定向到主页
            response.sendRedirect("index.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("addSongMsg", "添加歌曲失败");
            // 请求转发到显示歌曲页面
            request.getRequestDispatcher("myPlayList.jsp")
                    .forward(request, response);
        } finally {
            sqlSession.close();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

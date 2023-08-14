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
import java.util.List;

/**
 * Create by Kudos on 2023/6/11 20:39
 */
@WebServlet(name = "QueryMyPlayListServlet", urlPatterns = "/queryMyPlayList")
public class QueryMyPlayListServlet extends HttpServlet {
    /**
     * 我的歌单查询
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1.请求响应设置字符编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        // 2.获取SqlSession对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        MyPlayListMapper playListMapper = sqlSession.getMapper(MyPlayListMapper.class);
        // 3.调用findAllSongs()方法
        List<MyPlayList> allSongs = playListMapper.findAllSongs();

        // 4.请求设置属性并转发到显示页面
        if (allSongs != null) {
            request.setAttribute("allSongs", allSongs);
            request.getRequestDispatcher("myPlayListInfo.jsp").forward(request, response);
        } else {
            response.sendRedirect("index.jsp");
        }

        // 5.释放资源
        sqlSession.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

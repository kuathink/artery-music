package com.arterymusic.servlet;

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
 * Create by Kudos on 2023/6/12 8:36
 */
@WebServlet(name = "DeleteSongServlet", urlPatterns = "/deleteSong")
public class DeleteSongServlet extends HttpServlet {
    /**
     * 删除歌曲(通过id删除)
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

        // 2.请求获取参数id
        int id = Integer.parseInt(request.getParameter("id"));

        // 3.获取SqlSession对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        MyPlayListMapper playListMapper = sqlSession.getMapper(MyPlayListMapper.class);
        // 4.调用mapper层的deleteSong()方法
        playListMapper.deleteSong(id);

        // 5.提交事务并释放资源
        sqlSession.commit();
        sqlSession.close();

        // 6.响应重定向到信息显示页面 myPlayList.jsp
        response.sendRedirect(request.getContextPath() + "/myPlayList.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

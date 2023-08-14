package com.arterymusic.servlet;

import com.arterymusic.mapper.UserMapper;
import com.arterymusic.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Create by Kudos on 2023/5/12 19:39
 * 删除用户
 */
@WebServlet(name = "DeleteServlet", urlPatterns = "/deleteUser")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1.设置响应字符编码格式
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        // 2.请求获取表单参数id
        // 2.1 将String类型的 id 转发
        int id = Integer.parseInt(request.getParameter("id"));

        // 3.获取SQLSession对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        userMapper.deleteUser(id);
        sqlSession.commit();
        // 释放资源
        sqlSession.close();
        // 4.响应转发重定向到用户列表页面
        response.sendRedirect(request.getContextPath() + "/queryAll");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

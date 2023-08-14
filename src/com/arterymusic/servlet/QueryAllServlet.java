package com.arterymusic.servlet;

import com.arterymusic.entity.User;
import com.arterymusic.mapper.UserMapper;
import com.arterymusic.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.List;

/**
 * Create by Kudos on 2023/5/12 9:45
 * 查询所有用户
 */
@WebServlet(name = "QueryAllServlet", urlPatterns = "/queryAll")
public class QueryAllServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1.设置响应字符编码
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        // 2.获取SqlSession 对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        // 3.调用mapper中queryAll()方法<!-- 查询数据表am_user中所有的数据-->
        List<User> userList = userMapper.queryAll();

        //返回 HTML 字符串格式的用户信息，以便在 AJAX 成功回调中将其添加到页面上：
        StringBuilder sb = new StringBuilder();
        for (User user : userList) {
            sb.append("<p>").append(user.getId()).append(": ").append(user.getAccount()).append(": ").append(user.getPassword()).append(": ").append(user.getEmail()).append("</p>");
        }

        // 4.请求设置属性; 并转发到用于显示数据库中所有用户的页面 userInfo.jsp
        request.setAttribute("userList", userList);
        request.getRequestDispatcher("userInfo.jsp").forward(request, response);

        // 5.释放资源
        sqlSession.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

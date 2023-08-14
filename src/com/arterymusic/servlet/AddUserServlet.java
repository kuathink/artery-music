package com.arterymusic.servlet;

import com.arterymusic.entity.User;
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
 * Create by Kudos on 2023/5/13 21:38
 * 添加用户
 */
@WebServlet(name = "AddUserServlet", urlPatterns = "/addUser")
public class AddUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1.请求设置字符编码
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        //2.获取添加表单的参数：account、password、email
        String account = request.getParameter("account"); //获取用户名
        String password = request.getParameter("password"); //获取密码
        String email = request.getParameter("email"); //获取电子邮箱

        // 3.封装对象
        User addUser = new User();
        addUser.setAccount(account);
        addUser.setPassword(password);
        addUser.setEmail(email);
        // 4.通过 Mybatis 工具获取 SqlSession 对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);

        try {
            // 4.1 调用 mapper 对应的添加方法添加封装的用户
            userMapper.createUser(addUser);
            // 4.2 响应重定向到所有用户列表 "/queryAll"
            response.sendRedirect(request.getContextPath() + "/queryAll");
            sqlSession.commit(); // 提交事务
        } catch (Exception e) {
            e.printStackTrace();
            // 4.3 请求设置属性
            request.setAttribute("addMsg", "添加失败");
            // 4.5 请求转发到 msg.jsp,显示失败信息
            request.getRequestDispatcher("msg.jsp").forward(request, response);
        } finally {
            sqlSession.close(); //释放资源
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

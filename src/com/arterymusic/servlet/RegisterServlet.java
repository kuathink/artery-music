package com.arterymusic.servlet;

import com.arterymusic.entity.vo.MessageModel;
import com.arterymusic.mapper.UserMapper;
import com.arterymusic.entity.User;
import com.arterymusic.service.UserService;
import com.arterymusic.utils.MybatisUtils;
import com.arterymusic.utils.StringUtil;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Create by Kudos on 2023/5/8 22:46
 * 注册用户
 */
@WebServlet(name = "RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    // 实例化UserServlet对象
    private UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1.请求设置字符编码格式
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        // 2.获取注册表单的参数：account、password、email
        String account = request.getParameter("account"); //获取用户名
        String password = request.getParameter("password"); //获取密码
        String email = request.getParameter("email"); //获取密码

        // 3.封装对象
        User user = new User();
        user.setAccount(account);
        user.setPassword(password);
        user.setEmail(email);

        // 4.验证用户名、密码和邮箱的格式
        if (userService.isValidUsername(account) && userService.isValidPassword(password)) {
            // 5.if nonNull，则获取SqlSession对象执行添加用户的操作
            SqlSession sqlSession = MybatisUtils.getSqlSession();
            UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
            User u = userMapper.queryUserByUserName(account);

            // 6.判断用户u存在数据库
            if (u == null) {
                // 6.1如果不存在，调用 mapper 层的方法注册封装的用户
                userMapper.createUser(user);
                sqlSession.commit(); // 提交事务
                response.sendRedirect("success.jsp");
                sqlSession.close(); // 释放资源
            } else {
                // 6.2 请求设置属性，并请求转发到 msg.jsp 显示注册失败信息
                request.setAttribute("regMsg", "用户已经存在");
                request.getRequestDispatcher("msg.jsp").forward(request, response);
            }
        } else {
            // 格式不符合要求，返回错误提示信息
            response.getWriter().write("账号或密码格式不符合要求，请重新输入！");
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

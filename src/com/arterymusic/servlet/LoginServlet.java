package com.arterymusic.servlet;

import com.arterymusic.entity.User;
import com.arterymusic.entity.vo.MessageModel;
import com.arterymusic.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Create by Kudos on 2023/5/7 17:01
 */
@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    // 实例化UserServlet对象
    private UserService userService = new UserService();

    /**
     * 用户登录
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1.获取登录表单参数：account、password
        String account = request.getParameter("account");
        String password = request.getParameter("password");

        if (account.equals("admin") && password.equals("admin")) {
            // 判断是否为管理员
            response.sendRedirect("adminIndex.jsp");
        } else {
            // 2-调用service层的方法，返回消息模型对象
            MessageModel messageModel = userService.userLogin(account, password);
            // 3-判断消息模型的状态码
            if (messageModel.getStatus() == 1) { //success
                // 将消息模型中的用户信息设置到session作用域中，重定向跳转到 index.html
                request.getSession().setAttribute("user", messageModel.getObject());
                response.sendRedirect("index.jsp");

            } else { //false
                // 将消息模型对象设置到request作用域中，请求转发跳转到 register.jsp
                request.setAttribute("messageModel", messageModel);
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
        }

    }

}

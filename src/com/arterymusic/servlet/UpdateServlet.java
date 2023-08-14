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
 * Create by Kudos on 2023/5/12 22:59
 * 修改用户
 */
@WebServlet(name = "UpdateServlet", urlPatterns = "/updateUser")
public class UpdateServlet extends HttpServlet {
    /**
     * 3.当点击"确认修改"时，响应请求获取修改表单的各参数
     * 4.封装修改的用户信息，调用mapper层修改方法
     * 5.响应重定向到所有用户列表页面查看信息
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1.设置响应字符编码
        response.setCharacterEncoding("UTF-8"); // 设置响应编码
        response.setContentType("text/html;charset=UTF-8");

        // 2.请求获取参数：id
        // 获取请求参数，创建用户对象，将参数设置到用户对象中
        int id = Integer.parseInt(request.getParameter("id"));
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        // 3.封装用户
        User user = new User(id, account, password, email);

        // 4.通过Mybatis工具获取 SqlSession 对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();

        try {

            UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
            // 4.1 调用 Mapper 中的方法
            int i = userMapper.updateUser(user);
            if (i > 0) {
                // 4.2响应重定向到所有用户列表页面
                response.sendRedirect(request.getContextPath() + "/queryAll");
            } else {
                // 4.3 请求设置属性
                request.setAttribute("updateMsg", "修改用户失败！");
                // 4.4 请求转发
                request.getRequestDispatcher("update.jsp").forward(request, response);
            }
            sqlSession.commit(); //提交事物
        } catch (Exception e) {
            e.printStackTrace();
            sqlSession.close(); //释放资源
        }

    }

    /**
     * 1.当点击"修改"时先通过id查询该用户是否存在数据库
     * 2.如果存在，则请求转发到修改页面；否则请求转发到错误提示页面
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1.设置响应字符编码
        response.setCharacterEncoding("UTF-8"); // 设置响应编码
        request.setCharacterEncoding("UTF-8"); // 设置请求编码
        response.setContentType("text/html;charset=UTF-8");

        // 2.请求获取参数：id
        // 获取请求参数，创建用户对象，将参数设置到用户对象中
        int id = Integer.parseInt(request.getParameter("id"));

        // 3.通过Mybatis 工具获取 SqlSession 对象
        UserMapper userMapper = MybatisUtils.getSqlSession().getMapper(UserMapper.class);
        // 3.1 调用 mapper 方法
        User user = userMapper.queryUserById(id);
        // 4.判断用户user 是否存在
        if (user != null) {// 如果查询结果不为空，则将查询结果存储到request中，并转发到修改页面
            // 4.1 请求设置属性
            request.setAttribute("user", user);
            // 4.2 请求转发到修改页面：update.jsp
            request.getRequestDispatcher("update.jsp").forward(request, response);
        } else {// 否则转发到错误页面并输出错误信
            // 4.1 请求设置属性
            request.setAttribute("error", "修改错误");
            // 4.2 请求转发到错误提示页面：msg.jsp
            request.getRequestDispatcher("msg.jsp").forward(request, response);
        }
    }
}

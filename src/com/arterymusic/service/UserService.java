package com.arterymusic.service;

import com.arterymusic.mapper.UserMapper;
import com.arterymusic.entity.User;
import com.arterymusic.entity.vo.MessageModel;
import com.arterymusic.utils.MybatisUtils;
import com.arterymusic.utils.StringUtil;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Create by Kudos on 2023/5/7 16:59
 * 业务逻辑
 */
public class UserService {

    private UserMapper userMapper;

    /**
     * 用户登录
     *
     * @param account
     * @param password
     * @return
     */
    public MessageModel userLogin(String account, String password) {
        MessageModel messageModel = new MessageModel();

        // 回显数据
        User u = new User();
        u.setAccount(account);
        u.setPassword(password);
        messageModel.setObject(u);

        // 1-参数的非空判断
        if (StringUtil.isEmpty(account) || StringUtil.isEmpty(password)) {
            // 将状态码、提示信息、回显数据设置到消息模型对象中，返回消息模型对象
            messageModel.setStatus(0);
            messageModel.setMsg("用户名或密码不能为空");
            return messageModel;
        }

        // 2-调用mapper层的查询方法，通过用户名查询用户对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        // 调用方法返回 User
        User user = userMapper.queryUserByUserName(account);

        // 3-判断用户对象是否为空
        if (user == null) {
            // 将状态码、提示信息、回显数据设置到消息模型对象中，返回消息模型对象
            messageModel.setStatus(0);
            messageModel.setMsg("用户名不存在");
            return messageModel;

        }

        // 4-判断数据库中查询到的用户密码与前台传递过来的作比较
        if (!password.equals(user.getPassword())) {
            // 如果不相等，将状态码、提示信息、回显数据设置到消息模型对象中，返回消息模型对象
            messageModel.setStatus(0);
            messageModel.setMsg("密码不正确");
            return messageModel;
        }
        // 5-登录成功，将用户信息设置到消息模型中
        messageModel.setObject(user);

        return messageModel;
    }

    /**
     * 验证用户名是否符合格式要求
     * 长度为5~11个字符，字母开头，可包含字母、数字、-、_，不含特殊字符
     *
     * @param username
     * @return
     */
    public boolean isValidUsername(String username) {
        String regx = "^[a-zA-Z][-_a-zA-Z0-9]{5,11}+$";
        Pattern pattern = Pattern.compile(regx);
        Matcher matcher = pattern.matcher(username);
        return matcher.matches();
    }

    /**
     * 验证密码是否符合格式要求
     * 长度为4~10个字符，字母开头，可包含字母、数字、" . "，不含特殊字符
     *
     * @param password
     * @return
     */
    public boolean isValidPassword(String password) {
        String regx = "^[a-zA-Z][a-zA-Z0-9@#*.]{4,10}+$";
        Pattern pattern = Pattern.compile(regx);
        Matcher matcher = pattern.matcher(password);
        return matcher.matches();
    }

}

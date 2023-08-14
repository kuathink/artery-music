package com.arterymusic.test;

import com.arterymusic.mapper.UserMapper;
import com.arterymusic.entity.User;
import com.arterymusic.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * Create by Kudos on 2023/5/7 16:10
 * 测试类
 */
public class Test {
    public static void main(String[] args) {

        // 获取SQLSession对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        // 得到对应的mapper
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);

        // 调用方法，返回对象
//        User users = userMapper.queryUserByUserName("am@user_1");
//        List<User> users = userMapper.queryAll();
        // 4.调用mapper中的deleteUser()方法删除用户
//        User user = userMapper.deleteUser(4);
//
//        // 5.提交事务
//        sqlSession.commit();
//
//        // 6.判断删除结果是否成功并给出提示信息
//        if (user != null) {
//            System.out.println("删除成功！");
//        } else {
//            System.out.println("删除失败！");
//        }

        // 7.释放资源
        sqlSession.close();

    }
}

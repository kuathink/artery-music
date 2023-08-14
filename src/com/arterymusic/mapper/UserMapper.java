package com.arterymusic.mapper;

import com.arterymusic.entity.User;

import java.util.List;

/**
 * Create by Kudos on 2023/5/6 22:29
 */
public interface UserMapper {
    /**
     * 查询所有用户
     *
     * @return
     */
    List<User> queryAll();

    /**
     * 通过用户名查询用户
     *
     * @param account
     * @return
     */
    User queryUserByUserName(String account);

    User queryUserById(int id);

    /**
     * 注册用户
     *
     * @param user
     */
    void createUser(User user);

    /**
     * 修改用户
     *
     * @param user
     * @return
     */
    int updateUser(User user);

    /**
     * 删除用户
     *
     * @param id
     * @return
     */
    int deleteUser(int id);


}

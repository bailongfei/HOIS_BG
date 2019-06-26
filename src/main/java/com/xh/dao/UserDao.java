package com.xh.dao;


import java.util.List;
import java.util.Map;

/**
 * create by 李龙飞 on 2019/6/24
 */
public interface UserDao {

    //登录
//    int login(@Param("Staff_LoginName") String Staff_LoginName, @Param("Staff_Pass") String Staff_Pass);
    Map<String,Object> login(Map<String,Object> map);

}

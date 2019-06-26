package com.xh.dao;


import java.util.List;
import java.util.Map;



public interface UserDao {

    //登录
//    int login(@Param("Staff_LoginName") String Staff_LoginName, @Param("Staff_Pass") String Staff_Pass);
    Map<String,Object> login(Map<String,Object> map);

}

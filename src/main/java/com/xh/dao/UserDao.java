package com.xh.dao;

import java.util.Map;

public interface UserDao {

    //登录
//    int login(@Param("Staff_LoginName") String Staff_LoginName, @Param("Staff_Pass") String Staff_Pass);
    Map<String,Object> login(Map<String,Object> map);

    //打开工作站时，插入数据
    Map<String,Object> openControl(Map<String,Object> map);

    //退出SP_WS_Close
    Map<String,Object> callClose(int WS_ID);

}

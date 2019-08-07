package com.xh.service;

import com.xh.dao.UserDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import java.util.Map;


@Service
public class UserService {

    @Resource
    UserDao userDao;

    public  Map<String,Object> login(Map<String,Object> map){
       return userDao.login(map);
    }

    public Map<String,Object> openControl(Map<String,Object> map){

        return userDao.openControl(map);
    }

    public Map<String,Object> callClose(int WS_ID){

        return userDao.callClose(WS_ID);
    }

}

package com.xh.service;

import com.xh.dao.UserDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import java.util.Map;

/**
 * create by 李龙飞 on 2019/6/24
 */
@Service
public class UserService {

    @Resource
    UserDao userDao;

    public  Map<String,Object> login(Map<String,Object> map){

       return userDao.login(map);
    }

}

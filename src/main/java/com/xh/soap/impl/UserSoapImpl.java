package com.xh.soap.impl;

import com.alibaba.fastjson.JSONObject;
import com.xh.service.UserService;
import com.xh.soap.UserSoap;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.jws.WebService;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * create by 李龙飞 on 2019/6/24
 */
@WebService(name = "USService",targetNamespace = "http://USService.xh.com",endpointInterface = "com.xh.soap.UserSoap",serviceName = "USServiceName",portName = "USPortName")
public class UserSoapImpl implements UserSoap {

    @Resource
    UserService userService;

    @Override
    @ResponseBody
    public String login(int WS_ID, String Staff_Code, String Staff_Pass) {

        Map<String,Object> map = new LinkedHashMap<>();
        map.put("WS_ID",WS_ID);
        map.put("Staff_Code",Staff_Code);
        map.put("Staff_Pass",Staff_Pass);

        Map<String,Object> login = userService.login(map);
//        System.out.println(login);
/*
        JSONObject object = new JSONObject();

        for (String lg : login.keySet()) {
            object.put("result",lg);
            object.put("resultInfo",login.get(lg));
        }*/

        return JSONObject.toJSONString(login);
    }
}

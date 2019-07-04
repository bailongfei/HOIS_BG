package com.xh.soap.impl;

import com.alibaba.fastjson.JSONObject;
import com.xh.service.SrvGroup_WorkService;
import com.xh.service.UserService;
import com.xh.soap.UserSoap;
import com.xh.vo.SrvGroup_WorkVo;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.jws.WebService;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;


@WebService(name = "USService",targetNamespace = "http://USService.xh.com",endpointInterface = "com.xh.soap.UserSoap",serviceName = "USServiceName",portName = "USPortName")
public class UserSoapImpl implements UserSoap {

    @Override
    public String callArrive(int WS_ID, int Data_ID) {


        return null;
    }

    @Resource
    UserService userService;
    @Resource
    SrvGroup_WorkService srvGroup_workService;


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

    //读取工作站数据
    @Override
    public String listAll() {

        List<SrvGroup_WorkVo> workList = srvGroup_workService.listAll();

        for (int i=0;i<workList.size();i++){

            System.out.println("List集合值："+workList.get(i));
        }

        return JSONObject.toJSONString(workList);
    }

    @Override
    public String callNormal(int WS_ID, int Pre_DataID) {


        return null;
    }

    @Override
    @ResponseBody
    public String openControl(int WS_ID, int WS_Display_ID, int WS_Display_Type, String WS_Scroll_Txt,
                              String WS_No, String WS_Name, String WS_Display_Name, String Staff_Code,
                              String Staff_Name, int Staff_Level, String Staff_Title, String Staff_Pic)
    {


        return null;
    }
}

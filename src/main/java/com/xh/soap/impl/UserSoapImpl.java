package com.xh.soap.impl;

import com.alibaba.fastjson.JSONObject;
import com.xh.service.*;
import com.xh.soap.UserSoap;
import com.xh.vo.SrvGroup_WorkVo;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.jws.WebService;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;


@WebService(name = "USService",targetNamespace = "http://USService.xh.com",endpointInterface = "com.xh.soap.UserSoap",serviceName = "USServiceName",portName = "USPortName")
public class UserSoapImpl implements UserSoap {

    @Resource
    UserService userService;
    @Resource
    SrvGroup_WorkService srvGroup_workService;
    @Resource
    CallArriveService callArriveService;
    @Resource
    CallConfirmService callConfirmService;
    @Resource
    Call_NormalService callNormalService;
    @Resource
    CallRepeatService callRepeatService;
    @Resource
    CallTurnService callTurnService;

    @Override
    public int callConfirm(int WS_ID, int Data_ID) {
        Map<String,Object> map = new LinkedHashMap<>();
        map.put("WS_ID",WS_ID);
        map.put("Data_ID",Data_ID);

        int result = callConfirmService.callConfirm(map);

        return result;
    }

    @Override
    public int callArrive(int WS_ID, int Data_ID) {
        Map<String,Object> map = new LinkedHashMap<>();
        map.put("WS_ID",WS_ID);
        map.put("Data_ID",Data_ID);

        int result = callArriveService.callArrive(map);

        return result;
    }

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
    public String callNormal(int WS_ID, int Queue_No) {
        Map<String,Object> map = new LinkedHashMap<>();
        map.put("WS_ID",WS_ID);
        map.put("Queue_No",Queue_No);

        Map<String,Object> normalMap = callNormalService.callNormal(map);

        return JSONObject.toJSONString(normalMap);
    }

    @Override
    public String closeWork(int WS_ID, int Queue_NO) {
        Map<String,Object> map = new LinkedHashMap<>();
        map.put("WS_ID",WS_ID);
        map.put("Queue_No",Queue_NO);

        Map<String,Object> workMap = callNormalService.closeWork(map);

        return JSONObject.toJSONString(workMap);
    }

    @Override
    public int callRepeat(int WS_ID, int Data_ID) {
        Map<String,Object> map = new LinkedHashMap<>();
        map.put("WS_ID",WS_ID);
        map.put("Data_ID",Data_ID);

        return callRepeatService.callRepeat(map);
    }

    @Override
    public String callTurn(int queueNo) {

        String queue_NO = callTurnService.callTurn(queueNo);

        return JSONObject.toJSONString(queue_NO);
    }

    @Override
    public String callClose(int WS_ID) {
        Map<String,Object> map = userService.callClose(WS_ID);

        return JSONObject.toJSONString(map);
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

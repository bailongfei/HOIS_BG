package com.xh.soap.impl;

import com.alibaba.fastjson.JSONObject;
import com.xh.dao.QueueSrvGroup;
import com.xh.service.QueueSrvGroupService;
import com.xh.soap.SrvGroupSoap;
import org.springframework.beans.factory.annotation.Autowired;

import javax.jws.WebService;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@WebService(name = "queueSrvGroup",targetNamespace = "http://queueService.xh.com",endpointInterface = "com.xh.soap.SrvGroupSoap",serviceName = "SrvGroupServiceName",portName = "SrvGroupPort")
public class QueueSrvGroupSoapImpl implements SrvGroupSoap {

    @Autowired
    QueueSrvGroupService queueSrvGroupService;
    //直接dao
    @Autowired
    private QueueSrvGroup queueSrvGroup;
    @Override
    public String QueueSrvGroup() {
         Map<String,Object> srvGroupMap=new LinkedHashMap<>();
        srvGroupMap.put("result","0");
        srvGroupMap.put("resultInfo","服务调用失败!");
        try {
            List<Map<String, Object>> maps = queueSrvGroupService.QueueSrvGroup();
            srvGroupMap.put("result","1");
            srvGroupMap.put("resultInfo","服务调用成功!");
            srvGroupMap.put("data",maps);
        } catch (Exception e) {
            e.printStackTrace();
            srvGroupMap.put("resultInfo","服务调用异常!\t"+e.getMessage());
        }

        return JSONObject.toJSONString(srvGroupMap);
    }

    @Override
    public String QueueByCondition(String SrvGroupID,String Customer, String QueueNo, String StatusType,String WSID) {
        Map<String,Object> map1=new HashMap<>();
        map1.put("SrvGroupID",SrvGroupID);
        map1.put("Customer",Customer);
        map1.put("QueueNo",QueueNo);
        map1.put("StatusType",StatusType);
        map1.put("WSID",WSID);
        Map<String,Object> queueByCondition=new LinkedHashMap<>();
        queueByCondition.put("result","0");
        queueByCondition.put("resultInfo","服务调用失败!");
        try {
            List<Map<String, Object>> maps = queueSrvGroup.queueByCondition(map1);
            queueByCondition.put("result","1");
            queueByCondition.put("resultInfo","服务调用成功!");
            queueByCondition.put("data",maps);
        } catch (Exception e) {
            e.printStackTrace();
            queueByCondition.put("resultInfo","服务调用异常!\t"+e.getMessage());
        }

        return JSONObject.toJSONString(queueByCondition);
    }

    @Override
    public String QueueAct(Integer Data_ID) {
        Map<String,Object> map1=new HashMap<>();
        map1.put("Data_ID",Data_ID);
        Map<String,Object> queueByCondition=new LinkedHashMap<>();
        queueByCondition.put("result","0");
        queueByCondition.put("resultInfo","服务调用失败!");
        try {
            Map<String, Object> maps =queueSrvGroup.QueueAct(map1);
            queueByCondition.put("result","1");
            queueByCondition.put("resultInfo","服务调用成功!");
            queueByCondition.put("data",maps);
        } catch (Exception e) {
            e.printStackTrace();
            queueByCondition.put("resultInfo","服务调用异常!\t"+e.getMessage());
        }

        return JSONObject.toJSONString(queueByCondition);
    }

    @Override
    public String QueueZG(Integer Data_ID) {
        Map<String,Object> map1=new HashMap<>();
        map1.put("Data_ID",Data_ID);
        Map<String,Object> queueByCondition=new LinkedHashMap<>();
        queueByCondition.put("result","0");
        queueByCondition.put("resultInfo","服务调用失败!");
        try {
            Map<String, Object> maps =queueSrvGroup.QueueZG(map1);
            queueByCondition.put("result","1");
            queueByCondition.put("resultInfo","服务调用成功!");
            queueByCondition.put("data",maps);
        } catch (Exception e) {
            e.printStackTrace();
            queueByCondition.put("resultInfo","服务调用异常!\t"+e.getMessage());
        }

        return JSONObject.toJSONString(queueByCondition);
    }

    @Override
    public String QueueWSID() {
        Map<String,Object> queueWSIDMap=new LinkedHashMap<>();
        queueWSIDMap.put("result","0");
        queueWSIDMap.put("resultInfo","服务调用失败!");
        try {
            List<Map<String, Object>> maps =queueSrvGroup.QueueWSID();
            queueWSIDMap.put("result","1");
            queueWSIDMap.put("resultInfo","服务调用成功!");
            queueWSIDMap.put("data",maps);
        } catch (Exception e) {
            e.printStackTrace();
            queueWSIDMap.put("resultInfo","服务调用异常!\t"+e.getMessage());
        }

        return JSONObject.toJSONString(queueWSIDMap);
    }

    @Override
    public String Queue_ZDHJ(Integer Data_ID, Integer WSID, String StaffCode) {
        Map<String,Object> queueZDHJ=new LinkedHashMap<>();
        queueZDHJ.put("Data_ID",Data_ID);
        queueZDHJ.put("WSID",WSID);
        queueZDHJ.put("StaffCode",StaffCode);
        queueZDHJ.put("result","0");
        queueZDHJ.put("resultInfo","服务调用失败!");
        try {
            Map<String, Object> maps =queueSrvGroup.Queue_ZDHJ(queueZDHJ);
            queueZDHJ.put("result","1");
            queueZDHJ.put("resultInfo","服务调用成功!");
            queueZDHJ.put("data",maps);
        } catch (Exception e) {
            e.printStackTrace();
            queueZDHJ.put("resultInfo","服务调用异常!\t"+e.getMessage());
        }

        return JSONObject.toJSONString(queueZDHJ);
    }


}

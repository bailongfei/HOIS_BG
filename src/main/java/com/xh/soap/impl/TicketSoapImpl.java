package com.xh.soap.impl;

import com.alibaba.fastjson.JSONObject;
import com.xh.service.TicketService;
import com.xh.soap.TicketSoap;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.jws.WebService;
import java.util.LinkedHashMap;
import java.util.Map;


@WebService(name = "TicketService",targetNamespace = "http://TicketService.xh.com",endpointInterface = "com.xh.soap.TicketSoap",serviceName = "TicketServiceName",portName = "TicketServicePort")
public class TicketSoapImpl implements TicketSoap {

    @Resource
    TicketService ticketService;

    @Override
    @ResponseBody
    public String ticket(int Site_ID, int SrvGroup_ID, int SrvCode_ID, String Appoint_Time,
                  String Customer_ID, String Customer_No, String Customer_Name, int Customer_Type) {

        Map<String,Object> map = new LinkedHashMap<>();
        map.put("Site_ID",Site_ID);
        map.put("SrvGroup_ID",SrvGroup_ID);
        map.put("SrvCode_ID",SrvCode_ID);
        map.put("Appoint_Time",Appoint_Time);
        map.put("Customer_ID",Customer_ID);
        map.put("Customer_No",Customer_No);
        map.put("Customer_Name",Customer_Name);
        map.put("Customer_Type",Customer_Type);

        Map<String,Object> collectTicket = ticketService.collectTicket(map);

        for (String collect : collectTicket.keySet()) {

            System.out.println("key:"+collect+"，value:"+collectTicket.get(collect));
        }

        return JSONObject.toJSONString(collectTicket);
    }

}

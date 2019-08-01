package com.xh.service;

import com.alibaba.fastjson.JSONObject;
import com.xh.dao.TicketDao;
import com.xh.vo.QueueVo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;


@Service
public class TicketService{

    @Resource
    TicketDao ticketDao;

    public Map<String,Object> collectTicket(Map<String,Object> map){

        return ticketDao.collectTicket(map);
    }

    public String readQueue(){
        Map<String,Object> map = new LinkedHashMap<>();
        map.put("result","0");
        map.put("resultInfo","服务调用失败！");
        try{
            List<QueueVo> queueVos = ticketDao.readQueue();
            map.put("result","1");
            map.put("resultInfo","服务调用成功！");
            map.put("data",queueVos);
        }catch (Exception e){
            e.printStackTrace();
            map.put("resultInfo","服务调用异常!\t"+e.getMessage());
        }

        return JSONObject.toJSONString(map);
    }

}

package com.xh.service;

import com.xh.dao.TicketDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

/**
 * create by 李龙飞 on 2019/6/28
 */
@Service
public class TicketService{

    @Resource
    TicketDao ticketDao;

    public Map<String,Object> collectTicket(Map<String,Object> map){

        return ticketDao.collectTicket(map);
    }

}

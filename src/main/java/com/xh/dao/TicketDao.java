package com.xh.dao;

import com.xh.vo.QueueVo;

import java.util.List;
import java.util.Map;


public interface TicketDao {

    Map<String,Object>  collectTicket(Map<String,Object> map);

    List<QueueVo> readQueue();

}

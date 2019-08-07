package com.xh.service;

import com.xh.dao.QueueSrvGroup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class QueueSrvGroupService {
    @Autowired
    private QueueSrvGroup queueSrvGroup;
   public List<Map<String,Object>> QueueSrvGroup(){
       List<Map<String, Object>> maps = queueSrvGroup.queueSrvGroup();
       return maps;
   };
}

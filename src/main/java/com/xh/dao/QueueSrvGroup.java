package com.xh.dao;

import java.util.List;
import java.util.Map;

public interface QueueSrvGroup {
    public List<Map<String,Object>> queueSrvGroup();
    public List<Map<String,Object>> queueByCondition(Map<String,Object> map);
    public Map<String,Object> QueueAct(Map<String,Object> map);
}

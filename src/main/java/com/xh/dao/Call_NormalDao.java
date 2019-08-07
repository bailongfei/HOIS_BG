package com.xh.dao;
import java.util.HashMap;
import java.util.Map;

public interface Call_NormalDao {

    //下一位
    Map<String,Object> callNormal(Map<String,Object> map);

    //结束就诊
    Map<String,Object> closeWork(Map<String,Object> map);

    //延后
    Map<String,Object> callDelay(Map<String,Object> map);

}

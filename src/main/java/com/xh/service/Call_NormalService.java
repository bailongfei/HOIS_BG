package com.xh.service;

import com.xh.dao.Call_NormalDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

@Service
public class Call_NormalService {

    @Resource
    Call_NormalDao call_normalDao;

    public Map<String,Object> callNormal(Map<String,Object> map){

        return call_normalDao.callNormal(map);
    }

    public Map<String,Object> closeWork(Map<String,Object> map){

        return call_normalDao.closeWork(map);
    }

}

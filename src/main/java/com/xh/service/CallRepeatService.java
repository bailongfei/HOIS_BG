package com.xh.service;

import com.xh.dao.CallRepeatDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

@Service
public class CallRepeatService {

    @Resource
    CallRepeatDao callRepeatDao;

    public Map<String, Object> callRepeat(Map<String,Object> map){

        return callRepeatDao.callRepeat(map);
    }

}

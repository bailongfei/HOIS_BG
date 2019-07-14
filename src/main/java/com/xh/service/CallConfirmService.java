package com.xh.service;

import com.xh.dao.CallConfirmDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

@Service
public class CallConfirmService {

    @Resource
    CallConfirmDao callConfirmDao;

    public Map<String, Object> callConfirm(Map<String,Object> map){

        return callConfirmDao.callConfirm(map);
    }

}

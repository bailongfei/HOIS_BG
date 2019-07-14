package com.xh.service;
import com.xh.dao.CallArriveDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

@Service
public class CallArriveService {

    @Resource
    CallArriveDao callArriveDao;

    public Map<String, Object> callArrive(Map<String,Object> map){

        return callArriveDao.callArrive(map);
    }

}

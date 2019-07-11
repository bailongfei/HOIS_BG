package com.xh.service;

import com.xh.dao.CallTurnDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class CallTurnService {

    @Resource
    CallTurnDao callTurnDao;


}

package com.xh.service;

import com.xh.dao.SrvGroup_WorkDao;
import com.xh.vo.SrvGroup_WorkVo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SrvGroup_WorkService {

    @Resource
    SrvGroup_WorkDao srvGroup_workDao;

    public List<SrvGroup_WorkVo> listAll(){

        return srvGroup_workDao.listAll();
    }

}

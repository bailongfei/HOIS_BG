package com.xh.soap;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;

@WebService(name = "SrvGroupSoap",targetNamespace = "http://queueService.xh.com")
public interface SrvGroupSoap {
    //查询服务
    @WebMethod(operationName = "queueSrvGroup",action = "http://queueService.xh.com/queueSrvGroup")
    @WebResult(name = "SrvGroupResult",targetNamespace = "http://queueService.xh.com")
    public String QueueSrvGroup();

    //条件查询客户就诊信息
    @WebMethod(operationName = "queueByCondition",action = "http://queueService.xh.com/queueByCondition")
    @WebResult(name = "queueByConditionResult",targetNamespace = "http://queueService.xh.com")
    public String QueueByCondition(
            @WebParam(name = "Customer") String Customer, //卡号
            @WebParam(name = "QueueNo") String QueueNo, //票号
            @WebParam(name = "StatusType") String StatusType //就诊状态
    );
}

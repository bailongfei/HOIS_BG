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
            @WebParam(name="SrvGroupID") String SrvGroupID, //服务类型
            @WebParam(name = "Customer") String Customer, //卡号
            @WebParam(name = "QueueNo") String QueueNo, //票号
            @WebParam(name = "StatusType") String StatusType, //就诊状态
            @WebParam(name = "WSID") String WSID //工作站ID
    );
    //过号激活
    @WebMethod(operationName = "queueAct",action = "http://queueService.xh.com/queueAct")
    @WebResult(name = "queueActResult",targetNamespace = "http://queueService.xh.com")
    public String QueueAct(@WebParam(name = "Data_ID")Integer Data_ID);

    //客户照顾
    @WebMethod(operationName = "queueZG",action = "http://queueService.xh.com/queueZG")
    @WebResult(name = "queueZGResult",targetNamespace = "http://queueService.xh.com")
    public String QueueZG(@WebParam(name = "Data_ID") Integer Data_ID);

    //查询工作站
    @WebMethod(operationName = "queueWSID",action = "http://queueService.xh.com/queueWSID")
    @WebResult(name = "queueWSIDResult",targetNamespace = "http://queueService.xh.com")
    public String QueueWSID();
}

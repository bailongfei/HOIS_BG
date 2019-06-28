package com.xh.soap;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;

/**
 * create by 李龙飞 on 2019/6/27
 */
@WebService(name = "TicketService",targetNamespace = "http://TicketService.xh.com")
public interface TicketSoap {

    //取票
    @WebMethod(operationName = "collectTicket",action = "http://TicketService.xh.com/collectTicket")
    @WebResult(name = "ticketResult",targetNamespace = "http://TicketService.xh.com")
    public String ticket(
            @WebParam(name = "Site_ID") int Site_ID,
            @WebParam(name = "SrvGroup_ID") int SrvGroup_ID,
            @WebParam(name = "SrvCode_ID") int SrvCode_ID,
            @WebParam(name = "Appoint_Time") String Appoint_Time,
            @WebParam(name = "Customer_ID") String Customer_ID,
            @WebParam(name = "Customer_No") String Customer_No,
            @WebParam(name = "Customer_Name") String Customer_Name,
            @WebParam(name = "Customer_Type") int Customer_Type
    );

}

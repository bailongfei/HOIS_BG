package com.xh.soap;

import com.xh.vo.SrvGroup_WorkVo;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import java.util.List;
import java.util.Map;


@WebService(name = "USService",targetNamespace="http://USService.xh.com")
public interface UserSoap {

    /**
     * @WebResult(name="addResult")
     *     此注解可加可不加，如果加了但不指定name属性的值跟没加是一样的，
     *      加上name的效果就是在wsdl文件的定义中将该方法的返回值的名称固定了，
     *      而不是【方法名Response】,例如add方法的返回参数的定义将为：addResponse
     *
     * @WebParam(name="a")
     *     此注解是将方法的参数的名称用一个有意义的名称进行定义,
     *     如果不定义那wsdl中将是arg0、arg1....这种无意义的名称
     * @param
     * @param
     * @return
     */
    //登录工作站接口
    @WebMethod(operationName = "userLogin",action = "http://USService.xh.com/userLogin")
    @WebResult(name = "loginResult",targetNamespace = "http://USService.xh.com")
    public String login(
            @WebParam(name = "WS_ID") int WS_ID,
            @WebParam(name = "Staff_Code") String Staff_Code,
            @WebParam(name = "Staff_Pass") String Staff_Pass
    );

    //打开工作站时，读取数据
    @WebMethod(operationName = "listAll",action = "http://USService.xh.com/listAll")
    @WebResult(name = "listAllResult",targetNamespace = "http://USService.xh.com")
    public String listAll();

    //下一位
    @WebMethod(operationName = "callNormal",action = "http://USService.xh.com/callNormal")
    @WebResult(name = "callNormalResult",targetNamespace = "http://USService.xh.com")
    public String callNormal(
            @WebParam(name = "WS_ID") int WS_ID,
            @WebParam(name = "Pre_DataID") int Pre_DataID
    );

    //过号
    @WebMethod(operationName = "callArrive",action = "http://USService.xh.com/callArrive")
    @WebResult(name = "arriveResult",targetNamespace = "http://USService.xh.com")
    public String callArrive(
            @WebParam(name = "WS_ID") int WS_ID,
            @WebParam(name = "Data_ID") int Data_ID
    );

    @WebMethod(operationName = "openControl",action = "http://USService.xh.com/openControl")
    @WebResult(name = "controlResult",targetNamespace = "http://USService.xh.com")
    public String openControl(
            @WebParam(name = "WS_ID") int WS_ID,
            @WebParam(name = "WS_Display_ID") int WS_Display_ID,
            @WebParam(name = "WS_Display_Type") int WS_Display_Type,
            @WebParam(name = "WS_Scroll_Txt") String WS_Scroll_Txt,
            @WebParam(name = "WS_No") String WS_No,
            @WebParam(name = "WS_Name") String WS_Name,
            @WebParam(name = "WS_Display_Name") String WS_Display_Name,
            @WebParam(name = "Staff_Code") String Staff_Code,
            @WebParam(name = "Staff_Name") String Staff_Name,
            @WebParam(name = "Staff_Level") int Staff_Level,
            @WebParam(name = "Staff_Title") String Staff_Title,
            @WebParam(name = "Staff_Pic") String Staff_Pic

    );

}

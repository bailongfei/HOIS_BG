package com.xh.soap;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;



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

    //登录时根据工号调用存储过程获取相应工号对应的科室

}

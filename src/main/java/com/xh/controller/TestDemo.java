package com.xh.controller;

import com.xh.soap.impl.UserSoapImpl;

import javax.xml.ws.Endpoint;

/**
 * create by 李龙飞 on 2019/6/24
 */
public class TestDemo {

    public static void main(String[] args) {
        String address = "http://127.0.0.1:8080/";
        Endpoint.publish(address, new UserSoapImpl());
        System.out.println("发布webservice成功!");
    }

}

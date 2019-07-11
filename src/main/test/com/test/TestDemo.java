package com.test;

import com.xh.soap.impl.UserSoapImpl;

import javax.xml.ws.Endpoint;

public class TestDemo {
     public static void main(String[] args) {
         String address = "http://127.0.0.1:8080/";
         Endpoint.publish(address, new UserSoapImpl());
         System.out.println("发布webservice成功!");
       }
}

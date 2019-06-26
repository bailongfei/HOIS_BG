package com.xh.util;

/**
 * create by 李龙飞 on 2019/6/21
 */
public class JDBCUtil {

    public static void main(String[] args) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

}

package com.test;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class JsonTest {
    public static void main(String[] args) {
        String s = "{\"name\":\"a\",\"family\":[\"张三\",\"李四\"]}";
        JSONObject jsonObject = JSON.parseObject(s);
        System.out.println(jsonObject);
        //注意：family中的内容带有中括号[]，所以要转化为JSONArray类型的对象
        JSONArray family = jsonObject.getJSONArray("family");
        System.out.println(family);
        for (int i = 0; i < family.size(); i++) { //提取出family中的所有
            String s1 = (String) family.get(i);

            System.out.println("currentFamily:" + s1);

        }
    }

}

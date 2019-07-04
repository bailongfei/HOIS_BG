package com.xh.vo;

import java.io.Serializable;

public class SrvGroup_WorkVo implements Serializable {

    private String Queue_No;
    private String SrvGroup_Name;
    private String RegDate;
    private String StatusTypeName;

    @Override
    public String toString() {
        return "SrvGroup_WorkVo{" +
                "Queue_No='" + Queue_No + '\'' +
                ", SrvGroup_Name='" + SrvGroup_Name + '\'' +
                ", RegDate='" + RegDate + '\'' +
                ", StatusTypeName='" + StatusTypeName + '\'' +
                '}';
    }

    public String getQueue_No() {
        return Queue_No;
    }

    public void setQueue_No(String queue_No) {
        Queue_No = queue_No;
    }

    public String getSrvGroup_Name() {
        return SrvGroup_Name;
    }

    public void setSrvGroup_Name(String srvGroup_Name) {
        SrvGroup_Name = srvGroup_Name;
    }

    public String getRegDate() {
        return RegDate;
    }

    public void setRegDate(String regDate) {
        RegDate = regDate;
    }

    public String getStatusTypeName() {
        return StatusTypeName;
    }

    public void setStatusTypeName(String statusTypeName) {
        StatusTypeName = statusTypeName;
    }
}

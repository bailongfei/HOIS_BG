package com.xh.vo;


public class QueueVo {

    private int SrvGroup_ID;         //客户服务类型ID
    private String SrvGroup_Name;    //服务类型名称
    private String SrvGroup_Code;    //服务类型字母标识
    private int SrvGroup_Start_Num;
    private int SrvGroup_End_Num;
    private int SrvGroup_Ticket_ID;

    @Override
    public String toString() {
        return "QueueVo{" +
                "SrvGroup_ID=" + SrvGroup_ID +
                ", SrvGroup_Name='" + SrvGroup_Name + '\'' +
                ", SrvGroup_Code='" + SrvGroup_Code + '\'' +
                ", SrvGroup_Start_Num=" + SrvGroup_Start_Num +
                ", SrvGroup_End_Num=" + SrvGroup_End_Num +
                ", SrvGroup_Ticket_ID=" + SrvGroup_Ticket_ID +
                '}';
    }

    public int getSrvGroup_ID() {
        return SrvGroup_ID;
    }

    public void setSrvGroup_ID(int srvGroup_ID) {
        SrvGroup_ID = srvGroup_ID;
    }

    public String getSrvGroup_Name() {
        return SrvGroup_Name;
    }

    public void setSrvGroup_Name(String srvGroup_Name) {
        SrvGroup_Name = srvGroup_Name;
    }

    public String getSrvGroup_Code() {
        return SrvGroup_Code;
    }

    public void setSrvGroup_Code(String srvGroup_Code) {
        SrvGroup_Code = srvGroup_Code;
    }

    public int getSrvGroup_Start_Num() {
        return SrvGroup_Start_Num;
    }

    public void setSrvGroup_Start_Num(int srvGroup_Start_Num) {
        SrvGroup_Start_Num = srvGroup_Start_Num;
    }

    public int getSrvGroup_End_Num() {
        return SrvGroup_End_Num;
    }

    public void setSrvGroup_End_Num(int srvGroup_End_Num) {
        SrvGroup_End_Num = srvGroup_End_Num;
    }

    public int getSrvGroup_Ticket_ID() {
        return SrvGroup_Ticket_ID;
    }

    public void setSrvGroup_Ticket_ID(int srvGroup_Ticket_ID) {
        SrvGroup_Ticket_ID = srvGroup_Ticket_ID;
    }
}

package com.xh.vo;

//下一位接口调用javabean
public class Call_NormalVo {

    private int data_ID;
    private String customer_Name;
    private String start_Time;
    private String end_Time;
    private String queue_No;
    private int queue_Pos;
    private int srvGroup_ID;
    private int status_Type;
    private int ws_Id;
    private int priority_Id;
    private int priority_Level;
    private String srvGroup_Letter;

    @Override
    public String toString() {
        return "Call_NormalVo{" +
                "data_ID=" + data_ID +
                ", customer_Name='" + customer_Name + '\'' +
                ", start_Time='" + start_Time + '\'' +
                ", end_Time='" + end_Time + '\'' +
                ", queue_No='" + queue_No + '\'' +
                ", queue_Pos=" + queue_Pos +
                ", srvGroup_ID=" + srvGroup_ID +
                ", status_Type=" + status_Type +
                ", ws_Id=" + ws_Id +
                ", priority_Id=" + priority_Id +
                ", priority_Level=" + priority_Level +
                ", srvGroup_Letter='" + srvGroup_Letter + '\'' +
                '}';
    }

    public int getData_ID() {
        return data_ID;
    }

    public void setData_ID(int data_ID) {
        this.data_ID = data_ID;
    }

    public String getCustomer_Name() {
        return customer_Name;
    }

    public void setCustomer_Name(String customer_Name) {
        this.customer_Name = customer_Name;
    }

    public String getStart_Time() {
        return start_Time;
    }

    public void setStart_Time(String start_Time) {
        this.start_Time = start_Time;
    }

    public String getEnd_Time() {
        return end_Time;
    }

    public void setEnd_Time(String end_Time) {
        this.end_Time = end_Time;
    }

    public String getQueue_No() {
        return queue_No;
    }

    public void setQueue_No(String queue_No) {
        this.queue_No = queue_No;
    }

    public int getQueue_Pos() {
        return queue_Pos;
    }

    public void setQueue_Pos(int queue_Pos) {
        this.queue_Pos = queue_Pos;
    }

    public int getSrvGroup_ID() {
        return srvGroup_ID;
    }

    public void setSrvGroup_ID(int srvGroup_ID) {
        this.srvGroup_ID = srvGroup_ID;
    }

    public int getStatus_Type() {
        return status_Type;
    }

    public void setStatus_Type(int status_Type) {
        this.status_Type = status_Type;
    }

    public int getWs_Id() {
        return ws_Id;
    }

    public void setWs_Id(int ws_Id) {
        this.ws_Id = ws_Id;
    }

    public int getPriority_Id() {
        return priority_Id;
    }

    public void setPriority_Id(int priority_Id) {
        this.priority_Id = priority_Id;
    }

    public int getPriority_Level() {
        return priority_Level;
    }

    public void setPriority_Level(int priority_Level) {
        this.priority_Level = priority_Level;
    }

    public String getSrvGroup_Letter() {
        return srvGroup_Letter;
    }

    public void setSrvGroup_Letter(String srvGroup_Letter) {
        this.srvGroup_Letter = srvGroup_Letter;
    }
}

package com.xh.vo;

public class ControlCmdVo {

    private int ControlCmd_ID;
    private String ControlCmd_Time;
    private int Cmd_Group_ID;
    private int Cmd_Type_ID;
    private String Cmd_Info;
    private String Cmd_Para_1;
    private String Cmd_Para_2;
    private String Cmd_Para_3;
    private String Cmd_Para_4;
    private int Cmd_Status;

    @Override
    public String toString() {
        return "ControlCmdVo{" +
                "ControlCmd_ID=" + ControlCmd_ID +
                ", ControlCmd_Time='" + ControlCmd_Time + '\'' +
                ", Cmd_Group_ID=" + Cmd_Group_ID +
                ", Cmd_Type_ID=" + Cmd_Type_ID +
                ", Cmd_Info='" + Cmd_Info + '\'' +
                ", Cmd_Para_1='" + Cmd_Para_1 + '\'' +
                ", Cmd_Para_2='" + Cmd_Para_2 + '\'' +
                ", Cmd_Para_3='" + Cmd_Para_3 + '\'' +
                ", Cmd_Para_4='" + Cmd_Para_4 + '\'' +
                ", Cmd_Status=" + Cmd_Status +
                '}';
    }

    public int getControlCmd_ID() {
        return ControlCmd_ID;
    }

    public void setControlCmd_ID(int controlCmd_ID) {
        ControlCmd_ID = controlCmd_ID;
    }

    public String getControlCmd_Time() {
        return ControlCmd_Time;
    }

    public void setControlCmd_Time(String controlCmd_Time) {
        ControlCmd_Time = controlCmd_Time;
    }

    public int getCmd_Group_ID() {
        return Cmd_Group_ID;
    }

    public void setCmd_Group_ID(int cmd_Group_ID) {
        Cmd_Group_ID = cmd_Group_ID;
    }

    public int getCmd_Type_ID() {
        return Cmd_Type_ID;
    }

    public void setCmd_Type_ID(int cmd_Type_ID) {
        Cmd_Type_ID = cmd_Type_ID;
    }

    public String getCmd_Info() {
        return Cmd_Info;
    }

    public void setCmd_Info(String cmd_Info) {
        Cmd_Info = cmd_Info;
    }

    public String getCmd_Para_1() {
        return Cmd_Para_1;
    }

    public void setCmd_Para_1(String cmd_Para_1) {
        Cmd_Para_1 = cmd_Para_1;
    }

    public String getCmd_Para_2() {
        return Cmd_Para_2;
    }

    public void setCmd_Para_2(String cmd_Para_2) {
        Cmd_Para_2 = cmd_Para_2;
    }

    public String getCmd_Para_3() {
        return Cmd_Para_3;
    }

    public void setCmd_Para_3(String cmd_Para_3) {
        Cmd_Para_3 = cmd_Para_3;
    }

    public String getCmd_Para_4() {
        return Cmd_Para_4;
    }

    public void setCmd_Para_4(String cmd_Para_4) {
        Cmd_Para_4 = cmd_Para_4;
    }

    public int getCmd_Status() {
        return Cmd_Status;
    }

    public void setCmd_Status(int cmd_Status) {
        Cmd_Status = cmd_Status;
    }
}

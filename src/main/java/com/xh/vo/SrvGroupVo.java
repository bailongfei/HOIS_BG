package com.xh.vo;

public class SrvGroupVo {

    private int SrvGroup_ID;
    private String SrvGroup_Name;
    private String SrvGroup_Code;
    private String SrvGroup_Letter;
    private int SrvGroup_Start_Num;
    private int SrvGroup_End_Num;
    private int SrvGroup_Period;
    private int SrvGroup_PauseNum;
    private String SrvGroup_Note;
    private int SrvGroup_Ticket_ID;
    private int SrvGroup_WaitSkip;

    @Override
    public String toString() {
        return "SrvGroupVo{" +
                "SrvGroup_ID=" + SrvGroup_ID +
                ", SrvGroup_Name='" + SrvGroup_Name + '\'' +
                ", SrvGroup_Code='" + SrvGroup_Code + '\'' +
                ", SrvGroup_Letter='" + SrvGroup_Letter + '\'' +
                ", SrvGroup_Start_Num=" + SrvGroup_Start_Num +
                ", SrvGroup_End_Num=" + SrvGroup_End_Num +
                ", SrvGroup_Period=" + SrvGroup_Period +
                ", SrvGroup_PauseNum=" + SrvGroup_PauseNum +
                ", SrvGroup_Note='" + SrvGroup_Note + '\'' +
                ", SrvGroup_Ticket_ID=" + SrvGroup_Ticket_ID +
                ", SrvGroup_WaitSkip=" + SrvGroup_WaitSkip +
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

    public String getSrvGroup_Letter() {
        return SrvGroup_Letter;
    }

    public void setSrvGroup_Letter(String srvGroup_Letter) {
        SrvGroup_Letter = srvGroup_Letter;
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

    public int getSrvGroup_Period() {
        return SrvGroup_Period;
    }

    public void setSrvGroup_Period(int srvGroup_Period) {
        SrvGroup_Period = srvGroup_Period;
    }

    public int getSrvGroup_PauseNum() {
        return SrvGroup_PauseNum;
    }

    public void setSrvGroup_PauseNum(int srvGroup_PauseNum) {
        SrvGroup_PauseNum = srvGroup_PauseNum;
    }

    public String getSrvGroup_Note() {
        return SrvGroup_Note;
    }

    public void setSrvGroup_Note(String srvGroup_Note) {
        SrvGroup_Note = srvGroup_Note;
    }

    public int getSrvGroup_Ticket_ID() {
        return SrvGroup_Ticket_ID;
    }

    public void setSrvGroup_Ticket_ID(int srvGroup_Ticket_ID) {
        SrvGroup_Ticket_ID = srvGroup_Ticket_ID;
    }

    public int getSrvGroup_WaitSkip() {
        return SrvGroup_WaitSkip;
    }

    public void setSrvGroup_WaitSkip(int srvGroup_WaitSkip) {
        SrvGroup_WaitSkip = srvGroup_WaitSkip;
    }
}

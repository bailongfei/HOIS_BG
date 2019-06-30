package com.xh.vo;


public class TicketVo {

    private int Ticket_ID;
    private String Ticket_Name;
    private String Tic_TitlePic;
    private String Tic_Title;
    private String Tic_Caption;
    private String Tic_SrvName;
    private int Tic_Queue_Num;
    private int Tic_Prn_Time;
    private String Tic_Welcome;
    private String  Tic_Notice;
    private String Ticket_Note;

    @Override
    public String toString() {
        return "TicketVo{" +
                "Ticket_ID=" + Ticket_ID +
                ", Ticket_Name='" + Ticket_Name + '\'' +
                ", Tic_TitlePic='" + Tic_TitlePic + '\'' +
                ", Tic_Title='" + Tic_Title + '\'' +
                ", Tic_Caption='" + Tic_Caption + '\'' +
                ", Tic_SrvName='" + Tic_SrvName + '\'' +
                ", Tic_Queue_Num=" + Tic_Queue_Num +
                ", Tic_Prn_Time=" + Tic_Prn_Time +
                ", Tic_Welcome='" + Tic_Welcome + '\'' +
                ", Tic_Notice='" + Tic_Notice + '\'' +
                ", Ticket_Note='" + Ticket_Note + '\'' +
                '}';
    }

    public int getTicket_ID() {
        return Ticket_ID;
    }

    public void setTicket_ID(int ticket_ID) {
        Ticket_ID = ticket_ID;
    }

    public String getTicket_Name() {
        return Ticket_Name;
    }

    public void setTicket_Name(String ticket_Name) {
        Ticket_Name = ticket_Name;
    }

    public String getTic_TitlePic() {
        return Tic_TitlePic;
    }

    public void setTic_TitlePic(String tic_TitlePic) {
        Tic_TitlePic = tic_TitlePic;
    }

    public String getTic_Title() {
        return Tic_Title;
    }

    public void setTic_Title(String tic_Title) {
        Tic_Title = tic_Title;
    }

    public String getTic_Caption() {
        return Tic_Caption;
    }

    public void setTic_Caption(String tic_Caption) {
        Tic_Caption = tic_Caption;
    }

    public String getTic_SrvName() {
        return Tic_SrvName;
    }

    public void setTic_SrvName(String tic_SrvName) {
        Tic_SrvName = tic_SrvName;
    }

    public int getTic_Queue_Num() {
        return Tic_Queue_Num;
    }

    public void setTic_Queue_Num(int tic_Queue_Num) {
        Tic_Queue_Num = tic_Queue_Num;
    }

    public int getTic_Prn_Time() {
        return Tic_Prn_Time;
    }

    public void setTic_Prn_Time(int tic_Prn_Time) {
        Tic_Prn_Time = tic_Prn_Time;
    }

    public String getTic_Welcome() {
        return Tic_Welcome;
    }

    public void setTic_Welcome(String tic_Welcome) {
        Tic_Welcome = tic_Welcome;
    }

    public String getTic_Notice() {
        return Tic_Notice;
    }

    public void setTic_Notice(String tic_Notice) {
        Tic_Notice = tic_Notice;
    }

    public String getTicket_Note() {
        return Ticket_Note;
    }

    public void setTicket_Note(String ticket_Note) {
        Ticket_Note = ticket_Note;
    }

}

package com.xh.vo;

import java.util.List;


public class UserVo {

    private int Staff_ID;       //编号
    private String Staff_No;    //部门编号
    private String Staff_Code;  //工号
    private String Staff_Name;  //姓名
    private int DP_ID;          //
    private int Site_ID;        //
    private String Staff_Pass_Num; //确认密码
    private String Staff_LoginName; //登录用户名
    private String Staff_Pass;      //密码
    private int Staff_Level;        //服务等级
    private String Staff_Title;     // 职位名称
    private String Staff_Pic;       //
    private String Staff_Pic_RAW;   //照片
    private String Staff_UserRole;  //工作组
    private int Staff_Priority;     //优先级
    private int Staff_UserGroup;    //用户组编号
    private int Staff_Enable;       //启用状态
    private String Staff_Note;      //备注


    @Override
    public String toString() {
        return "UserVo{" +
                "Staff_ID=" + Staff_ID +
                ", Staff_No='" + Staff_No + '\'' +
                ", Staff_Code='" + Staff_Code + '\'' +
                ", Staff_Name='" + Staff_Name + '\'' +
                ", DP_ID=" + DP_ID +
                ", Site_ID=" + Site_ID +
                ", Staff_Pass_Num='" + Staff_Pass_Num + '\'' +
                ", Staff_LoginName='" + Staff_LoginName + '\'' +
                ", Staff_Pass='" + Staff_Pass + '\'' +
                ", Staff_Level=" + Staff_Level +
                ", Staff_Title='" + Staff_Title + '\'' +
                ", Staff_Pic='" + Staff_Pic + '\'' +
                ", Staff_Pic_RAW='" + Staff_Pic_RAW + '\'' +
                ", Staff_UserRole='" + Staff_UserRole + '\'' +
                ", Staff_Priority=" + Staff_Priority +
                ", Staff_UserGroup=" + Staff_UserGroup +
                ", Staff_Enable=" + Staff_Enable +
                ", Staff_Note='" + Staff_Note + '\'' +
                '}';
    }

    public int getStaff_ID() {
        return Staff_ID;
    }

    public void setStaff_ID(int staff_ID) {
        Staff_ID = staff_ID;
    }

    public String getStaff_No() {
        return Staff_No;
    }

    public void setStaff_No(String staff_No) {
        Staff_No = staff_No;
    }

    public String getStaff_Code() {
        return Staff_Code;
    }

    public void setStaff_Code(String staff_Code) {
        Staff_Code = staff_Code;
    }

    public String getStaff_Name() {
        return Staff_Name;
    }

    public void setStaff_Name(String staff_Name) {
        Staff_Name = staff_Name;
    }

    public int getDP_ID() {
        return DP_ID;
    }

    public void setDP_ID(int DP_ID) {
        this.DP_ID = DP_ID;
    }

    public int getSite_ID() {
        return Site_ID;
    }

    public void setSite_ID(int site_ID) {
        Site_ID = site_ID;
    }

    public String getStaff_Pass_Num() {
        return Staff_Pass_Num;
    }

    public void setStaff_Pass_Num(String staff_Pass_Num) {
        Staff_Pass_Num = staff_Pass_Num;
    }

    public String getStaff_LoginName() {
        return Staff_LoginName;
    }

    public void setStaff_LoginName(String staff_LoginName) {
        Staff_LoginName = staff_LoginName;
    }

    public String getStaff_Pass() {
        return Staff_Pass;
    }

    public void setStaff_Pass(String staff_Pass) {
        Staff_Pass = staff_Pass;
    }

    public int getStaff_Level() {
        return Staff_Level;
    }

    public void setStaff_Level(int staff_Level) {
        Staff_Level = staff_Level;
    }

    public String getStaff_Title() {
        return Staff_Title;
    }

    public void setStaff_Title(String staff_Title) {
        Staff_Title = staff_Title;
    }

    public String getStaff_Pic() {
        return Staff_Pic;
    }

    public void setStaff_Pic(String staff_Pic) {
        Staff_Pic = staff_Pic;
    }

    public String getStaff_Pic_RAW() {
        return Staff_Pic_RAW;
    }

    public void setStaff_Pic_RAW(String staff_Pic_RAW) {
        Staff_Pic_RAW = staff_Pic_RAW;
    }

    public String getStaff_UserRole() {
        return Staff_UserRole;
    }

    public void setStaff_UserRole(String staff_UserRole) {
        Staff_UserRole = staff_UserRole;
    }

    public int getStaff_Priority() {
        return Staff_Priority;
    }

    public void setStaff_Priority(int staff_Priority) {
        Staff_Priority = staff_Priority;
    }

    public int getStaff_UserGroup() {
        return Staff_UserGroup;
    }

    public void setStaff_UserGroup(int staff_UserGroup) {
        Staff_UserGroup = staff_UserGroup;
    }

    public int getStaff_Enable() {
        return Staff_Enable;
    }

    public void setStaff_Enable(int staff_Enable) {
        Staff_Enable = staff_Enable;
    }

    public String getStaff_Note() {
        return Staff_Note;
    }

    public void setStaff_Note(String staff_Note) {
        Staff_Note = staff_Note;
    }
}

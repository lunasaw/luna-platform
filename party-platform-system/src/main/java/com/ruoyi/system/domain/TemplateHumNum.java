package com.ruoyi.system.domain;

public class TemplateHumNum {
    private int countNum;
    private String deptName;
    private String parentDeptName;

    public int getCountNum() {
        return countNum;
    }

    public void setCountNum(int countNum) {
        this.countNum = countNum;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getParentDeptName() {
        return parentDeptName;
    }

    public void setParentDeptName(String parentDeptName) {
        this.parentDeptName = parentDeptName;
    }

    public TemplateHumNum() {
    }

    @Override
    public String toString() {
        return "TemplateHumNum{" +
                "countNum=" + countNum +
                ", deptName='" + deptName + '\'' +
                ", parentDeptName='" + parentDeptName + '\'' +
                '}';
    }
}

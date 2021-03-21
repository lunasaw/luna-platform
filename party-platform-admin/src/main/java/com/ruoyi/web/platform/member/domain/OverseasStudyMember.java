package com.ruoyi.web.platform.member.domain;

import java.util.Date;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 留学归国人员对象 sys_overseas_study_member
 *
 * @author party-platform
 * @date 2020-10-24
 */
@ApiModel("OverseasStudyMember")
public class OverseasStudyMember extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 留学id
     */
    @ApiModelProperty("留学id")
    private Long              overseasId;

    /**
     * 序号
     */
    @ApiModelProperty("序号")
    @Excel(name = "序号")
    private Long              overseasNumber;

    /**
     * 姓名
     */
    @ApiModelProperty("姓名")
    @Excel(name = "姓名")
    private String            overseasCollege;

    /**
     * 性别
     */
    @ApiModelProperty("性别")
    @Excel(name = "性别")
    private String            overseasName;

    /**
     * 民族
     */
    @ApiModelProperty("民族")
    @Excel(name = "民族")
    private String            overseasSex;

    /**
     * 出生年月
     */
    @ApiModelProperty("出生年月")
    @Excel(name = "出生年月", width = 30, dateFormat = "yyyy-MM-dd")
    private Date              overseasBirthday;

    /**
     * 籍贯
     */
    @ApiModelProperty("籍贯")
    @Excel(name = "籍贯")
    private String            overseasNativePlace;

    /**
     * 政治面貌
     */
    @ApiModelProperty("政治面貌")
    @Excel(name = "政治面貌")
    private String            overseasPoliticalOutlook;

    /**
     * 党派及加入时间
     */
    @ApiModelProperty("党派及加入时间")
    @Excel(name = "党派及加入时间")
    private String            overseasPartyJoinTime;

    /**
     * 学历学位
     */
    @ApiModelProperty("学历学位")
    @Excel(name = "学历学位")
    private String            overseasAcademicDegree;

    /**
     * 毕业院校及其专业
     */
    @ApiModelProperty("毕业院校及其专业")
    @Excel(name = "毕业院校及其专业")
    private String            overseasGraduateSchoolMajor;

    /**
     * 参加工作时间
     */
    @ApiModelProperty("参加工作时间")
    @Excel(name = "参加工作时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date              overseasJobStartTime;

    /**
     * 留学起止时间
     */
    @ApiModelProperty("留学起止时间")
    @Excel(name = "留学起止时间")
    private String            overseasStudyBeginEnd;

    /**
     * 留学地点
     */
    @ApiModelProperty("留学地点")
    @Excel(name = "留学地点")
    private String            overseasPlace;

    /**
     * 备注
     */
    @ApiModelProperty("备注")
    @Excel(name = "备注")
    private String            nonPartyRemarks;

    public void setOverseasId(Long overseasId) {
        this.overseasId = overseasId;
    }

    public Long getOverseasId() {
        return overseasId;
    }

    public void setOverseasNumber(Long overseasNumber) {
        this.overseasNumber = overseasNumber;
    }

    public Long getOverseasNumber() {
        return overseasNumber;
    }

    public void setOverseasCollege(String overseasCollege) {
        this.overseasCollege = overseasCollege;
    }

    public String getOverseasCollege() {
        return overseasCollege;
    }

    public void setOverseasName(String overseasName) {
        this.overseasName = overseasName;
    }

    public String getOverseasName() {
        return overseasName;
    }

    public void setOverseasSex(String overseasSex) {
        this.overseasSex = overseasSex;
    }

    public String getOverseasSex() {
        return overseasSex;
    }

    public void setOverseasBirthday(Date overseasBirthday) {
        this.overseasBirthday = overseasBirthday;
    }

    public Date getOverseasBirthday() {
        return overseasBirthday;
    }

    public void setOverseasNativePlace(String overseasNativePlace) {
        this.overseasNativePlace = overseasNativePlace;
    }

    public String getOverseasNativePlace() {
        return overseasNativePlace;
    }

    public void setOverseasPoliticalOutlook(String overseasPoliticalOutlook) {
        this.overseasPoliticalOutlook = overseasPoliticalOutlook;
    }

    public String getOverseasPoliticalOutlook() {
        return overseasPoliticalOutlook;
    }

    public void setOverseasPartyJoinTime(String overseasPartyJoinTime) {
        this.overseasPartyJoinTime = overseasPartyJoinTime;
    }

    public String getOverseasPartyJoinTime() {
        return overseasPartyJoinTime;
    }

    public void setOverseasAcademicDegree(String overseasAcademicDegree) {
        this.overseasAcademicDegree = overseasAcademicDegree;
    }

    public String getOverseasAcademicDegree() {
        return overseasAcademicDegree;
    }

    public void setOverseasGraduateSchoolMajor(String overseasGraduateSchoolMajor) {
        this.overseasGraduateSchoolMajor = overseasGraduateSchoolMajor;
    }

    public String getOverseasGraduateSchoolMajor() {
        return overseasGraduateSchoolMajor;
    }

    public void setOverseasJobStartTime(Date overseasJobStartTime) {
        this.overseasJobStartTime = overseasJobStartTime;
    }

    public Date getOverseasJobStartTime() {
        return overseasJobStartTime;
    }

    public void setOverseasStudyBeginEnd(String overseasStudyBeginEnd) {
        this.overseasStudyBeginEnd = overseasStudyBeginEnd;
    }

    public String getOverseasStudyBeginEnd() {
        return overseasStudyBeginEnd;
    }

    public void setOverseasPlace(String overseasPlace) {
        this.overseasPlace = overseasPlace;
    }

    public String getOverseasPlace() {
        return overseasPlace;
    }

    public void setNonPartyRemarks(String nonPartyRemarks) {
        this.nonPartyRemarks = nonPartyRemarks;
    }

    public String getNonPartyRemarks() {
        return nonPartyRemarks;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("overseasId", getOverseasId())
            .append("overseasNumber", getOverseasNumber())
            .append("overseasCollege", getOverseasCollege())
            .append("overseasName", getOverseasName())
            .append("overseasSex", getOverseasSex())
            .append("overseasBirthday", getOverseasBirthday())
            .append("overseasNativePlace", getOverseasNativePlace())
            .append("overseasPoliticalOutlook", getOverseasPoliticalOutlook())
            .append("overseasPartyJoinTime", getOverseasPartyJoinTime())
            .append("overseasAcademicDegree", getOverseasAcademicDegree())
            .append("overseasGraduateSchoolMajor", getOverseasGraduateSchoolMajor())
            .append("overseasJobStartTime", getOverseasJobStartTime())
            .append("overseasStudyBeginEnd", getOverseasStudyBeginEnd())
            .append("overseasPlace", getOverseasPlace())
            .append("nonPartyRemarks", getNonPartyRemarks())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("createBy", getCreateBy())
            .append("updateBy", getUpdateBy())
            .toString();
    }
}

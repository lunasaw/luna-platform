package com.ruoyi.web.platform.partyInfo.domain;

import java.util.Date;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 党员信息对象 sys_party_info
 *
 * @author party-platform
 * @date 2020-10-10
 */
@ApiModel("PartyInfo")
public class PartyInfoVO extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 党员编号 */
    @ApiModelProperty("党员编号")
    private Long              partyId;

    /** 学号 */
    @ApiModelProperty("学号")
    @Excel(name = "学号")
    private Long              partyStudentNumber;

    /** 姓名 */
    @ApiModelProperty("姓名")
    @Excel(name = "姓名")
    private String            partyName;

    /** 班级 */
    @ApiModelProperty("班级")
    @Excel(name = "班级")
    private String            partyClass;

    /** 性别 */
    @ApiModelProperty("性别")
    @Excel(name = "性别")
    private String            partySex;

    /** 生日 */
    @ApiModelProperty("生日")
    @Excel(name = "生日", width = 30, dateFormat = "yyyy-MM-dd")
    private Date              partyBirthday;

    /** 籍贯 */
    @ApiModelProperty("籍贯")
    @Excel(name = "籍贯")
    private String            partyNativePlace;

    /** 身份证 */
    @ApiModelProperty("身份证")
    @Excel(name = "身份证")
    private String            partyIdcard;

    /** 入党日期 */
    @ApiModelProperty("入党日期")
    @Excel(name = "入党日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date              partyJoinTime;

    /** 入党志愿书 */
    @ApiModelProperty("入党志愿书")
    @Excel(name = "入党志愿书")
    private String            partyJoinApplication;

    /** 预备党员考察表 */
    @ApiModelProperty("预备党员考察表")
    @Excel(name = "预备党员考察表")
    private String            partyInspect;

    /** 转正申请书 */
    @ApiModelProperty("转正申请书")
    @Excel(name = "转正申请书")
    private String            partyFormalApplication;

    /** 思想报告 */
    @ApiModelProperty("思想报告")
    @Excel(name = "思想报告")
    private String            partyThoughtReport;

    /** 学生干部任职情况 */
    @ApiModelProperty("学生干部任职情况")
    @Excel(name = "学生干部任职情况")
    private String            partyStudentPost;

    /** 奖惩情况 */
    @ApiModelProperty("奖惩情况")
    @Excel(name = "奖惩情况")
    private String            partyRewardsPunishments;

    /** 其他 */
    @ApiModelProperty("其他")
    @Excel(name = "其他")
    private String            partyOtherInfo;

    /** 班主任 */
    @ApiModelProperty("班主任")
    @Excel(name = "班主任")
    private String            partyHeadMaster;

    /** 联系方式 */
    @ApiModelProperty("联系方式")
    @Excel(name = "联系方式")
    private String            partyConnect;

    public void setPartyId(Long partyId) {
        this.partyId = partyId;
    }

    public Long getPartyId() {
        return partyId;
    }

    public void setPartyStudentNumber(Long partyStudentNumber) {
        this.partyStudentNumber = partyStudentNumber;
    }

    public Long getPartyStudentNumber() {
        return partyStudentNumber;
    }

    public void setPartyName(String partyName) {
        this.partyName = partyName;
    }

    public String getPartyName() {
        return partyName;
    }

    public void setPartyClass(String partyClass) {
        this.partyClass = partyClass;
    }

    public String getPartyClass() {
        return partyClass;
    }

    public void setPartySex(String partySex) {
        this.partySex = partySex;
    }

    public String getPartySex() {
        return partySex;
    }

    public void setPartyBirthday(Date partyBirthday) {
        this.partyBirthday = partyBirthday;
    }

    public Date getPartyBirthday() {
        return partyBirthday;
    }

    public void setPartyNativePlace(String partyNativePlace) {
        this.partyNativePlace = partyNativePlace;
    }

    public String getPartyNativePlace() {
        return partyNativePlace;
    }

    public void setPartyIdcard(String partyIdcard) {
        this.partyIdcard = partyIdcard;
    }

    public String getPartyIdcard() {
        return partyIdcard;
    }

    public void setPartyJoinTime(Date partyJoinTime) {
        this.partyJoinTime = partyJoinTime;
    }

    public Date getPartyJoinTime() {
        return partyJoinTime;
    }

    public void setPartyJoinApplication(String partyJoinApplication) {
        this.partyJoinApplication = partyJoinApplication;
    }

    public String getPartyJoinApplication() {
        return partyJoinApplication;
    }

    public void setPartyInspect(String partyInspect) {
        this.partyInspect = partyInspect;
    }

    public String getPartyInspect() {
        return partyInspect;
    }

    public void setPartyFormalApplication(String partyFormalApplication) {
        this.partyFormalApplication = partyFormalApplication;
    }

    public String getPartyFormalApplication() {
        return partyFormalApplication;
    }

    public void setPartyThoughtReport(String partyThoughtReport) {
        this.partyThoughtReport = partyThoughtReport;
    }

    public String getPartyThoughtReport() {
        return partyThoughtReport;
    }

    public void setPartyStudentPost(String partyStudentPost) {
        this.partyStudentPost = partyStudentPost;
    }

    public String getPartyStudentPost() {
        return partyStudentPost;
    }

    public void setPartyRewardsPunishments(String partyRewardsPunishments) {
        this.partyRewardsPunishments = partyRewardsPunishments;
    }

    public String getPartyRewardsPunishments() {
        return partyRewardsPunishments;
    }

    public void setPartyOtherInfo(String partyOtherInfo) {
        this.partyOtherInfo = partyOtherInfo;
    }

    public String getPartyOtherInfo() {
        return partyOtherInfo;
    }

    public void setPartyHeadMaster(String partyHeadMaster) {
        this.partyHeadMaster = partyHeadMaster;
    }

    public String getPartyHeadMaster() {
        return partyHeadMaster;
    }

    public void setPartyConnect(String partyConnect) {
        this.partyConnect = partyConnect;
    }

    public String getPartyConnect() {
        return partyConnect;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("partyId", getPartyId())
            .append("partyStudentNumber", getPartyStudentNumber())
            .append("partyName", getPartyName())
            .append("partyClass", getPartyClass())
            .append("partySex", getPartySex())
            .append("partyBirthday", getPartyBirthday())
            .append("partyNativePlace", getPartyNativePlace())
            .append("partyIdcard", getPartyIdcard())
            .append("partyJoinTime", getPartyJoinTime())
            .append("partyJoinApplication", getPartyJoinApplication())
            .append("partyInspect", getPartyInspect())
            .append("partyFormalApplication", getPartyFormalApplication())
            .append("partyThoughtReport", getPartyThoughtReport())
            .append("partyStudentPost", getPartyStudentPost())
            .append("partyRewardsPunishments", getPartyRewardsPunishments())
            .append("partyOtherInfo", getPartyOtherInfo())
            .append("partyHeadMaster", getPartyHeadMaster())
            .append("partyConnect", getPartyConnect())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("createBy", getCreateBy())
            .append("updateBy", getUpdateBy())
            .append("remark", getRemark())
            .toString();
    }
}

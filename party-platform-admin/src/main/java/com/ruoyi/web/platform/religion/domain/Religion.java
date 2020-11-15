package com.ruoyi.web.platform.religion.domain;

import java.util.Date;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 留学人员对象 sys_religion
 *
 * @author party-platform
 * @date 2020-11-15
 */
@ApiModel("Religion")
public class Religion extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 留学人员id
     */
    @ApiModelProperty("留学人员id")
    private Long religionId;

    /**
     * 序号
     */
    @ApiModelProperty("序号")
    @Excel(name = "序号")
    private Long religionNumber;

    /**
     * 学院
     */
    @ApiModelProperty("学院")
    @Excel(name = "学院")
    private String religionCollege;

    /**
     * 姓名
     */
    @ApiModelProperty("姓名")
    @Excel(name = "姓名")
    private String religionName;

    /**
     * 性别
     */
    @ApiModelProperty("性别")
    @Excel(name = "性别")
    private String religionSex;

    /**
     * 民族
     */
    @ApiModelProperty("民族")
    @Excel(name = "民族")
    private String religionNation;

    /**
     * 出生年月
     */
    @ApiModelProperty("出生年月")
    @Excel(name = "出生年月", width = 30, dateFormat = "yyyy-MM-dd")
    private Date religionBirthday;

    /**
     * 籍贯
     */
    @ApiModelProperty("籍贯")
    @Excel(name = "籍贯")
    private String religionNativePlace;

    /**
     * 入党时间
     */
    @ApiModelProperty("入党时间")
    @Excel(name = "入党时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date religionPartyJoinTime;

    /**
     * 宗教类型
     */
    @ApiModelProperty("宗教类型")
    @Excel(name = "宗教类型")
    private String religionType;

    /**
     * 宗教活动场所
     */
    @ApiModelProperty("宗教活动场所")
    @Excel(name = "宗教活动场所")
    private String religiousServicesFacilities;

    /**
     * 信教时间
     */
    @ApiModelProperty("信教时间")
    @Excel(name = "信教时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date religionJoin;

    /**
     * 联系方式
     */
    @ApiModelProperty("联系方式")
    @Excel(name = "联系方式")
    private String religionContactInformation;

    /**
     * 备注
     */
    @ApiModelProperty("备注")
    @Excel(name = "备注")
    private String religionRemarks;


    public void setReligionId(Long religionId) {
        this.religionId = religionId;
    }

    public Long getReligionId() {
        return religionId;
    }

    public void setReligionNumber(Long religionNumber) {
        this.religionNumber = religionNumber;
    }

    public Long getReligionNumber() {
        return religionNumber;
    }

    public void setReligionCollege(String religionCollege) {
        this.religionCollege = religionCollege;
    }

    public String getReligionCollege() {
        return religionCollege;
    }

    public void setReligionName(String religionName) {
        this.religionName = religionName;
    }

    public String getReligionName() {
        return religionName;
    }

    public void setReligionSex(String religionSex) {
        this.religionSex = religionSex;
    }

    public String getReligionSex() {
        return religionSex;
    }

    public void setReligionNation(String religionNation) {
        this.religionNation = religionNation;
    }

    public String getReligionNation() {
        return religionNation;
    }

    public void setReligionBirthday(Date religionBirthday) {
        this.religionBirthday = religionBirthday;
    }

    public Date getReligionBirthday() {
        return religionBirthday;
    }

    public void setReligionNativePlace(String religionNativePlace) {
        this.religionNativePlace = religionNativePlace;
    }

    public String getReligionNativePlace() {
        return religionNativePlace;
    }

    public void setReligionPartyJoinTime(Date religionPartyJoinTime) {
        this.religionPartyJoinTime = religionPartyJoinTime;
    }

    public Date getReligionPartyJoinTime() {
        return religionPartyJoinTime;
    }

    public void setReligionType(String religionType) {
        this.religionType = religionType;
    }

    public String getReligionType() {
        return religionType;
    }

    public void setReligiousServicesFacilities(String religiousServicesFacilities) {
        this.religiousServicesFacilities = religiousServicesFacilities;
    }

    public String getReligiousServicesFacilities() {
        return religiousServicesFacilities;
    }

    public void setReligionJoin(Date religionJoin) {
        this.religionJoin = religionJoin;
    }

    public Date getReligionJoin() {
        return religionJoin;
    }

    public void setReligionContactInformation(String religionContactInformation) {
        this.religionContactInformation = religionContactInformation;
    }

    public String getReligionContactInformation() {
        return religionContactInformation;
    }

    public void setReligionRemarks(String religionRemarks) {
        this.religionRemarks = religionRemarks;
    }

    public String getReligionRemarks() {
        return religionRemarks;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("religionId", getReligionId())
                .append("religionNumber", getReligionNumber())
                .append("religionCollege", getReligionCollege())
                .append("religionName", getReligionName())
                .append("religionSex", getReligionSex())
                .append("religionNation", getReligionNation())
                .append("religionBirthday", getReligionBirthday())
                .append("religionNativePlace", getReligionNativePlace())
                .append("religionPartyJoinTime", getReligionPartyJoinTime())
                .append("religionType", getReligionType())
                .append("religiousServicesFacilities", getReligiousServicesFacilities())
                .append("religionJoin", getReligionJoin())
                .append("religionContactInformation", getReligionContactInformation())
                .append("religionRemarks", getReligionRemarks())
                .append("createTime", getCreateTime())
                .append("updateTime", getUpdateTime())
                .append("createBy", getCreateBy())
                .append("updateBy", getUpdateBy())
                .toString();
    }
}

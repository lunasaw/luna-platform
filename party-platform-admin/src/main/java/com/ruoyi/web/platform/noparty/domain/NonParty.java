package com.ruoyi.web.platform.noparty.domain;

import java.util.Date;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 无党派人士对象 sys_non_party
 *
 * @author party-platform
 * @date 2020-10-24
 */
@ApiModel("NonParty")
public class NonParty extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 无党派人士id
     */
    @ApiModelProperty("无党派人士id")
    private Long nonPartyId;

    /**
     * 序号
     */
    @ApiModelProperty("序号")
    @Excel(name = "序号")
    private Long nonPartyNumber;

    /**
     * 学院
     */
    @ApiModelProperty("学院")
    @Excel(name = "学院")
    private String nonPartyCollege;

    /**
     * 姓名
     */
    @ApiModelProperty("姓名")
    @Excel(name = "姓名")
    private String nonPartyName;

    /**
     * 籍贯
     */
    @ApiModelProperty("籍贯")
    @Excel(name = "籍贯")
    private String nonPartySex;

    /**
     * 民族
     */
    @ApiModelProperty("民族")
    @Excel(name = "民族")
    private String nonPartyNation;

    /**
     * 出生年月
     */
    @ApiModelProperty("出生年月")
    @Excel(name = "出生年月", width = 30, dateFormat = "yyyy-MM-dd")
    private Date nonPartyBirthday;

    /**
     * 现任行政职务
     */
    @ApiModelProperty("现任行政职务")
    @Excel(name = "现任行政职务")
    private String nonPartyCurrentAdministrativePosition;

    /**
     * 职称
     */
    @ApiModelProperty("职称")
    @Excel(name = "职称")
    private String nonPartyTitle;

    /**
     * 学历职位
     */
    @ApiModelProperty("学历职位")
    @Excel(name = "学历职位")
    private String nonPartyAcademicDegree;

    /**
     * 毕业院校
     */
    @ApiModelProperty("毕业院校")
    @Excel(name = "毕业院校")
    private String nonPartyGraduateSchoolMajor;

    /**
     * 联系方式
     */
    @ApiModelProperty("联系方式")
    @Excel(name = "联系方式")
    private String nonPartyContactInformation;

    /**
     * 备注
     */
    @ApiModelProperty("备注")
    @Excel(name = "备注")
    private String nonPartyRemarks;

    public void setNonPartyId(Long nonPartyId) {
        this.nonPartyId = nonPartyId;
    }

    public Long getNonPartyId() {
        return nonPartyId;
    }

    public void setNonPartyNumber(Long nonPartyNumber) {
        this.nonPartyNumber = nonPartyNumber;
    }

    public Long getNonPartyNumber() {
        return nonPartyNumber;
    }

    public void setNonPartyCollege(String nonPartyCollege) {
        this.nonPartyCollege = nonPartyCollege;
    }

    public String getNonPartyCollege() {
        return nonPartyCollege;
    }

    public void setNonPartyName(String nonPartyName) {
        this.nonPartyName = nonPartyName;
    }

    public String getNonPartyName() {
        return nonPartyName;
    }

    public void setNonPartySex(String nonPartySex) {
        this.nonPartySex = nonPartySex;
    }

    public String getNonPartySex() {
        return nonPartySex;
    }

    public void setNonPartyNation(String nonPartyNation) {
        this.nonPartyNation = nonPartyNation;
    }

    public String getNonPartyNation() {
        return nonPartyNation;
    }

    public void setNonPartyBirthday(Date nonPartyBirthday) {
        this.nonPartyBirthday = nonPartyBirthday;
    }

    public Date getNonPartyBirthday() {
        return nonPartyBirthday;
    }

    public void setNonPartyCurrentAdministrativePosition(String nonPartyCurrentAdministrativePosition) {
        this.nonPartyCurrentAdministrativePosition = nonPartyCurrentAdministrativePosition;
    }

    public String getNonPartyCurrentAdministrativePosition() {
        return nonPartyCurrentAdministrativePosition;
    }

    public void setNonPartyTitle(String nonPartyTitle) {
        this.nonPartyTitle = nonPartyTitle;
    }

    public String getNonPartyTitle() {
        return nonPartyTitle;
    }

    public void setNonPartyAcademicDegree(String nonPartyAcademicDegree) {
        this.nonPartyAcademicDegree = nonPartyAcademicDegree;
    }

    public String getNonPartyAcademicDegree() {
        return nonPartyAcademicDegree;
    }

    public void setNonPartyGraduateSchoolMajor(String nonPartyGraduateSchoolMajor) {
        this.nonPartyGraduateSchoolMajor = nonPartyGraduateSchoolMajor;
    }

    public String getNonPartyGraduateSchoolMajor() {
        return nonPartyGraduateSchoolMajor;
    }

    public void setNonPartyContactInformation(String nonPartyContactInformation) {
        this.nonPartyContactInformation = nonPartyContactInformation;
    }

    public String getNonPartyContactInformation() {
        return nonPartyContactInformation;
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
                .append("nonPartyId", getNonPartyId())
                .append("nonPartyNumber", getNonPartyNumber())
                .append("nonPartyCollege", getNonPartyCollege())
                .append("nonPartyName", getNonPartyName())
                .append("nonPartySex", getNonPartySex())
                .append("nonPartyNation", getNonPartyNation())
                .append("nonPartyBirthday", getNonPartyBirthday())
                .append("nonPartyCurrentAdministrativePosition", getNonPartyCurrentAdministrativePosition())
                .append("nonPartyTitle", getNonPartyTitle())
                .append("nonPartyAcademicDegree", getNonPartyAcademicDegree())
                .append("nonPartyGraduateSchoolMajor", getNonPartyGraduateSchoolMajor())
                .append("nonPartyContactInformation", getNonPartyContactInformation())
                .append("nonPartyRemarks", getNonPartyRemarks())
                .append("createTime", getCreateTime())
                .append("updateTime", getUpdateTime())
                .append("createBy", getCreateBy())
                .append("updateBy", getUpdateBy())
                .toString();
    }
}

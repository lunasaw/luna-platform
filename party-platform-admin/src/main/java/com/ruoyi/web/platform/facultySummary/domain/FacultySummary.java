package com.ruoyi.web.platform.facultySummary.domain;

import java.math.BigDecimal;
import java.util.Date;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 教职工汇总对象 sys_faculty_summary
 *
 * @author party-platform
 * @date 2020-10-16
 */
@ApiModel("FacultySummary")
public class FacultySummary extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 教职工总表id */
    @ApiModelProperty("教职工总表id")
    private Long              facultyId;

    /** 序号 */
    @ApiModelProperty("序号")
    @Excel(name = "序号")
    private Long              facultyNum;

    /** 姓名 */
    @ApiModelProperty("姓名")
    @Excel(name = "姓名")
    private String            facultyName;

    /** 性别 */
    @ApiModelProperty("性别")
    @Excel(name = "性别")
    private String            facultySex;

    /** 民族 */
    @ApiModelProperty("民族")
    @Excel(name = "民族")
    private String            facultyNation;

    /** 出生年月 */
    @ApiModelProperty("出生年月")
    @Excel(name = "出生年月", width = 30, dateFormat = "yyyy-MM-dd")
    private Date              facultyBirthday;

    /** 入党时间 */
    @ApiModelProperty("入党时间")
    @Excel(name = "入党时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date              facultyTimeJoinPart;

    /** 所在支部 */
    @ApiModelProperty("所在支部")
    @Excel(name = "所在支部")
    private String            facultyBranchNumber;

    /** 月交纳党费金额 */
    @ApiModelProperty("月交纳党费金额")
    @Excel(name = "月交纳党费金额")
    private BigDecimal        facultyPay;

    /** 籍贯 */
    @ApiModelProperty("籍贯")
    @Excel(name = "籍贯")
    private String            facultyNativePlace;

    /** 现任行政职务 */
    @ApiModelProperty("现任行政职务")
    @Excel(name = "现任行政职务")
    private String            facultyCurrentAdministrativePosition;

    /** 职称 */
    @ApiModelProperty("职称")
    @Excel(name = "职称")
    private String            facultyTitle;

    /** 社会任职情况 */
    @ApiModelProperty("社会任职情况")
    @Excel(name = "社会任职情况")
    private String            facultySocialService;

    /** 学历 学位 */
    @ApiModelProperty("学历  学位")
    @Excel(name = "学历  学位")
    private String            facultyAcademicDegree;

    /** 毕业院校及专业 */
    @ApiModelProperty("毕业院校及专业")
    @Excel(name = "毕业院校及专业")
    private String            facultyGraduateSchoolAndMajor;

    /** 参加工作时间 */
    @ApiModelProperty("参加工作时间")
    @Excel(name = "参加工作时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date              facultyTimeWork;

    /** 留学开始时间 */
    @ApiModelProperty("留学开始时间")
    @Excel(name = "留学开始时间")
    private String            facultyOverseaStudyBeginAndEnd;

    /** 身份证 */
    @ApiModelProperty("身份证")
    @Excel(name = "身份证")
    private String            facultyIdCard;

    /** 支委会职务 */
    @ApiModelProperty("支委会职务")
    @Excel(name = "支委会职务")
    private String            facultyBranchPosition;

    /** 婚姻状况 */
    @ApiModelProperty("婚姻状况")
    @Excel(name = "婚姻状况")
    private String            facultyMaritalStatus;

    /** 联系方式 */
    @ApiModelProperty("联系方式")
    @Excel(name = "联系方式")
    private String            facultyPhoneNumber;

    /** 备注 */
    @ApiModelProperty("备注")
    @Excel(name = "备注")
    private String            facultyRemarks;

    public void setFacultyId(Long facultyId) {
        this.facultyId = facultyId;
    }

    public Long getFacultyId() {
        return facultyId;
    }

    public void setFacultyNum(Long facultyNum) {
        this.facultyNum = facultyNum;
    }

    public Long getFacultyNum() {
        return facultyNum;
    }

    public void setFacultyName(String facultyName) {
        this.facultyName = facultyName;
    }

    public String getFacultyName() {
        return facultyName;
    }

    public void setFacultySex(String facultySex) {
        this.facultySex = facultySex;
    }

    public String getFacultySex() {
        return facultySex;
    }

    public void setFacultyNation(String facultyNation) {
        this.facultyNation = facultyNation;
    }

    public String getFacultyNation() {
        return facultyNation;
    }

    public void setFacultyBirthday(Date facultyBirthday) {
        this.facultyBirthday = facultyBirthday;
    }

    public Date getFacultyBirthday() {
        return facultyBirthday;
    }

    public void setFacultyTimeJoinPart(Date facultyTimeJoinPart) {
        this.facultyTimeJoinPart = facultyTimeJoinPart;
    }

    public Date getFacultyTimeJoinPart() {
        return facultyTimeJoinPart;
    }

    public void setFacultyBranchNumber(String facultyBranchNumber) {
        this.facultyBranchNumber = facultyBranchNumber;
    }

    public String getFacultyBranchNumber() {
        return facultyBranchNumber;
    }

    public void setFacultyPay(BigDecimal facultyPay) {
        this.facultyPay = facultyPay;
    }

    public BigDecimal getFacultyPay() {
        return facultyPay;
    }

    public void setFacultyNativePlace(String facultyNativePlace) {
        this.facultyNativePlace = facultyNativePlace;
    }

    public String getFacultyNativePlace() {
        return facultyNativePlace;
    }

    public void setFacultyCurrentAdministrativePosition(String facultyCurrentAdministrativePosition) {
        this.facultyCurrentAdministrativePosition = facultyCurrentAdministrativePosition;
    }

    public String getFacultyCurrentAdministrativePosition() {
        return facultyCurrentAdministrativePosition;
    }

    public void setFacultyTitle(String facultyTitle) {
        this.facultyTitle = facultyTitle;
    }

    public String getFacultyTitle() {
        return facultyTitle;
    }

    public void setFacultySocialService(String facultySocialService) {
        this.facultySocialService = facultySocialService;
    }

    public String getFacultySocialService() {
        return facultySocialService;
    }

    public void setFacultyAcademicDegree(String facultyAcademicDegree) {
        this.facultyAcademicDegree = facultyAcademicDegree;
    }

    public String getFacultyAcademicDegree() {
        return facultyAcademicDegree;
    }

    public void setFacultyGraduateSchoolAndMajor(String facultyGraduateSchoolAndMajor) {
        this.facultyGraduateSchoolAndMajor = facultyGraduateSchoolAndMajor;
    }

    public String getFacultyGraduateSchoolAndMajor() {
        return facultyGraduateSchoolAndMajor;
    }

    public void setFacultyTimeWork(Date facultyTimeWork) {
        this.facultyTimeWork = facultyTimeWork;
    }

    public Date getFacultyTimeWork() {
        return facultyTimeWork;
    }

    public void setFacultyOverseaStudyBeginAndEnd(String facultyOverseaStudyBeginAndEnd) {
        this.facultyOverseaStudyBeginAndEnd = facultyOverseaStudyBeginAndEnd;
    }

    public String getFacultyOverseaStudyBeginAndEnd() {
        return facultyOverseaStudyBeginAndEnd;
    }

    public void setFacultyIdCard(String facultyIdCard) {
        this.facultyIdCard = facultyIdCard;
    }

    public String getFacultyIdCard() {
        return facultyIdCard;
    }

    public void setFacultyBranchPosition(String facultyBranchPosition) {
        this.facultyBranchPosition = facultyBranchPosition;
    }

    public String getFacultyBranchPosition() {
        return facultyBranchPosition;
    }

    public void setFacultyMaritalStatus(String facultyMaritalStatus) {
        this.facultyMaritalStatus = facultyMaritalStatus;
    }

    public String getFacultyMaritalStatus() {
        return facultyMaritalStatus;
    }

    public void setFacultyPhoneNumber(String facultyPhoneNumber) {
        this.facultyPhoneNumber = facultyPhoneNumber;
    }

    public String getFacultyPhoneNumber() {
        return facultyPhoneNumber;
    }

    public void setFacultyRemarks(String facultyRemarks) {
        this.facultyRemarks = facultyRemarks;
    }

    public String getFacultyRemarks() {
        return facultyRemarks;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("facultyId", getFacultyId())
            .append("facultyNum", getFacultyNum())
            .append("facultyName", getFacultyName())
            .append("facultySex", getFacultySex())
            .append("facultyNation", getFacultyNation())
            .append("facultyBirthday", getFacultyBirthday())
            .append("facultyTimeJoinPart", getFacultyTimeJoinPart())
            .append("facultyBranchNumber", getFacultyBranchNumber())
            .append("facultyPay", getFacultyPay())
            .append("facultyNativePlace", getFacultyNativePlace())
            .append("facultyCurrentAdministrativePosition", getFacultyCurrentAdministrativePosition())
            .append("facultyTitle", getFacultyTitle())
            .append("facultySocialService", getFacultySocialService())
            .append("facultyAcademicDegree", getFacultyAcademicDegree())
            .append("facultyGraduateSchoolAndMajor", getFacultyGraduateSchoolAndMajor())
            .append("facultyTimeWork", getFacultyTimeWork())
            .append("facultyOverseaStudyBeginAndEnd", getFacultyOverseaStudyBeginAndEnd())
            .append("facultyIdCard", getFacultyIdCard())
            .append("facultyBranchPosition", getFacultyBranchPosition())
            .append("facultyMaritalStatus", getFacultyMaritalStatus())
            .append("facultyPhoneNumber", getFacultyPhoneNumber())
            .append("facultyRemarks", getFacultyRemarks())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("createBy", getCreateBy())
            .append("updateBy", getUpdateBy())
            .toString();
    }
}

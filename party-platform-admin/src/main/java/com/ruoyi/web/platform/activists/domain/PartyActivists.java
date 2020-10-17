package com.ruoyi.web.platform.activists.domain;

import java.util.Date;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 入党积极分子对象 sys_party_activists
 *
 * @author party-platform
 * @date 2020-10-17
 */
@ApiModel("PartyActivists")
public class PartyActivists extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 入党积极分子id */
    @ApiModelProperty("入党积极分子id")
    private Long              partyActivistsStuId;

    /** 学号 */
    @ApiModelProperty("学号")
    @Excel(name = "学号")
    private Long              partyActivistsStuNum;

    /** 姓名 */
    @ApiModelProperty("姓名")
    @Excel(name = "姓名")
    private String            partyActivistsName;

    /** 班级 */
    @ApiModelProperty("班级")
    @Excel(name = "班级")
    private String            partyActivistsClass;

    /** 性别 */
    @ApiModelProperty("性别")
    @Excel(name = "性别")
    private String            partyActivistsSex;

    /** 民族 */
    @ApiModelProperty("民族")
    @Excel(name = "民族")
    private String            partyActivistsNation;

    /** 出生年月 */
    @ApiModelProperty("出生年月")
    @Excel(name = "出生年月", width = 30, dateFormat = "yyyy-MM-dd")
    private Date              partyActivistsBirthday;

    /** 籍贯 */
    @ApiModelProperty("籍贯")
    @Excel(name = "籍贯")
    private String            partyActivistsNativePlace;

    /** 入党申请书时间 */
    @ApiModelProperty("入党申请书时间")
    @Excel(name = "入党申请书时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date              partyActivistsApplicationForPartyMembershipTime;

    /** 自传 */
    @ApiModelProperty("自传")
    @Excel(name = "自传")
    private String            partyActivistsAutobiography;

    /** 《团员推优审批表》 */
    @ApiModelProperty("《团员推优审批表》")
    @Excel(name = "《团员推优审批表》")
    private String            partyActivistsApprovalForm;

    /** 确立积极分子日期 */
    @ApiModelProperty("确立积极分子日期")
    @Excel(name = "确立积极分子日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date              partyActivistsEstablishmentDate;

    /** 党校结业证书日期 */
    @ApiModelProperty("党校结业证书日期")
    @Excel(name = "党校结业证书日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date              partyActivistsClosingTime;

    /** 思想汇报 */
    @ApiModelProperty("思想汇报")
    @Excel(name = "思想汇报")
    private String            partyActivistsThoughtReport;

    /** 积极分子考察表 */
    @ApiModelProperty("积极分子考察表")
    @Excel(name = "积极分子考察表")
    private String            partyActivistsSurveyTable;

    /** 确立发展对象日期 */
    @ApiModelProperty("确立发展对象日期")
    @Excel(name = "确立发展对象日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date              partyActivistsEstablishmentDateDev;

    /** 学生干部任职情况 */
    @ApiModelProperty("学生干部任职情况")
    @Excel(name = "学生干部任职情况")
    private String            partyActivistsPositionStuCadres;

    /** 奖惩情况 */
    @ApiModelProperty("奖惩情况")
    @Excel(name = "奖惩情况")
    private String            partyActivistsRewardsPunishments;

    /** 班主任 */
    @ApiModelProperty("班主任")
    @Excel(name = "班主任")
    private String            partyActivistsHeadmaster;

    /** 联系方式 */
    @ApiModelProperty("联系方式")
    @Excel(name = "联系方式")
    private String            partyActivistsContactInformation;

    /** 备注 */
    @ApiModelProperty("备注")
    @Excel(name = "备注")
    private String            partyActivistsRemarks;

    public void setPartyActivistsStuId(Long partyActivistsStuId) {
        this.partyActivistsStuId = partyActivistsStuId;
    }

    public Long getPartyActivistsStuId() {
        return partyActivistsStuId;
    }

    public void setPartyActivistsStuNum(Long partyActivistsStuNum) {
        this.partyActivistsStuNum = partyActivistsStuNum;
    }

    public Long getPartyActivistsStuNum() {
        return partyActivistsStuNum;
    }

    public void setPartyActivistsName(String partyActivistsName) {
        this.partyActivistsName = partyActivistsName;
    }

    public String getPartyActivistsName() {
        return partyActivistsName;
    }

    public void setPartyActivistsClass(String partyActivistsClass) {
        this.partyActivistsClass = partyActivistsClass;
    }

    public String getPartyActivistsClass() {
        return partyActivistsClass;
    }

    public void setPartyActivistsSex(String partyActivistsSex) {
        this.partyActivistsSex = partyActivistsSex;
    }

    public String getPartyActivistsSex() {
        return partyActivistsSex;
    }

    public void setPartyActivistsNation(String partyActivistsNation) {
        this.partyActivistsNation = partyActivistsNation;
    }

    public String getPartyActivistsNation() {
        return partyActivistsNation;
    }

    public void setPartyActivistsBirthday(Date partyActivistsBirthday) {
        this.partyActivistsBirthday = partyActivistsBirthday;
    }

    public Date getPartyActivistsBirthday() {
        return partyActivistsBirthday;
    }

    public void setPartyActivistsNativePlace(String partyActivistsNativePlace) {
        this.partyActivistsNativePlace = partyActivistsNativePlace;
    }

    public String getPartyActivistsNativePlace() {
        return partyActivistsNativePlace;
    }

    public void
        setPartyActivistsApplicationForPartyMembershipTime(Date partyActivistsApplicationForPartyMembershipTime) {
        this.partyActivistsApplicationForPartyMembershipTime = partyActivistsApplicationForPartyMembershipTime;
    }

    public Date getPartyActivistsApplicationForPartyMembershipTime() {
        return partyActivistsApplicationForPartyMembershipTime;
    }

    public void setPartyActivistsAutobiography(String partyActivistsAutobiography) {
        this.partyActivistsAutobiography = partyActivistsAutobiography;
    }

    public String getPartyActivistsAutobiography() {
        return partyActivistsAutobiography;
    }

    public void setPartyActivistsApprovalForm(String partyActivistsApprovalForm) {
        this.partyActivistsApprovalForm = partyActivistsApprovalForm;
    }

    public String getPartyActivistsApprovalForm() {
        return partyActivistsApprovalForm;
    }

    public void setPartyActivistsEstablishmentDate(Date partyActivistsEstablishmentDate) {
        this.partyActivistsEstablishmentDate = partyActivistsEstablishmentDate;
    }

    public Date getPartyActivistsEstablishmentDate() {
        return partyActivistsEstablishmentDate;
    }

    public void setPartyActivistsClosingTime(Date partyActivistsClosingTime) {
        this.partyActivistsClosingTime = partyActivistsClosingTime;
    }

    public Date getPartyActivistsClosingTime() {
        return partyActivistsClosingTime;
    }

    public void setPartyActivistsThoughtReport(String partyActivistsThoughtReport) {
        this.partyActivistsThoughtReport = partyActivistsThoughtReport;
    }

    public String getPartyActivistsThoughtReport() {
        return partyActivistsThoughtReport;
    }

    public void setPartyActivistsSurveyTable(String partyActivistsSurveyTable) {
        this.partyActivistsSurveyTable = partyActivistsSurveyTable;
    }

    public String getPartyActivistsSurveyTable() {
        return partyActivistsSurveyTable;
    }

    public void setPartyActivistsEstablishmentDateDev(Date partyActivistsEstablishmentDateDev) {
        this.partyActivistsEstablishmentDateDev = partyActivistsEstablishmentDateDev;
    }

    public Date getPartyActivistsEstablishmentDateDev() {
        return partyActivistsEstablishmentDateDev;
    }

    public void setPartyActivistsPositionStuCadres(String partyActivistsPositionStuCadres) {
        this.partyActivistsPositionStuCadres = partyActivistsPositionStuCadres;
    }

    public String getPartyActivistsPositionStuCadres() {
        return partyActivistsPositionStuCadres;
    }

    public void setPartyActivistsRewardsPunishments(String partyActivistsRewardsPunishments) {
        this.partyActivistsRewardsPunishments = partyActivistsRewardsPunishments;
    }

    public String getPartyActivistsRewardsPunishments() {
        return partyActivistsRewardsPunishments;
    }

    public void setPartyActivistsHeadmaster(String partyActivistsHeadmaster) {
        this.partyActivistsHeadmaster = partyActivistsHeadmaster;
    }

    public String getPartyActivistsHeadmaster() {
        return partyActivistsHeadmaster;
    }

    public void setPartyActivistsContactInformation(String partyActivistsContactInformation) {
        this.partyActivistsContactInformation = partyActivistsContactInformation;
    }

    public String getPartyActivistsContactInformation() {
        return partyActivistsContactInformation;
    }

    public void setPartyActivistsRemarks(String partyActivistsRemarks) {
        this.partyActivistsRemarks = partyActivistsRemarks;
    }

    public String getPartyActivistsRemarks() {
        return partyActivistsRemarks;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("partyActivistsStuId", getPartyActivistsStuId())
            .append("partyActivistsStuNum", getPartyActivistsStuNum())
            .append("partyActivistsName", getPartyActivistsName())
            .append("partyActivistsClass", getPartyActivistsClass())
            .append("partyActivistsSex", getPartyActivistsSex())
            .append("partyActivistsNation", getPartyActivistsNation())
            .append("partyActivistsBirthday", getPartyActivistsBirthday())
            .append("partyActivistsNativePlace", getPartyActivistsNativePlace())
            .append("partyActivistsApplicationForPartyMembershipTime",
                getPartyActivistsApplicationForPartyMembershipTime())
            .append("partyActivistsAutobiography", getPartyActivistsAutobiography())
            .append("partyActivistsApprovalForm", getPartyActivistsApprovalForm())
            .append("partyActivistsEstablishmentDate", getPartyActivistsEstablishmentDate())
            .append("partyActivistsClosingTime", getPartyActivistsClosingTime())
            .append("partyActivistsThoughtReport", getPartyActivistsThoughtReport())
            .append("partyActivistsSurveyTable", getPartyActivistsSurveyTable())
            .append("partyActivistsEstablishmentDateDev", getPartyActivistsEstablishmentDateDev())
            .append("partyActivistsPositionStuCadres", getPartyActivistsPositionStuCadres())
            .append("partyActivistsRewardsPunishments", getPartyActivistsRewardsPunishments())
            .append("partyActivistsHeadmaster", getPartyActivistsHeadmaster())
            .append("partyActivistsContactInformation", getPartyActivistsContactInformation())
            .append("partyActivistsRemarks", getPartyActivistsRemarks())
            .toString();
    }
}

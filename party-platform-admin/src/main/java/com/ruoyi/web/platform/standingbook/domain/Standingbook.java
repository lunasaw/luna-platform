package com.ruoyi.web.platform.standingbook.domain;

import java.util.Date;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 台账对象 sys_standingbook
 *
 * @author party-platform
 * @date 2020-10-24
 */
@ApiModel("Standingbook")
public class Standingbook extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 台账id */
    @ApiModelProperty("台账id")
    private Long standingbookId;

    /** 序号 */
    @ApiModelProperty("序号")
    @Excel(name = "序号")
    private Long standingbookNumber;

    /** 姓名 */
    @ApiModelProperty("姓名")
    @Excel(name = "姓名")
    private String standingbookName;

    /** 性别 */
    @ApiModelProperty("性别")
    @Excel(name = "性别")
    private String standingbookSex;

    /** 民族 */
    @ApiModelProperty("民族")
    @Excel(name = "民族")
    private String standingbookNation;

    /** 出生日期 */
    @ApiModelProperty("出生日期")
    @Excel(name = "出生日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date standingbookBirthday;

    /** 入党时间 */
    @ApiModelProperty("入党时间")
    @Excel(name = "入党时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date standingbookTimeJoinPart;

    /** 所在支部 */
    @ApiModelProperty("所在支部")
    @Excel(name = "所在支部")
    private String standingbookBranchNumber;

    /** 党员档案管理 */
    @ApiModelProperty("党员档案管理")
    @Excel(name = "党员档案管理")
    private String standingbookFilesPartyMembwes;

    /** 奖惩名称 */
    @ApiModelProperty("奖惩名称")
    @Excel(name = "奖惩名称")
    private String standingbookRAndPName;

    /** 奖惩说明 */
    @ApiModelProperty("奖惩说明")
    @Excel(name = "奖惩说明")
    private String standingbookRAndPExplain;

    /** 奖惩原因 */
    @ApiModelProperty("奖惩原因")
    @Excel(name = "奖惩原因")
    private String standingbookRAndPReason;

    /** 批准日期 */
    @ApiModelProperty("批准日期")
    @Excel(name = "批准日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date standingbookApprovalDate;

    /** 撤销日期 */
    @ApiModelProperty("撤销日期")
    @Excel(name = "撤销日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date standingbookRevocationDate;

    /** 流入情况 */
    @ApiModelProperty("流入情况")
    @Excel(name = "流入情况")
    private String standingbookInflowUnit;

    /** 流入单位联系人及联系方式 */
    @ApiModelProperty("流入单位联系人及联系方式")
    @Excel(name = "流入单位联系人及联系方式")
    private String standingbookIAndC;

    /** 流出日期 */
    @ApiModelProperty("流出日期")
    @Excel(name = "流出日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date standingbookOutflowDate;

    /** 流出原因 */
    @ApiModelProperty("流出原因")
    @Excel(name = "流出原因")
    private String standingbookOutflowReason;

    /** 出国情况 */
    @ApiModelProperty("出国情况")
    @Excel(name = "出国情况")
    private String standingbookAbroad;

    /** 联系方式 */
    @ApiModelProperty("联系方式")
    @Excel(name = "联系方式")
    private String phoneNumber;

    /** 备注 */
    @ApiModelProperty("备注")
    @Excel(name = "备注")
    private String remarks;

                        public void setStandingbookId(Long standingbookId)
            {
            this.standingbookId = standingbookId;
            }

    public Long getStandingbookId()
            {
            return standingbookId;
            }
                            public void setStandingbookNumber(Long standingbookNumber)
            {
            this.standingbookNumber = standingbookNumber;
            }

    public Long getStandingbookNumber()
            {
            return standingbookNumber;
            }
                            public void setStandingbookName(String standingbookName)
            {
            this.standingbookName = standingbookName;
            }

    public String getStandingbookName()
            {
            return standingbookName;
            }
                            public void setStandingbookSex(String standingbookSex)
            {
            this.standingbookSex = standingbookSex;
            }

    public String getStandingbookSex()
            {
            return standingbookSex;
            }
                            public void setStandingbookNation(String standingbookNation)
            {
            this.standingbookNation = standingbookNation;
            }

    public String getStandingbookNation()
            {
            return standingbookNation;
            }
                            public void setStandingbookBirthday(Date standingbookBirthday)
            {
            this.standingbookBirthday = standingbookBirthday;
            }

    public Date getStandingbookBirthday()
            {
            return standingbookBirthday;
            }
                            public void setStandingbookTimeJoinPart(Date standingbookTimeJoinPart)
            {
            this.standingbookTimeJoinPart = standingbookTimeJoinPart;
            }

    public Date getStandingbookTimeJoinPart()
            {
            return standingbookTimeJoinPart;
            }
                            public void setStandingbookBranchNumber(String standingbookBranchNumber)
            {
            this.standingbookBranchNumber = standingbookBranchNumber;
            }

    public String getStandingbookBranchNumber()
            {
            return standingbookBranchNumber;
            }
                            public void setStandingbookFilesPartyMembwes(String standingbookFilesPartyMembwes)
            {
            this.standingbookFilesPartyMembwes = standingbookFilesPartyMembwes;
            }

    public String getStandingbookFilesPartyMembwes()
            {
            return standingbookFilesPartyMembwes;
            }
                            public void setStandingbookRAndPName(String standingbookRAndPName)
            {
            this.standingbookRAndPName = standingbookRAndPName;
            }

    public String getStandingbookRAndPName()
            {
            return standingbookRAndPName;
            }
                            public void setStandingbookRAndPExplain(String standingbookRAndPExplain)
            {
            this.standingbookRAndPExplain = standingbookRAndPExplain;
            }

    public String getStandingbookRAndPExplain()
            {
            return standingbookRAndPExplain;
            }
                            public void setStandingbookRAndPReason(String standingbookRAndPReason)
            {
            this.standingbookRAndPReason = standingbookRAndPReason;
            }

    public String getStandingbookRAndPReason()
            {
            return standingbookRAndPReason;
            }
                            public void setStandingbookApprovalDate(Date standingbookApprovalDate)
            {
            this.standingbookApprovalDate = standingbookApprovalDate;
            }

    public Date getStandingbookApprovalDate()
            {
            return standingbookApprovalDate;
            }
                            public void setStandingbookRevocationDate(Date standingbookRevocationDate)
            {
            this.standingbookRevocationDate = standingbookRevocationDate;
            }

    public Date getStandingbookRevocationDate()
            {
            return standingbookRevocationDate;
            }
                            public void setStandingbookInflowUnit(String standingbookInflowUnit)
            {
            this.standingbookInflowUnit = standingbookInflowUnit;
            }

    public String getStandingbookInflowUnit()
            {
            return standingbookInflowUnit;
            }
                            public void setStandingbookIAndC(String standingbookIAndC)
            {
            this.standingbookIAndC = standingbookIAndC;
            }

    public String getStandingbookIAndC()
            {
            return standingbookIAndC;
            }
                            public void setStandingbookOutflowDate(Date standingbookOutflowDate)
            {
            this.standingbookOutflowDate = standingbookOutflowDate;
            }

    public Date getStandingbookOutflowDate()
            {
            return standingbookOutflowDate;
            }
                            public void setStandingbookOutflowReason(String standingbookOutflowReason)
            {
            this.standingbookOutflowReason = standingbookOutflowReason;
            }

    public String getStandingbookOutflowReason()
            {
            return standingbookOutflowReason;
            }
                            public void setStandingbookAbroad(String standingbookAbroad)
            {
            this.standingbookAbroad = standingbookAbroad;
            }

    public String getStandingbookAbroad()
            {
            return standingbookAbroad;
            }
                            public void setPhoneNumber(String phoneNumber)
            {
            this.phoneNumber = phoneNumber;
            }

    public String getPhoneNumber()
            {
            return phoneNumber;
            }
                            public void setRemarks(String remarks)
            {
            this.remarks = remarks;
            }

    public String getRemarks()
            {
            return remarks;
            }
                    
    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("standingbookId", getStandingbookId())
            .append("standingbookNumber", getStandingbookNumber())
            .append("standingbookName", getStandingbookName())
            .append("standingbookSex", getStandingbookSex())
            .append("standingbookNation", getStandingbookNation())
            .append("standingbookBirthday", getStandingbookBirthday())
            .append("standingbookTimeJoinPart", getStandingbookTimeJoinPart())
            .append("standingbookBranchNumber", getStandingbookBranchNumber())
            .append("standingbookFilesPartyMembwes", getStandingbookFilesPartyMembwes())
            .append("standingbookRAndPName", getStandingbookRAndPName())
            .append("standingbookRAndPExplain", getStandingbookRAndPExplain())
            .append("standingbookRAndPReason", getStandingbookRAndPReason())
            .append("standingbookApprovalDate", getStandingbookApprovalDate())
            .append("standingbookRevocationDate", getStandingbookRevocationDate())
            .append("standingbookInflowUnit", getStandingbookInflowUnit())
            .append("standingbookIAndC", getStandingbookIAndC())
            .append("standingbookOutflowDate", getStandingbookOutflowDate())
            .append("standingbookOutflowReason", getStandingbookOutflowReason())
            .append("standingbookAbroad", getStandingbookAbroad())
            .append("phoneNumber", getPhoneNumber())
            .append("remarks", getRemarks())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("createBy", getCreateBy())
            .append("updateBy", getUpdateBy())
            .toString();
    }
}

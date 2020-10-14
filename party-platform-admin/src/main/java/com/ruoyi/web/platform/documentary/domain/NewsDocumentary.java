package com.ruoyi.web.platform.documentary.domain;

import java.util.Date;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 党建纪实对象 sys_news_documentary
 *
 * @author party-platform
 * @date 2020-10-14
 */
@ApiModel("NewsDocumentary")
public class NewsDocumentary extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 纪实Id */
    @ApiModelProperty("纪实Id")
    private Long              documentaryId;

    /** 纪实主题 */
    @ApiModelProperty("纪实主题")
    @Excel(name = "纪实主题")
    private String            documentaryTitle;

    /** 纪实详情 */
    @ApiModelProperty("纪实详情")
    @Excel(name = "纪实详情")
    private String            documentaryContent;

    /** 活动地点 */
    @ApiModelProperty("活动地点")
    @Excel(name = "活动地点")
    private String            documentaryActiveAddress;

    /** 起始时间 */
    @ApiModelProperty("起始时间")
    @Excel(name = "起始时间", width = 30, dateFormat = "yyyy-MM-dd hh:mm:ss")
    private Date              documentaryStartTime;

    /** 截至时间 */
    @ApiModelProperty("截至时间")
    @Excel(name = "截至时间", width = 30, dateFormat = "yyyy-MM-dd hh:mm:ss")
    private Date              documentaryEndTime;

    /** 参与人员 */
    @ApiModelProperty("参与人员")
    @Excel(name = "参与人员")
    private String            documentaryJionPeople;

    /** 其他人员 */
    @ApiModelProperty("其他人员")
    @Excel(name = "其他人员")
    private String            documentaryOtherPeople;

    /** 纪实状态（0正常 1关闭） */
    @ApiModelProperty("纪实状态（0正常 1关闭）")
    @Excel(name = "纪实状态", readConverterExp = "0=正常,1=关闭")
    private String            documentaryStatus;

    public void setDocumentaryId(Long documentaryId) {
        this.documentaryId = documentaryId;
    }

    public Long getDocumentaryId() {
        return documentaryId;
    }

    public void setDocumentaryTitle(String documentaryTitle) {
        this.documentaryTitle = documentaryTitle;
    }

    public String getDocumentaryTitle() {
        return documentaryTitle;
    }

    public void setDocumentaryContent(String documentaryContent) {
        this.documentaryContent = documentaryContent;
    }

    public String getDocumentaryContent() {
        return documentaryContent;
    }

    public void setDocumentaryActiveAddress(String documentaryActiveAddress) {
        this.documentaryActiveAddress = documentaryActiveAddress;
    }

    public String getDocumentaryActiveAddress() {
        return documentaryActiveAddress;
    }

    public void setDocumentaryStartTime(Date documentaryStartTime) {
        this.documentaryStartTime = documentaryStartTime;
    }

    public Date getDocumentaryStartTime() {
        return documentaryStartTime;
    }

    public void setDocumentaryEndTime(Date documentaryEndTime) {
        this.documentaryEndTime = documentaryEndTime;
    }

    public Date getDocumentaryEndTime() {
        return documentaryEndTime;
    }

    public void setDocumentaryJionPeople(String documentaryJionPeople) {
        this.documentaryJionPeople = documentaryJionPeople;
    }

    public String getDocumentaryJionPeople() {
        return documentaryJionPeople;
    }

    public void setDocumentaryOtherPeople(String documentaryOtherPeople) {
        this.documentaryOtherPeople = documentaryOtherPeople;
    }

    public String getDocumentaryOtherPeople() {
        return documentaryOtherPeople;
    }

    public void setDocumentaryStatus(String documentaryStatus) {
        this.documentaryStatus = documentaryStatus;
    }

    public String getDocumentaryStatus() {
        return documentaryStatus;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("documentaryId", getDocumentaryId())
            .append("documentaryTitle", getDocumentaryTitle())
            .append("documentaryContent", getDocumentaryContent())
            .append("documentaryActiveAddress", getDocumentaryActiveAddress())
            .append("documentaryStartTime", getDocumentaryStartTime())
            .append("documentaryEndTime", getDocumentaryEndTime())
            .append("documentaryJionPeople", getDocumentaryJionPeople())
            .append("documentaryOtherPeople", getDocumentaryOtherPeople())
            .append("documentaryStatus", getDocumentaryStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}

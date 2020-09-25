package com.ruoyi.web.platform.news.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 新闻展示对象 sys_news
 * 
 * @author party-platform
 * @date 2020-09-25
 */
@ApiModel("News")
public class News extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 新闻ID */
    @ApiModelProperty("新闻ID")
    private Integer newsId;

    /** 新闻标题 */
    @ApiModelProperty("新闻标题")
    @Excel(name = "新闻标题")
    private String newsTitle;

    /** 新闻类型（1通知 2公告） */
    @ApiModelProperty("新闻类型（1通知 2公告）")
    @Excel(name = "新闻类型", readConverterExp = "1=通知,2=公告")
    private String newsType;

    /** 新闻内容 */
    @ApiModelProperty("新闻内容")
    @Excel(name = "新闻内容")
    private String newsContent;

    /** 新闻状态（0正常 1关闭） */
    @ApiModelProperty("新闻状态（0正常 1关闭）")
    @Excel(name = "新闻状态", readConverterExp = "0=正常,1=关闭")
    private String status;

    public void setNewsId(Integer newsId) 
    {
        this.newsId = newsId;
    }

    public Integer getNewsId() 
    {
        return newsId;
    }
    public void setNewsTitle(String newsTitle) 
    {
        this.newsTitle = newsTitle;
    }

    public String getNewsTitle() 
    {
        return newsTitle;
    }
    public void setNewsType(String newsType) 
    {
        this.newsType = newsType;
    }

    public String getNewsType() 
    {
        return newsType;
    }
    public void setNewsContent(String newsContent) 
    {
        this.newsContent = newsContent;
    }

    public String getNewsContent() 
    {
        return newsContent;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("newsId", getNewsId())
            .append("newsTitle", getNewsTitle())
            .append("newsType", getNewsType())
            .append("newsContent", getNewsContent())
            .append("status", getStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}

package com.ruoyi.web.platform.news.domain;

import java.util.Date;
import java.util.Objects;

import com.ruoyi.common.utils.DateUtils;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 新闻发布对象 sys_news
 *
 * @author party-platform
 * @date 2020-11-27
 */
@ApiModel("News")
public class News extends BaseEntity implements Comparable<News> {
    private static final long serialVersionUID = 1L;

    /**
     * 新闻ID
     */
    @ApiModelProperty("新闻ID")
    private Integer           newsId;

    /**
     * 新闻标题
     */
    @ApiModelProperty("新闻标题")
    @Excel(name = "新闻标题")
    private String            newsTitle;

    /**
     * 新闻类型（1通知 2公告）
     */
    @ApiModelProperty("新闻类型（1通知 2公告）")
    @Excel(name = "新闻类型", readConverterExp = "1=通知,2=公告")
    private String            newsType;

    /**
     * 新闻内容
     */
    @ApiModelProperty("新闻内容")
    @Excel(name = "新闻内容")
    private String            newsContent;

    /**
     * 新闻封面
     */
    @ApiModelProperty("新闻封面")
    @Excel(name = "新闻封面")
    private String            newsPicture;

    /**
     * 新闻外链
     */
    @ApiModelProperty("新闻外链")
    @Excel(name = "新闻外链")
    private String            newsUrl;

    /**
     * 新闻状态（0正常 1关闭）
     */
    @ApiModelProperty("新闻状态（0正常 1关闭）")
    @Excel(name = "新闻状态", readConverterExp = "0=正常,1=关闭")
    private String            status;

    /**
     * 新闻时间
     */
    @ApiModelProperty("新闻时间")
    @Excel(name = "新闻时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date              newsTime;

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsType(String newsType) {
        this.newsType = newsType;
    }

    public String getNewsType() {
        return newsType;
    }

    public void setNewsContent(String newsContent) {
        this.newsContent = newsContent;
    }

    public String getNewsContent() {
        return newsContent;
    }

    public void setNewsPicture(String newsPicture) {
        this.newsPicture = newsPicture;
    }

    public String getNewsPicture() {
        return newsPicture;
    }

    public void setNewsUrl(String newsUrl) {
        this.newsUrl = newsUrl;
    }

    public String getNewsUrl() {
        return newsUrl;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setNewsTime(Date newsTime) {
        this.newsTime = newsTime;
    }

    public Date getNewsTime() {
        return newsTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("newsId", getNewsId())
            .append("newsTitle", getNewsTitle())
            .append("newsType", getNewsType())
            .append("newsContent", getNewsContent())
            .append("newsPicture", getNewsPicture())
            .append("newsUrl", getNewsUrl())
            .append("status", getStatus())
            .append("newsTime", getNewsTime())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }

    @Override
    public int compareTo(News o) {
        if (this.getNewsTime().getTime() >= o.getNewsTime().getTime()) {
            return 1;
        } else if (this.getNewsTime().getTime() < o.getNewsTime().getTime()) {
            return -1;
        } else {
            return -1;
        }
    }
}

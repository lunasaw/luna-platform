package com.ruoyi.web.platform.blog.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 博客展示对象 sys_blog
 *
 * @author yttv-platform
 * @date 2020-10-06
 */
@ApiModel("Blog")
public class Blog extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 博客ID */
    @ApiModelProperty("博客ID")
    private Integer           blogId;

    /** 博客标题 */
    @ApiModelProperty("博客标题")
    @Excel(name = "博客标题")
    private String            blogTitle;

    /** 博客类型（1音乐 2旅行 3时尚 4特征） */
    @ApiModelProperty("博客类型（1音乐 2旅行 3时尚 4特征）")
    @Excel(name = "博客类型", readConverterExp = "1=音乐,2=旅行,3=时尚,4=特征")
    private String            blogType;

    /** 博客内容 */
    @ApiModelProperty("博客内容")
    @Excel(name = "博客内容")
    private String            blogContent;

    /** 博客封面 */
    @ApiModelProperty("博客封面")
    @Excel(name = "博客封面")
    private String            blogPicture;

    /** 博客简介 */
    @ApiModelProperty("博客简介")
    @Excel(name = "博客简介")
    private String            blogSimple;

    /** 博客状态（0正常 1关闭） */
    @ApiModelProperty("博客状态（0正常 1关闭）")
    @Excel(name = "博客状态", readConverterExp = "0=正常,1=关闭")
    private String            status;

    public void setBlogId(Integer blogId) {
        this.blogId = blogId;
    }

    public Integer getBlogId() {
        return blogId;
    }

    public void setBlogTitle(String blogTitle) {
        this.blogTitle = blogTitle;
    }

    public String getBlogTitle() {
        return blogTitle;
    }

    public void setBlogType(String blogType) {
        this.blogType = blogType;
    }

    public String getBlogType() {
        return blogType;
    }

    public void setBlogContent(String blogContent) {
        this.blogContent = blogContent;
    }

    public String getBlogContent() {
        return blogContent;
    }

    public void setBlogPicture(String blogPicture) {
        this.blogPicture = blogPicture;
    }

    public String getBlogPicture() {
        return blogPicture;
    }

    public void setBlogSimple(String blogSimple) {
        this.blogSimple = blogSimple;
    }

    public String getBlogSimple() {
        return blogSimple;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("blogId", getBlogId())
            .append("blogTitle", getBlogTitle())
            .append("blogType", getBlogType())
            .append("blogContent", getBlogContent())
            .append("blogPicture", getBlogPicture())
            .append("blogSimple", getBlogSimple())
            .append("status", getStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}

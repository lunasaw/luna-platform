package com.ruoyi.web.platform.mainInfo.domain;

import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 主页介绍板块对象 sys_author_main
 *
 * @author yttv-platform
 * @date 2020-10-11
 */
@ApiModel("AuthorMain")
public class AuthorMain extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 主页介绍id */
    @ApiModelProperty("主页介绍id")
    @Excel(name = "主页介绍id")
    private Integer           authorId;

    /** 主页介绍博客Id */
    @ApiModelProperty("主页介绍博客Id")
    @Excel(name = "主页介绍博客Id")
    private Long              blogId;

    public void setAuthorId(Integer authorId) {
        this.authorId = authorId;
    }

    public Integer getAuthorId() {
        return authorId;
    }

    public void setBlogId(Long blogId) {
        this.blogId = blogId;
    }

    public Long getBlogId() {
        return blogId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("authorId", getAuthorId())
            .append("blogId", getBlogId())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("createBy", getCreateBy())
            .append("updateBy", getUpdateBy())
            .append("remark", getRemark())
            .toString();
    }
}

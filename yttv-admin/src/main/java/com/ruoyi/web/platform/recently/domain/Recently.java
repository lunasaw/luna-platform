package com.ruoyi.web.platform.recently.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 右侧最近记录板块对象 sys_recently
 *
 * @author yttv-platform
 * @date 2020-10-07
 */
@ApiModel("Recently")
public class Recently extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 最近记录id */
    @ApiModelProperty("最近记录id")
    @Excel(name = "最近记录id")
    private Integer           recentlyId;

    /** 最近博客Id */
    @ApiModelProperty("最近博客Id")
    @Excel(name = "最近博客Id")
    private Integer           blogId;

    public void setRecentlyId(Integer recentlyId) {
        this.recentlyId = recentlyId;
    }

    public Integer getRecentlyId() {
        return recentlyId;
    }

    public void setBlogId(Integer blogId) {
        this.blogId = blogId;
    }

    public Integer getBlogId() {
        return blogId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("recentlyId", getRecentlyId())
            .append("blogId", getBlogId())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}

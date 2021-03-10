package com.ruoyi.web.platform.comments.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 留言板评论互动对象 sys_comments
 *
 * @author party-platform
 * @date 2021-03-06
 */
@ApiModel("Comments")
public class Comments extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 评论内容主键
     */
    @ApiModelProperty("评论内容主键")
    private Long commentsId;

    /**
     * 评论标题
     */
    @ApiModelProperty("评论标题")
    @Excel(name = "评论标题")
    private String commentsTitle;

    /**
     * 评论类型
     */
    @ApiModelProperty("评论类型")
    @Excel(name = "评论类型")
    private String commentsType;

    /**
     * 评论内容
     */
    @ApiModelProperty("评论内容")
    @Excel(name = "评论内容")
    private String commentsContent;

    /**
     * 评论目标用户id
     */
    @ApiModelProperty("评论目标用户id")
    @Excel(name = "评论目标用户id")
    private Long commentsToId;

    /**
     * 评论用户id
     */
    @ApiModelProperty("评论用户id")
    @Excel(name = "评论用户id")
    private Long commentsFromId;

    /**
     * 评论状态（0正常 1关闭）
     */
    @ApiModelProperty("评论状态（0正常 1关闭）")
    @Excel(name = "评论状态", readConverterExp = "0=正常,1=关闭")
    private String status;

    private String fromName;

    private String toName;

    private int countNum;

    private String dictLabel;

    public int getCountNum() {
        return countNum;
    }

    public void setCountNum(int countNum) {
        this.countNum = countNum;
    }

    public String getDictLabel() {
        return dictLabel;
    }

    public void setDictLabel(String dictLabel) {
        this.dictLabel = dictLabel;
    }

    public String getFromName() {
        return fromName;
    }

    public Comments setFromName(String fromName) {
        this.fromName = fromName;
        return this;
    }

    public String getToName() {
        return toName;
    }

    public Comments setToName(String toName) {
        this.toName = toName;
        return this;
    }

    public void setCommentsId(Long commentsId) {
        this.commentsId = commentsId;
    }

    public Long getCommentsId() {
        return commentsId;
    }

    public void setCommentsTitle(String commentsTitle) {
        this.commentsTitle = commentsTitle;
    }

    public String getCommentsTitle() {
        return commentsTitle;
    }

    public void setCommentsType(String commentsType) {
        this.commentsType = commentsType;
    }

    public String getCommentsType() {
        return commentsType;
    }

    public void setCommentsContent(String commentsContent) {
        this.commentsContent = commentsContent;
    }

    public String getCommentsContent() {
        return commentsContent;
    }

    public void setCommentsToId(Long commentsToId) {
        this.commentsToId = commentsToId;
    }

    public Long getCommentsToId() {
        return commentsToId;
    }

    public void setCommentsFromId(Long commentsFromId) {
        this.commentsFromId = commentsFromId;
    }

    public Long getCommentsFromId() {
        return commentsFromId;
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
                .append("commentsId", getCommentsId())
                .append("commentsTitle", getCommentsTitle())
                .append("commentsType", getCommentsType())
                .append("commentsContent", getCommentsContent())
                .append("commentsToId", getCommentsToId())
                .append("commentsFromId", getCommentsFromId())
                .append("status", getStatus())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("remark", getRemark())
                .toString();
    }
}

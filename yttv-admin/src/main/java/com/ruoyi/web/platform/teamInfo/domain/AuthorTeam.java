package com.ruoyi.web.platform.teamInfo.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 团队介绍板块对象 sys_author_team
 *
 * @author yttv-platform
 * @date 2020-10-11
 */
@ApiModel("AuthorTeam")
public class AuthorTeam extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 团队人员编号 */
    @ApiModelProperty("团队人员编号")
    @Excel(name = "团队人员编号")
    private Integer           teamId;

    /** 团队成员姓名 */
    @ApiModelProperty("团队成员姓名")
    @Excel(name = "团队成员姓名")
    private String            teamName;

    /** 岗位编号 */
    @ApiModelProperty("岗位编号")
    @Excel(name = "岗位编号")
    private Long              postId;

    /** 个人介绍 */
    @ApiModelProperty("个人介绍")
    @Excel(name = "个人介绍")
    private String            teamDes;

    /** 个人照片 */
    @ApiModelProperty("个人照片")
    @Excel(name = "个人照片")
    private String            teamPicture;

    public void setTeamId(Integer teamId) {
        this.teamId = teamId;
    }

    public Integer getTeamId() {
        return teamId;
    }

    public void setTeamName(String teamName) {
        this.teamName = teamName;
    }

    public String getTeamName() {
        return teamName;
    }

    public void setPostId(Long postId) {
        this.postId = postId;
    }

    public Long getPostId() {
        return postId;
    }

    public void setTeamDes(String teamDes) {
        this.teamDes = teamDes;
    }

    public String getTeamDes() {
        return teamDes;
    }

    public void setTeamPicture(String teamPicture) {
        this.teamPicture = teamPicture;
    }

    public String getTeamPicture() {
        return teamPicture;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("teamId", getTeamId())
            .append("teamName", getTeamName())
            .append("postId", getPostId())
            .append("teamDes", getTeamDes())
            .append("teamPicture", getTeamPicture())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("createBy", getCreateBy())
            .append("updateBy", getUpdateBy())
            .append("remark", getRemark())
            .toString();
    }
}

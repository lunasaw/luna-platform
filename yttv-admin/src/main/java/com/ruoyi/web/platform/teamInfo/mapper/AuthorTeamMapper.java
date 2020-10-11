package com.ruoyi.web.platform.teamInfo.mapper;

import java.util.List;
import com.ruoyi.web.platform.teamInfo.domain.AuthorTeam;

/**
 * 团队介绍板块Mapper接口
 * 
 * @author yttv-platform
 * @date 2020-10-11
 */
public interface AuthorTeamMapper {
    /**
     * 查询团队介绍板块
     * 
     * @param teamId 团队介绍板块ID
     * @return 团队介绍板块
     */
    public AuthorTeam selectAuthorTeamById(Integer teamId);

    /**
     * 查询团队介绍板块列表
     * 
     * @param authorTeam 团队介绍板块
     * @return 团队介绍板块集合
     */
    public List<AuthorTeam> selectAuthorTeamList(AuthorTeam authorTeam);

    /**
     * 新增团队介绍板块
     * 
     * @param authorTeam 团队介绍板块
     * @return 结果
     */
    public int insertAuthorTeam(AuthorTeam authorTeam);

    /**
     * 修改团队介绍板块
     * 
     * @param authorTeam 团队介绍板块
     * @return 结果
     */
    public int updateAuthorTeam(AuthorTeam authorTeam);

    /**
     * 删除团队介绍板块
     * 
     * @param teamId 团队介绍板块ID
     * @return 结果
     */
    public int deleteAuthorTeamById(Integer teamId);

    /**
     * 批量删除团队介绍板块
     * 
     * @param teamIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteAuthorTeamByIds(String[] teamIds);
}

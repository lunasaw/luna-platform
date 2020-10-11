package com.ruoyi.web.platform.teamInfo.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.framework.util.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.teamInfo.mapper.AuthorTeamMapper;
import com.ruoyi.web.platform.teamInfo.domain.AuthorTeam;
import com.ruoyi.web.platform.teamInfo.service.IAuthorTeamService;
import com.ruoyi.common.core.text.Convert;

/**
 * 团队介绍板块Service业务层处理
 * 
 * @author yttv-platform
 * @date 2020-10-11
 */
@Service
public class AuthorTeamServiceImpl implements IAuthorTeamService {
    @Autowired
    private AuthorTeamMapper authorTeamMapper;

    /**
     * 查询团队介绍板块
     * 
     * @param teamId 团队介绍板块ID
     * @return 团队介绍板块
     */
    @Override
    public AuthorTeam selectAuthorTeamById(Integer teamId) {
        return authorTeamMapper.selectAuthorTeamById(teamId);
    }

    /**
     * 查询团队介绍板块列表
     * 
     * @param authorTeam 团队介绍板块
     * @return 团队介绍板块
     */
    @Override
    public List<AuthorTeam> selectAuthorTeamList(AuthorTeam authorTeam) {
        return authorTeamMapper.selectAuthorTeamList(authorTeam);
    }

    /**
     * 新增团队介绍板块
     * 
     * @param authorTeam 团队介绍板块
     * @return 结果
     */
    @Override
    public int insertAuthorTeam(AuthorTeam authorTeam) {
        authorTeam.setCreateTime(DateUtils.getNowDate());
        authorTeam.setUpdateTime(DateUtils.getNowDate());
        authorTeam.setCreateBy(ShiroUtils.getLoginName());
        return authorTeamMapper.insertAuthorTeam(authorTeam);
    }

    /**
     * 修改团队介绍板块
     * 
     * @param authorTeam 团队介绍板块
     * @return 结果
     */
    @Override
    public int updateAuthorTeam(AuthorTeam authorTeam) {
        authorTeam.setUpdateTime(DateUtils.getNowDate());
        authorTeam.setUpdateBy(ShiroUtils.getLoginName());
        return authorTeamMapper.updateAuthorTeam(authorTeam);
    }

    /**
     * 删除团队介绍板块对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteAuthorTeamByIds(String ids) {
        return authorTeamMapper.deleteAuthorTeamByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除团队介绍板块信息
     * 
     * @param teamId 团队介绍板块ID
     * @return 结果
     */
    @Override
    public int deleteAuthorTeamById(Integer teamId) {
        return authorTeamMapper.deleteAuthorTeamById(teamId);
    }
}

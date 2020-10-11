package com.ruoyi.web.platform.mainInfo.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.mainInfo.mapper.AuthorMainMapper;
import com.ruoyi.web.platform.mainInfo.domain.AuthorMain;
import com.ruoyi.web.platform.mainInfo.service.IAuthorMainService;
import com.ruoyi.common.core.text.Convert;

/**
 * 主页介绍板块Service业务层处理
 * 
 * @author yttv-platform
 * @date 2020-10-11
 */
@Service
public class AuthorMainServiceImpl implements IAuthorMainService {
    @Autowired
    private AuthorMainMapper authorMainMapper;

    /**
     * 查询主页介绍板块
     * 
     * @param authorId 主页介绍板块ID
     * @return 主页介绍板块
     */
    @Override
    public AuthorMain selectAuthorMainById(Integer authorId) {
        return authorMainMapper.selectAuthorMainById(authorId);
    }

    /**
     * 查询主页介绍板块列表
     * 
     * @param authorMain 主页介绍板块
     * @return 主页介绍板块
     */
    @Override
    public List<AuthorMain> selectAuthorMainList(AuthorMain authorMain) {
        return authorMainMapper.selectAuthorMainList(authorMain);
    }

    /**
     * 新增主页介绍板块
     * 
     * @param authorMain 主页介绍板块
     * @return 结果
     */
    @Override
    public int insertAuthorMain(AuthorMain authorMain) {
        authorMain.setCreateTime(DateUtils.getNowDate());
        return authorMainMapper.insertAuthorMain(authorMain);
    }

    /**
     * 修改主页介绍板块
     * 
     * @param authorMain 主页介绍板块
     * @return 结果
     */
    @Override
    public int updateAuthorMain(AuthorMain authorMain) {
        authorMain.setUpdateTime(DateUtils.getNowDate());
        return authorMainMapper.updateAuthorMain(authorMain);
    }

    /**
     * 删除主页介绍板块对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteAuthorMainByIds(String ids) {
        return authorMainMapper.deleteAuthorMainByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除主页介绍板块信息
     * 
     * @param authorId 主页介绍板块ID
     * @return 结果
     */
    @Override
    public int deleteAuthorMainById(Integer authorId) {
        return authorMainMapper.deleteAuthorMainById(authorId);
    }
}

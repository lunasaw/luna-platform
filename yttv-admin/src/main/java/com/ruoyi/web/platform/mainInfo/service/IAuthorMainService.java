package com.ruoyi.web.platform.mainInfo.service;

import java.util.List;
import com.ruoyi.web.platform.mainInfo.domain.AuthorMain;

/**
 * 主页介绍板块Service接口
 * 
 * @author yttv-platform
 * @date 2020-10-11
 */
public interface IAuthorMainService {
    /**
     * 查询主页介绍板块
     * 
     * @param authorId 主页介绍板块ID
     * @return 主页介绍板块
     */
    public AuthorMain selectAuthorMainById(Integer authorId);

    /**
     * 查询主页介绍板块列表
     * 
     * @param authorMain 主页介绍板块
     * @return 主页介绍板块集合
     */
    public List<AuthorMain> selectAuthorMainList(AuthorMain authorMain);

    /**
     * 新增主页介绍板块
     * 
     * @param authorMain 主页介绍板块
     * @return 结果
     */
    public int insertAuthorMain(AuthorMain authorMain);

    /**
     * 修改主页介绍板块
     * 
     * @param authorMain 主页介绍板块
     * @return 结果
     */
    public int updateAuthorMain(AuthorMain authorMain);

    /**
     * 批量删除主页介绍板块
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAuthorMainByIds(String ids);

    /**
     * 删除主页介绍板块信息
     * 
     * @param authorId 主页介绍板块ID
     * @return 结果
     */
    public int deleteAuthorMainById(Integer authorId);
}

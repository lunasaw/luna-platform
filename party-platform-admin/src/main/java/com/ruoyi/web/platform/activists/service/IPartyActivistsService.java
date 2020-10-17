package com.ruoyi.web.platform.activists.service;

import java.util.List;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.web.platform.activists.domain.PartyActivists;
import com.ruoyi.web.platform.partyInfo.domain.PartyInfo;

/**
 * 入党积极分子Service接口
 * 
 * @author party-platform
 * @date 2020-10-17
 */
public interface IPartyActivistsService {
    /**
     * 查询入党积极分子
     * 
     * @param partyActivistsStuId 入党积极分子ID
     * @return 入党积极分子
     */
    public PartyActivists selectPartyActivistsById(Long partyActivistsStuId);

    /**
     * 查询入党积极分子列表
     * 
     * @param partyActivists 入党积极分子
     * @return 入党积极分子集合
     */
    public List<PartyActivists> selectPartyActivistsList(PartyActivists partyActivists);

    /**
     * 导出用户数据
     * 
     * @param partyActivists
     * @return
     */
    public AjaxResult exportPartyActivists(PartyActivists partyActivists);

    /**
     * 导入用户数据
     *
     * @param partyActivists 党员数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName 操作用户
     * @return 结果
     */
    public String importPartyActivists(List<PartyActivists> partyActivists, Boolean isUpdateSupport, String operName);

    /**
     * 新增入党积极分子
     * 
     * @param partyActivists 入党积极分子
     * @return 结果
     */
    public int insertPartyActivists(PartyActivists partyActivists);

    /**
     * 修改入党积极分子
     * 
     * @param partyActivists 入党积极分子
     * @return 结果
     */
    public int updatePartyActivists(PartyActivists partyActivists);

    /**
     * 批量删除入党积极分子
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePartyActivistsByIds(String ids);

    /**
     * 删除入党积极分子信息
     * 
     * @param partyActivistsStuId 入党积极分子ID
     * @return 结果
     */
    public int deletePartyActivistsById(Long partyActivistsStuId);
}

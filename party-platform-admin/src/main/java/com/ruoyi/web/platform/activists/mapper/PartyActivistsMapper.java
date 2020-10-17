package com.ruoyi.web.platform.activists.mapper;

import java.util.List;
import com.ruoyi.web.platform.activists.domain.PartyActivists;

/**
 * 入党积极分子Mapper接口
 * 
 * @author party-platform
 * @date 2020-10-17
 */
public interface PartyActivistsMapper {
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
     * 删除入党积极分子
     * 
     * @param partyActivistsStuId 入党积极分子ID
     * @return 结果
     */
    public int deletePartyActivistsById(Long partyActivistsStuId);

    /**
     * 批量删除入党积极分子
     * 
     * @param partyActivistsStuIds 需要删除的数据ID
     * @return 结果
     */
    public int deletePartyActivistsByIds(String[] partyActivistsStuIds);

    public PartyActivists selectPartyActivistsByName(String name);
}

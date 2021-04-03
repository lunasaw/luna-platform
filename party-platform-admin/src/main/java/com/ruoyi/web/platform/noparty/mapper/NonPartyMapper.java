package com.ruoyi.web.platform.noparty.mapper;

import java.util.List;

import com.ruoyi.web.platform.noparty.domain.NonParty;

/**
 * 无党派人士Mapper接口
 *
 * @author party-platform
 * @date 2020-10-24
 */
public interface NonPartyMapper {
    /**
     * 查询无党派人士
     *
     * @param nonPartyId 无党派人士ID
     * @return 无党派人士
     */
    public NonParty selectNonPartyById(Long nonPartyId);

    /**
     * 查询无党派人士列表
     *
     * @param nonParty 无党派人士
     * @return 无党派人士集合
     */
    public List<NonParty> selectNonPartyList(NonParty nonParty);

    /**
     * 通过无党派人士名查询无党派人士
     *
     * @param nonPartyName 无党派人士名
     * @return 用户对象信息
     */
    public NonParty selectNonPartyByName(String nonPartyName);

    /**
     * 新增无党派人士
     *
     * @param nonParty 无党派人士
     * @return 结果
     */
    public int insertNonParty(NonParty nonParty);

    /**
     * 修改无党派人士
     *
     * @param nonParty 无党派人士
     * @return 结果
     */
    public int updateNonParty(NonParty nonParty);

    /**
     * 删除无党派人士
     *
     * @param nonPartyId 无党派人士ID
     * @return 结果
     */
    public int deleteNonPartyById(Long nonPartyId);

    /**
     * 批量删除无党派人士
     *
     * @param nonPartyIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteNonPartyByIds(String[] nonPartyIds);
}

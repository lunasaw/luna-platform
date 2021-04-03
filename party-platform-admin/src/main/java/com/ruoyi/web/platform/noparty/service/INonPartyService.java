package com.ruoyi.web.platform.noparty.service;

import java.util.List;

import com.ruoyi.web.platform.noparty.domain.NonParty;

/**
 * 无党派人士Service接口
 *
 * @author party-platform
 * @date 2020-10-24
 */
public interface INonPartyService {
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
     * 导入无党派人士数据
     *
     * @param nonPartyList 无党派人士数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName 操作用户
     * @return 结果
     */
    public String importNonParty(List<NonParty> nonPartyList, Boolean isUpdateSupport, String operName);

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
     * 批量删除无党派人士
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteNonPartyByIds(String ids);

    /**
     * 删除无党派人士信息
     *
     * @param nonPartyId 无党派人士ID
     * @return 结果
     */
    public int deleteNonPartyById(Long nonPartyId);
}

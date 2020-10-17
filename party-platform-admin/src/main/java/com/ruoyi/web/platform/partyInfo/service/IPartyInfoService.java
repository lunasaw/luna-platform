package com.ruoyi.web.platform.partyInfo.service;

import java.util.List;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.web.platform.partyInfo.domain.PartyInfo;

/**
 * 党员信息Service接口
 * 
 * @author party-platform
 * @date 2020-10-10
 */
public interface IPartyInfoService {
    /**
     * 查询党员信息
     * 
     * @param partyId 党员信息ID
     * @return 党员信息
     */
    public PartyInfo selectPartyInfoById(Long partyId);

    /**
     * 查询党员信息列表
     * 
     * @param partyInfo 党员信息
     * @return 党员信息集合
     */
    public List<PartyInfo> selectPartyInfoList(PartyInfo partyInfo);

    /**
     * 导出数据
     *
     * @param partyInfo
     * @return
     */
    public AjaxResult exportPartyInfoList(PartyInfo partyInfo);

    /**
     * 导入用户数据
     *
     * @param userList 党员数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName 操作用户
     * @return 结果
     */
    public String importPartyInfo(List<PartyInfo> userList, Boolean isUpdateSupport, String operName);

    /**
     * 新增党员信息
     * 
     * @param partyInfo 党员信息
     * @return 结果
     */
    public int insertPartyInfo(PartyInfo partyInfo);

    /**
     * 修改党员信息
     * 
     * @param partyInfo 党员信息
     * @return 结果
     */
    public int updatePartyInfo(PartyInfo partyInfo);

    /**
     * 批量删除党员信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePartyInfoByIds(String ids);

    /**
     * 删除党员信息信息
     * 
     * @param partyId 党员信息ID
     * @return 结果
     */
    public int deletePartyInfoById(Long partyId);
}

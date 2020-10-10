package com.ruoyi.web.platform.partyInfo.mapper;

import java.util.List;

import com.ruoyi.system.domain.SysUser;
import com.ruoyi.web.platform.partyInfo.domain.PartyInfo;

/**
 * 党员信息Mapper接口
 * 
 * @author party-platform
 * @date 2020-10-10
 */
public interface PartyInfoMapper {
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
     * 通过用户名查询用户
     *
     * @param partyName 用户名
     * @return 用户对象信息
     */
    public PartyInfo selectPartyInfoByName(String partyName);

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
     * 删除党员信息
     * 
     * @param partyId 党员信息ID
     * @return 结果
     */
    public int deletePartyInfoById(Long partyId);

    /**
     * 批量删除党员信息
     * 
     * @param partyIds 需要删除的数据ID
     * @return 结果
     */
    public int deletePartyInfoByIds(String[] partyIds);
}

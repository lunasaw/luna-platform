package com.ruoyi.web.platform.noparty.service.impl;

import java.util.Date;
import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.framework.util.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.noparty.mapper.NonPartyMapper;
import com.ruoyi.web.platform.noparty.domain.NonParty;
import com.ruoyi.web.platform.noparty.service.INonPartyService;
import com.ruoyi.common.core.text.Convert;

/**
 * 无党派人士Service业务层处理
 *
 * @author party-platform
 * @date 2020-10-24
 */
@Service
public class NonPartyServiceImpl implements INonPartyService {
    @Autowired
    private NonPartyMapper nonPartyMapper;

    /**
     * 查询无党派人士
     *
     * @param nonPartyId 无党派人士ID
     * @return 无党派人士
     */
    @Override
    public NonParty selectNonPartyById(Long nonPartyId) {
        return nonPartyMapper.selectNonPartyById(nonPartyId);
    }

    /**
     * 查询无党派人士列表
     *
     * @param nonParty 无党派人士
     * @return 无党派人士
     */
    @Override
    public List<NonParty> selectNonPartyList(NonParty nonParty) {
        return nonPartyMapper.selectNonPartyList(nonParty);
    }

    /**
     * 新增无党派人士
     *
     * @param nonParty 无党派人士
     * @return 结果
     */
    @Override
    public int insertNonParty(NonParty nonParty) {
        nonParty.setCreateTime(DateUtils.getNowDate());
        nonParty.setCreateBy(ShiroUtils.getLoginName());
        nonParty.setUpdateBy(ShiroUtils.getLoginName());
        nonParty.setUpdateTime(DateUtils.getNowDate());
        return nonPartyMapper.insertNonParty(nonParty);
    }

    /**
     * 修改无党派人士
     *
     * @param nonParty 无党派人士
     * @return 结果
     */
    @Override
    public int updateNonParty(NonParty nonParty) {
        nonParty.setUpdateTime(DateUtils.getNowDate());
        return nonPartyMapper.updateNonParty(nonParty);
    }

    /**
     * 删除无党派人士对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteNonPartyByIds(String ids) {
        return nonPartyMapper.deleteNonPartyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除无党派人士信息
     *
     * @param nonPartyId 无党派人士ID
     * @return 结果
     */
    @Override
    public int deleteNonPartyById(Long nonPartyId) {
        return nonPartyMapper.deleteNonPartyById(nonPartyId);
    }
}

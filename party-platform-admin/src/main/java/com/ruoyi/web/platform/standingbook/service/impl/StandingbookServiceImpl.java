package com.ruoyi.web.platform.standingbook.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.standingbook.mapper.StandingbookMapper;
import com.ruoyi.web.platform.standingbook.domain.Standingbook;
import com.ruoyi.web.platform.standingbook.service.IStandingbookService;
import com.ruoyi.common.core.text.Convert;

/**
 * 台账Service业务层处理
 * 
 * @author party-platform
 * @date 2020-10-24
 */
@Service
public class StandingbookServiceImpl implements IStandingbookService 
{
    @Autowired
    private StandingbookMapper standingbookMapper;

    /**
     * 查询台账
     * 
     * @param standingbookId 台账ID
     * @return 台账
     */
    @Override
    public Standingbook selectStandingbookById(Long standingbookId)
    {
        return standingbookMapper.selectStandingbookById(standingbookId);
    }

    /**
     * 查询台账列表
     * 
     * @param standingbook 台账
     * @return 台账
     */
    @Override
    public List<Standingbook> selectStandingbookList(Standingbook standingbook)
    {
        return standingbookMapper.selectStandingbookList(standingbook);
    }

    /**
     * 新增台账
     * 
     * @param standingbook 台账
     * @return 结果
     */
    @Override
    public int insertStandingbook(Standingbook standingbook)
    {
        standingbook.setCreateTime(DateUtils.getNowDate());
        return standingbookMapper.insertStandingbook(standingbook);
    }

    /**
     * 修改台账
     * 
     * @param standingbook 台账
     * @return 结果
     */
    @Override
    public int updateStandingbook(Standingbook standingbook)
    {
        standingbook.setUpdateTime(DateUtils.getNowDate());
        return standingbookMapper.updateStandingbook(standingbook);
    }

    /**
     * 删除台账对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteStandingbookByIds(String ids)
    {
        return standingbookMapper.deleteStandingbookByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除台账信息
     * 
     * @param standingbookId 台账ID
     * @return 结果
     */
    @Override
    public int deleteStandingbookById(Long standingbookId)
    {
        return standingbookMapper.deleteStandingbookById(standingbookId);
    }

    /**
     * 修改教职工所属支部
     *
     * @param standingbookId
     * @param standingbookBranchNumber
     */
    @Override
    public void standingbookBranchNameEdit(Long standingbookId, String standingbookBranchNumber) {
        Standingbook standingbook = standingbookMapper.selectStandingbookById(standingbookId);
        standingbook.setStandingbookBranchNumber(standingbookBranchNumber);
        standingbookMapper.updateStandingbook(standingbook);
    }
}

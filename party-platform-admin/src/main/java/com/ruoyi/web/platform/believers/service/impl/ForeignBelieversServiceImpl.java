package com.ruoyi.web.platform.believers.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.framework.util.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.believers.mapper.ForeignBelieversMapper;
import com.ruoyi.web.platform.believers.domain.ForeignBelievers;
import com.ruoyi.web.platform.believers.service.IForeignBelieversService;
import com.ruoyi.common.core.text.Convert;

/**
 * 信宗教外教专家Service业务层处理
 * 
 * @author party-platform
 * @date 2020-11-07
 */
@Service
public class ForeignBelieversServiceImpl implements IForeignBelieversService 
{
    @Autowired
    private ForeignBelieversMapper foreignBelieversMapper;

    /**
     * 查询信宗教外教专家
     * 
     * @param foreignNumberId 信宗教外教专家ID
     * @return 信宗教外教专家
     */
    @Override
    public ForeignBelievers selectForeignBelieversById(Long foreignNumberId)
    {
        return foreignBelieversMapper.selectForeignBelieversById(foreignNumberId);
    }

    /**
     * 查询信宗教外教专家列表
     * 
     * @param foreignBelievers 信宗教外教专家
     * @return 信宗教外教专家
     */
    @Override
    public List<ForeignBelievers> selectForeignBelieversList(ForeignBelievers foreignBelievers)
    {
        return foreignBelieversMapper.selectForeignBelieversList(foreignBelievers);
    }

    /**
     * 新增信宗教外教专家
     * 
     * @param foreignBelievers 信宗教外教专家
     * @return 结果
     */
    @Override
    public int insertForeignBelievers(ForeignBelievers foreignBelievers)
    {
                                                                                                                                                                                            foreignBelievers.setCreateTime(DateUtils.getNowDate());
                foreignBelievers.setUpdateTime(DateUtils.getNowDate());
                foreignBelievers.setCreateBy(ShiroUtils.getLoginName());
                foreignBelievers.setUpdateBy(ShiroUtils.getLoginName());
                return foreignBelieversMapper.insertForeignBelievers(foreignBelievers);
    }

    /**
     * 修改信宗教外教专家
     * 
     * @param foreignBelievers 信宗教外教专家
     * @return 结果
     */
    @Override
    public int updateForeignBelievers(ForeignBelievers foreignBelievers)
    {       foreignBelievers.setUpdateTime(DateUtils.getNowDate());
            foreignBelievers.setUpdateBy(ShiroUtils.getLoginName());
            return foreignBelieversMapper.updateForeignBelievers(foreignBelievers);
    }

    /**
     * 删除信宗教外教专家对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteForeignBelieversByIds(String ids)
    {
        return foreignBelieversMapper.deleteForeignBelieversByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除信宗教外教专家信息
     * 
     * @param foreignNumberId 信宗教外教专家ID
     * @return 结果
     */
    @Override
    public int deleteForeignBelieversById(Long foreignNumberId)
    {
        return foreignBelieversMapper.deleteForeignBelieversById(foreignNumberId);
    }
}

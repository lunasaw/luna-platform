package com.ruoyi.web.platform.believers.service;

import java.util.List;
import com.ruoyi.web.platform.believers.domain.ForeignBelievers;

/**
 * 信宗教外教专家Service接口
 * 
 * @author party-platform
 * @date 2020-11-07
 */
public interface IForeignBelieversService 
{
    /**
     * 查询信宗教外教专家
     * 
     * @param foreignNumberId 信宗教外教专家ID
     * @return 信宗教外教专家
     */
    public ForeignBelievers selectForeignBelieversById(Long foreignNumberId);

    /**
     * 查询信宗教外教专家列表
     * 
     * @param foreignBelievers 信宗教外教专家
     * @return 信宗教外教专家集合
     */
    public List<ForeignBelievers> selectForeignBelieversList(ForeignBelievers foreignBelievers);

    /**
     * 新增信宗教外教专家
     * 
     * @param foreignBelievers 信宗教外教专家
     * @return 结果
     */
    public int insertForeignBelievers(ForeignBelievers foreignBelievers);

    /**
     * 修改信宗教外教专家
     * 
     * @param foreignBelievers 信宗教外教专家
     * @return 结果
     */
    public int updateForeignBelievers(ForeignBelievers foreignBelievers);

    /**
     * 批量删除信宗教外教专家
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteForeignBelieversByIds(String ids);

    /**
     * 删除信宗教外教专家信息
     * 
     * @param foreignNumberId 信宗教外教专家ID
     * @return 结果
     */
    public int deleteForeignBelieversById(Long foreignNumberId);
}

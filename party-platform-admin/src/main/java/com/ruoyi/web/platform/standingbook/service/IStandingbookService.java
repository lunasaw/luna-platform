package com.ruoyi.web.platform.standingbook.service;

import java.util.List;
import com.ruoyi.web.platform.standingbook.domain.Standingbook;

/**
 * 台账Service接口
 * 
 * @author party-platform
 * @date 2020-10-24
 */
public interface IStandingbookService 
{
    /**
     * 查询台账
     * 
     * @param standingbookId 台账ID
     * @return 台账
     */
    public Standingbook selectStandingbookById(Long standingbookId);

    /**
     * 查询台账列表
     * 
     * @param standingbook 台账
     * @return 台账集合
     */
    public List<Standingbook> selectStandingbookList(Standingbook standingbook);

    /**
     * 新增台账
     * 
     * @param standingbook 台账
     * @return 结果
     */
    public int insertStandingbook(Standingbook standingbook);

    /**
     * 修改台账
     * 
     * @param standingbook 台账
     * @return 结果
     */
    public int updateStandingbook(Standingbook standingbook);

    /**
     * 批量删除台账
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteStandingbookByIds(String ids);

    /**
     * 删除台账信息
     * 
     * @param standingbookId 台账ID
     * @return 结果
     */
    public int deleteStandingbookById(Long standingbookId);

    /**
     * 通过教职工id修改所属支部
     *
     * @param standingbookId
     * @param standingbookBranchNumber
     */
    void standingbookBranchNameEdit(Long standingbookId,String standingbookBranchNumber);
}

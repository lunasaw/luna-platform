package com.ruoyi.web.platform.standingbook.mapper;

import java.util.List;
import com.ruoyi.web.platform.standingbook.domain.Standingbook;

/**
 * 台账Mapper接口
 * 
 * @author party-platform
 * @date 2020-10-24
 */
public interface StandingbookMapper 
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
     * 通过台账名查询台账
     *
     * @param standingbookName 用户名
     * @return 用户对象信息
     */
    public Standingbook selectStandingbookByName(String standingbookName);

    /**
     * 修改台账
     * 
     * @param standingbook 台账
     * @return 结果
     */
    public int updateStandingbook(Standingbook standingbook);

    /**
     * 删除台账
     * 
     * @param standingbookId 台账ID
     * @return 结果
     */
    public int deleteStandingbookById(Long standingbookId);

    /**
     * 批量删除台账
     * 
     * @param standingbookIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteStandingbookByIds(String[] standingbookIds);
}

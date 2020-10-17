package com.ruoyi.web.platform.facultySummary.mapper;

import java.util.List;
import com.ruoyi.web.platform.facultySummary.domain.FacultySummary;

/**
 * 教职工汇总Mapper接口
 * 
 * @author party-platform
 * @date 2020-10-16
 */
public interface FacultySummaryMapper 
{
    /**
     * 查询教职工汇总
     * 
     * @param facultyId 教职工汇总ID
     * @return 教职工汇总
     */
    public FacultySummary selectFacultySummaryById(Long facultyId);

    /**
     * 查询教职工汇总列表
     * 
     * @param facultySummary 教职工汇总
     * @return 教职工汇总集合
     */
    public List<FacultySummary> selectFacultySummaryList(FacultySummary facultySummary);

    /**
     * 通过用户名查询用户
     *
     * @param facultyName 用户名
     * @return 用户对象信息
     */
    public FacultySummary selectFacultySummaryByName(String facultyName);

    /**
     * 新增教职工汇总
     * 
     * @param facultySummary 教职工汇总
     * @return 结果
     */
    public int insertFacultySummary(FacultySummary facultySummary);

    /**
     * 修改教职工汇总
     * 
     * @param facultySummary 教职工汇总
     * @return 结果
     */
    public int updateFacultySummary(FacultySummary facultySummary);

    /**
     * 删除教职工汇总
     * 
     * @param facultyId 教职工汇总ID
     * @return 结果
     */
    public int deleteFacultySummaryById(Long facultyId);

    /**
     * 批量删除教职工汇总
     * 
     * @param facultyIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteFacultySummaryByIds(String[] facultyIds);
}

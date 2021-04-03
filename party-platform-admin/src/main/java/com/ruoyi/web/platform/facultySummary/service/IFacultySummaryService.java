package com.ruoyi.web.platform.facultySummary.service;

import java.util.List;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.web.platform.facultySummary.domain.FacultySummary;

/**
 * 教职工汇总Service接口
 * 
 * @author party-platform
 * @date 2020-10-16
 */
public interface IFacultySummaryService 
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
     * 导入用户数据
     *
     * @param userList 党员数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName 操作用户
     * @return 结果
     */
    public String importFacultySummary(List<FacultySummary> userList, Boolean isUpdateSupport, String operName);

    /**
     * 导出用户数据
     *
     * @param facultySummarys
     * @return
     */
    public AjaxResult exportFacultySummarys(FacultySummary facultySummarys);


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
     * 批量删除教职工汇总
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteFacultySummaryByIds(String ids);

    /**
     * 删除教职工汇总信息
     * 
     * @param facultyId 教职工汇总ID
     * @return 结果
     */
    public int deleteFacultySummaryById(Long facultyId);

    /**
     * 通过教职工id修改所属支部
     *
     * @param facultyId
     * @param facultyBranchNumber
     */
    void facultyBranchNameEdit(Long facultyId,String facultyBranchNumber);
}

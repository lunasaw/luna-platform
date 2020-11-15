package com.ruoyi.web.platform.religion.service;

import java.util.List;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.web.platform.partyInfo.domain.PartyInfo;
import com.ruoyi.web.platform.religion.domain.Religion;

/**
 * 留学人员Service接口
 *
 * @author party-platform
 * @date 2020-11-15
 */
public interface IReligionService {
    /**
     * 查询留学人员
     *
     * @param religionId 留学人员ID
     * @return 留学人员
     */
    public Religion selectReligionById(Long religionId);

    /**
     * 查询留学人员列表
     *
     * @param religion 留学人员
     * @return 留学人员集合
     */
    public List<Religion> selectReligionList(Religion religion);

    /**
     * 导入用户数据
     *
     * @param religionList  党员数据列表
     * @param updateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName      操作用户
     * @return 结果
     */
    public String importReligion(List<Religion> religionList, boolean updateSupport, String operName);

    /**
     * 导出数据
     *
     * @param religion
     * @return
     */
    public AjaxResult exportReligion(Religion religion);

    /**
     * 新增留学人员
     *
     * @param religion 留学人员
     * @return 结果
     */
    public int insertReligion(Religion religion);

    /**
     * 修改留学人员
     *
     * @param religion 留学人员
     * @return 结果
     */
    public int updateReligion(Religion religion);

    /**
     * 批量删除留学人员
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteReligionByIds(String ids);

    /**
     * 删除留学人员信息
     *
     * @param religionId 留学人员ID
     * @return 结果
     */
    public int deleteReligionById(Long religionId);


}

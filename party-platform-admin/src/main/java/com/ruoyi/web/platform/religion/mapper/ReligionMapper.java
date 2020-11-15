package com.ruoyi.web.platform.religion.mapper;

import java.util.List;

import com.ruoyi.web.platform.religion.domain.Religion;

/**
 * 留学人员Mapper接口
 *
 * @author party-platform
 * @date 2020-11-15
 */
public interface ReligionMapper {
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
     * 新增留学人员
     *
     * @param religion 留学人员
     * @return 结果
     */
    public int insertReligion(Religion religion);

    /**
     * 名字查询留学人员
     *
     * @param name
     * @return
     */
    public Religion selectReligionByName(String name);

    /**
     * 修改留学人员
     *
     * @param religion 留学人员
     * @return 结果
     */
    public int updateReligion(Religion religion);

    /**
     * 删除留学人员
     *
     * @param religionId 留学人员ID
     * @return 结果
     */
    public int deleteReligionById(Long religionId);

    /**
     * 批量删除留学人员
     *
     * @param religionIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteReligionByIds(String[] religionIds);
}

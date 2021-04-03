package com.ruoyi.web.platform.member.service;

import java.util.List;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.web.platform.member.domain.OverseasStudyMember;

/**
 * 留学归国人员Service接口
 *
 * @author party-platform
 * @date 2020-10-24
 */
public interface IOverseasStudyMemberService {
    /**
     * 查询留学归国人员
     *
     * @param overseasId 留学归国人员ID
     * @return 留学归国人员
     */
    public OverseasStudyMember selectOverseasStudyMemberById(Long overseasId);

    /**
     * 查询留学归国人员列表
     *
     * @param overseasStudyMember 留学归国人员
     * @return 留学归国人员集合
     */
    public List<OverseasStudyMember> selectOverseasStudyMemberList(OverseasStudyMember overseasStudyMember);

    /**
     * 导入留学归国人员数据
     *
     * @param overseasStudyMemberList 留学归国人员数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName 操作用户
     * @return 结果
     */
    public String importOverseasStudyMember(List<OverseasStudyMember> overseasStudyMemberList, Boolean isUpdateSupport, String operName);

    /**
     * 导出留学归国人员数据
     *
     * @param overseasStudyMembers
     * @return
     */
    public AjaxResult exportOverseasStudyMembers(OverseasStudyMember overseasStudyMembers);


    /**
     * 新增留学归国人员
     *
     * @param overseasStudyMember 留学归国人员
     * @return 结果
     */
    public int insertOverseasStudyMember(OverseasStudyMember overseasStudyMember);

    /**
     * 修改留学归国人员
     *
     * @param overseasStudyMember 留学归国人员
     * @return 结果
     */
    public int updateOverseasStudyMember(OverseasStudyMember overseasStudyMember);

    /**
     * 批量删除留学归国人员
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteOverseasStudyMemberByIds(String ids);

    /**
     * 删除留学归国人员信息
     *
     * @param overseasId 留学归国人员ID
     * @return 结果
     */
    public int deleteOverseasStudyMemberById(Long overseasId);
}

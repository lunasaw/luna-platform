package com.ruoyi.web.platform.member.mapper;

import java.util.List;

import com.ruoyi.web.platform.member.domain.OverseasStudyMember;

/**
 * 留学归国人员Mapper接口
 *
 * @author party-platform
 * @date 2020-10-24
 */
public interface OverseasStudyMemberMapper {
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
     * 通过留学归国人员名查询台账
     *
     * @param overseasStudyMemberName 留学归国人员名
     * @return 用户对象信息
     */
    public OverseasStudyMember selectOverseasStudyMemberByName(String overseasStudyMemberName);

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
     * 删除留学归国人员
     *
     * @param overseasId 留学归国人员ID
     * @return 结果
     */
    public int deleteOverseasStudyMemberById(Long overseasId);

    /**
     * 批量删除留学归国人员
     *
     * @param overseasIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteOverseasStudyMemberByIds(String[] overseasIds);
}

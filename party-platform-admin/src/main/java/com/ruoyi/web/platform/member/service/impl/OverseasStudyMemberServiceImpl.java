package com.ruoyi.web.platform.member.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.framework.util.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.member.mapper.OverseasStudyMemberMapper;
import com.ruoyi.web.platform.member.domain.OverseasStudyMember;
import com.ruoyi.web.platform.member.service.IOverseasStudyMemberService;
import com.ruoyi.common.core.text.Convert;

/**
 * 留学归国人员Service业务层处理
 *
 * @author party-platform
 * @date 2020-10-24
 */
@Service
public class OverseasStudyMemberServiceImpl implements IOverseasStudyMemberService {
    @Autowired
    private OverseasStudyMemberMapper overseasStudyMemberMapper;

    /**
     * 查询留学归国人员
     *
     * @param overseasId 留学归国人员ID
     * @return 留学归国人员
     */
    @Override
    public OverseasStudyMember selectOverseasStudyMemberById(Long overseasId) {
        return overseasStudyMemberMapper.selectOverseasStudyMemberById(overseasId);
    }

    /**
     * 查询留学归国人员列表
     *
     * @param overseasStudyMember 留学归国人员
     * @return 留学归国人员
     */
    @Override
    public List<OverseasStudyMember> selectOverseasStudyMemberList(OverseasStudyMember overseasStudyMember) {
        return overseasStudyMemberMapper.selectOverseasStudyMemberList(overseasStudyMember);
    }

    /**
     * 新增留学归国人员
     *
     * @param overseasStudyMember 留学归国人员
     * @return 结果
     */
    @Override
    public int insertOverseasStudyMember(OverseasStudyMember overseasStudyMember) {
        overseasStudyMember.setCreateTime(DateUtils.getNowDate());
        overseasStudyMember.setCreateBy(ShiroUtils.getLoginName());
        overseasStudyMember.setUpdateTime(DateUtils.getNowDate());
        return overseasStudyMemberMapper.insertOverseasStudyMember(overseasStudyMember);
    }

    /**
     * 修改留学归国人员
     *
     * @param overseasStudyMember 留学归国人员
     * @return 结果
     */
    @Override
    public int updateOverseasStudyMember(OverseasStudyMember overseasStudyMember) {
        overseasStudyMember.setUpdateTime(DateUtils.getNowDate());
        overseasStudyMember.setUpdateBy(ShiroUtils.getLoginName());
        return overseasStudyMemberMapper.updateOverseasStudyMember(overseasStudyMember);
    }

    /**
     * 删除留学归国人员对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteOverseasStudyMemberByIds(String ids) {
        return overseasStudyMemberMapper.deleteOverseasStudyMemberByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除留学归国人员信息
     *
     * @param overseasId 留学归国人员ID
     * @return 结果
     */
    @Override
    public int deleteOverseasStudyMemberById(Long overseasId) {
        return overseasStudyMemberMapper.deleteOverseasStudyMemberById(overseasId);
    }
}

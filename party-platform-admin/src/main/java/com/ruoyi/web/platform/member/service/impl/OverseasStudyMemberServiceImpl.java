package com.ruoyi.web.platform.member.service.impl;

import java.util.List;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.exception.BusinessException;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.web.platform.member.OverseasStudyMemberConstant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
    private static final Logger log = LoggerFactory.getLogger(OverseasStudyMemberServiceImpl.class);

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
     * 导入留学归国人员数据
     *
     * @param overseasStudyMemberList 留学归国人员数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName 操作用户
     * @return 结果
     */
    @Override
    public String importOverseasStudyMember(List<OverseasStudyMember> overseasStudyMemberList, Boolean isUpdateSupport, String operName) {
        if (StringUtils.isNull(overseasStudyMemberList) || overseasStudyMemberList.size() == 0) {
            throw new BusinessException("导入用户数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        for (OverseasStudyMember overseasStudyMember : overseasStudyMemberList) {
            //性别
            if (StringUtils.equals(overseasStudyMember.getOverseasName(), OverseasStudyMemberConstant.MAN)) {
                overseasStudyMember.setOverseasName("0");
            } else if (StringUtils.equals(overseasStudyMember.getOverseasName(), OverseasStudyMemberConstant.WOMAN)) {
                overseasStudyMember.setOverseasName("1");
            } else if (StringUtils.equals(overseasStudyMember.getOverseasName(), OverseasStudyMemberConstant.NOT_KNOW)) {
                overseasStudyMember.setOverseasName("2");
            }

            try {
                // 验证是否存在这个用户
                OverseasStudyMember overseasStudyMember1ByName = overseasStudyMemberMapper.selectOverseasStudyMemberByName(overseasStudyMember.getOverseasName());
                if (StringUtils.isNull(overseasStudyMember1ByName)) {
                    insertOverseasStudyMember(overseasStudyMember);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + overseasStudyMember.getOverseasCollege() + " 导入成功");
                } else if (isUpdateSupport) {
                    overseasStudyMember.setOverseasId(overseasStudyMember1ByName.getOverseasId());
                    updateOverseasStudyMember(overseasStudyMember);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + overseasStudyMember.getOverseasCollege() + " 更新成功");
                } else {
                    failureNum++;
                    failureMsg.append("<br/>" + failureNum + "、账号 " + overseasStudyMember.getOverseasCollege() + " 已存在");
                }
            } catch (Exception e) {
                failureNum++;
                String msg = "<br/>" + failureNum + "、账号 " + overseasStudyMember.getOverseasCollege() + " 导入失败：";
                failureMsg.append(msg + e.getMessage());
                log.error(msg, e);
            }
        }
        if (failureNum > 0) {
            failureMsg.insert(0, "很抱歉，导入失败！共 " + failureNum + " 条数据格式不正确，错误如下：");
            throw new BusinessException(failureMsg.toString());
        } else {
            successMsg.insert(0, "恭喜您，数据已全部导入成功！共 " + successNum + " 条，数据如下：");
        }
        return successMsg.toString();
    }

    /**
     * 导出数据
     *
     * @param overseasStudyMembers
     * @return
     */
    @Override
    public AjaxResult exportOverseasStudyMembers(OverseasStudyMember overseasStudyMembers) {
        List<OverseasStudyMember> list = overseasStudyMemberMapper.selectOverseasStudyMemberList(overseasStudyMembers);
        for (OverseasStudyMember partyOverseasStudyMember : list) {
            if (StringUtils.equals(partyOverseasStudyMember.getOverseasName(), OverseasStudyMemberConstant.MAN_NUM)) {
                partyOverseasStudyMember.setOverseasName(OverseasStudyMemberConstant.MAN);
            } else if (StringUtils.equals(partyOverseasStudyMember.getOverseasName(), OverseasStudyMemberConstant.WOMAN_NUM)) {
                partyOverseasStudyMember.setOverseasName(OverseasStudyMemberConstant.WOMAN);
            } else if (StringUtils.equals(partyOverseasStudyMember.getOverseasName(), OverseasStudyMemberConstant.NOT_KNOW_MUM)) {
                partyOverseasStudyMember.setOverseasName(OverseasStudyMemberConstant.NOT_KNOW);
            }

        }

        ExcelUtil<OverseasStudyMember> util = new ExcelUtil<OverseasStudyMember>(OverseasStudyMember.class);
        return util.exportExcel(list, "overseasStudyMemberMapper");
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

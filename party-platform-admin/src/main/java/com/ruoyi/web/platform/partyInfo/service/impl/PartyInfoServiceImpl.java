package com.ruoyi.web.platform.partyInfo.service.impl;

import java.util.List;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.exception.BusinessException;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.config.ShiroConfig;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.SysDept;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.web.platform.partyInfo.PartyInfoConstant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.partyInfo.mapper.PartyInfoMapper;
import com.ruoyi.web.platform.partyInfo.domain.PartyInfo;
import com.ruoyi.web.platform.partyInfo.service.IPartyInfoService;
import com.ruoyi.common.core.text.Convert;

/**
 * 党员信息Service业务层处理
 *
 * @author party-platform
 * @date 2020-10-10
 */
@Service
public class PartyInfoServiceImpl implements IPartyInfoService {
    private static final Logger log = LoggerFactory.getLogger(PartyInfoServiceImpl.class);

    @Autowired
    private PartyInfoMapper     partyInfoMapper;

    /**
     * 查询党员信息
     *
     * @param partyId 党员信息ID
     * @return 党员信息
     */
    @Override
    public PartyInfo selectPartyInfoById(Long partyId) {
        return partyInfoMapper.selectPartyInfoById(partyId);
    }

    /**
     * 查询党员信息列表
     *
     * @param partyInfo 党员信息
     * @return 党员信息
     */
    @Override
    public List<PartyInfo> selectPartyInfoList(PartyInfo partyInfo) {
        SysUser sysUser = ShiroUtils.getSysUser();
        return partyInfoMapper.selectPartyInfoList(partyInfo);
    }

    /**
     * 导出数据
     *
     * @param partyInfo
     * @return
     */
    @Override
    public AjaxResult exportPartyInfoList(PartyInfo partyInfo) {
        List<PartyInfo> list = partyInfoMapper.selectPartyInfoList(partyInfo);
        for (PartyInfo partyInfoOne : list) {
            if (StringUtils.equals(partyInfoOne.getPartySex(), PartyInfoConstant.MAN_NUM)) {
                partyInfoOne.setPartySex(PartyInfoConstant.MAN);
            } else if (StringUtils.equals(partyInfoOne.getPartySex(), PartyInfoConstant.WOMAN_NUM)) {
                partyInfoOne.setPartySex(PartyInfoConstant.WOMAN);
            } else if (StringUtils.equals(partyInfoOne.getPartySex(), PartyInfoConstant.NOT_KNOW_MUM)) {
                partyInfoOne.setPartySex(PartyInfoConstant.NOT_KNOW);
            }

            // 入党申请书
            if (StringUtils.equals(partyInfoOne.getPartyJoinApplication(), PartyInfoConstant.HAS_SUBMIT_NUM)) {
                partyInfoOne.setPartyJoinApplication(PartyInfoConstant.HAS_SUBMIT);
            } else if (StringUtils.equals(partyInfoOne.getPartyJoinApplication(),
                PartyInfoConstant.NOT_HAS_SUBMIT_NUM)) {
                partyInfoOne.setPartyJoinApplication(PartyInfoConstant.NOT_HAS_SUBMIT);
            } else {
                partyInfoOne.setPartyJoinApplication(PartyInfoConstant.NOT_HAS_SUBMIT);
            }

            // 预备党员考察表
            if (StringUtils.equals(partyInfoOne.getPartyInspect(), PartyInfoConstant.HAS_SUBMIT_NUM)) {
                partyInfoOne.setPartyInspect(PartyInfoConstant.HAS_SUBMIT);
            } else if (StringUtils.equals(partyInfoOne.getPartyInspect(), PartyInfoConstant.NOT_HAS_SUBMIT_NUM)) {
                partyInfoOne.setPartyInspect(PartyInfoConstant.NOT_HAS_SUBMIT);
            } else {
                partyInfoOne.setPartyInspect(PartyInfoConstant.NOT_HAS_SUBMIT);
            }

            // 转正申请书
            if (StringUtils.equals(partyInfoOne.getPartyFormalApplication(), PartyInfoConstant.HAS_SUBMIT_NUM)) {
                partyInfoOne.setPartyFormalApplication(PartyInfoConstant.HAS_SUBMIT);
            } else if (StringUtils.equals(partyInfoOne.getPartyFormalApplication(),
                PartyInfoConstant.NOT_HAS_SUBMIT_NUM)) {
                partyInfoOne.setPartyFormalApplication(PartyInfoConstant.NOT_HAS_SUBMIT);
            } else {
                partyInfoOne.setPartyFormalApplication(PartyInfoConstant.NOT_HAS_SUBMIT);
            }

            // 思想报告
            if (StringUtils.equals(partyInfoOne.getPartyThoughtReport(), PartyInfoConstant.HAS_SUBMIT_NUM)) {
                partyInfoOne.setPartyThoughtReport(PartyInfoConstant.HAS_SUBMIT);
            } else if (StringUtils.equals(partyInfoOne.getPartyThoughtReport(), PartyInfoConstant.NOT_HAS_SUBMIT_NUM)) {
                partyInfoOne.setPartyThoughtReport(PartyInfoConstant.NOT_HAS_SUBMIT);
            } else {
                partyInfoOne.setPartyThoughtReport(PartyInfoConstant.NOT_HAS_SUBMIT);
            }
        }

        ExcelUtil<PartyInfo> util = new ExcelUtil<PartyInfo>(PartyInfo.class);
        return util.exportExcel(list, "partyInfo");
    }

    /**
     * 导入用户数据
     *
     * @param partyInfoList 用户数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName 操作用户
     * @return 结果
     */
    @Override
    public String importPartyInfo(List<PartyInfo> partyInfoList, Boolean isUpdateSupport, String operName) {
        if (StringUtils.isNull(partyInfoList) || partyInfoList.size() == 0) {
            throw new BusinessException("导入用户数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        for (PartyInfo partyInfo : partyInfoList) {
            if (StringUtils.equals(partyInfo.getPartySex(), PartyInfoConstant.MAN)) {
                partyInfo.setPartySex("0");
            } else if (StringUtils.equals(partyInfo.getPartySex(), PartyInfoConstant.WOMAN)) {
                partyInfo.setPartySex("1");
            } else if (StringUtils.equals(partyInfo.getPartySex(), PartyInfoConstant.NOT_KNOW)) {
                partyInfo.setPartySex("2");
            }

            // 入党申请书
            if (StringUtils.equals(partyInfo.getPartyJoinApplication(), PartyInfoConstant.HAS_SUBMIT)) {
                partyInfo.setPartyJoinApplication("1");
            } else if (StringUtils.equals(partyInfo.getPartyJoinApplication(), PartyInfoConstant.NOT_HAS_SUBMIT)) {
                partyInfo.setPartyJoinApplication("0");
            } else {
                partyInfo.setPartyJoinApplication("0");
            }

            // 预备党员考察表
            if (StringUtils.equals(partyInfo.getPartyInspect(), PartyInfoConstant.HAS_SUBMIT)) {
                partyInfo.setPartyInspect("1");
            } else if (StringUtils.equals(partyInfo.getPartyInspect(), PartyInfoConstant.NOT_HAS_SUBMIT)) {
                partyInfo.setPartyInspect("0");
            } else {
                partyInfo.setPartyInspect("0");
            }

            // 转正申请书
            if (StringUtils.equals(partyInfo.getPartyFormalApplication(), PartyInfoConstant.HAS_SUBMIT)) {
                partyInfo.setPartyFormalApplication("1");
            } else if (StringUtils.equals(partyInfo.getPartyFormalApplication(), PartyInfoConstant.NOT_HAS_SUBMIT)) {
                partyInfo.setPartyFormalApplication("0");
            } else {
                partyInfo.setPartyFormalApplication("0");
            }

            // 思想报告
            if (StringUtils.equals(partyInfo.getPartyThoughtReport(), PartyInfoConstant.HAS_SUBMIT)) {
                partyInfo.setPartyThoughtReport("1");
            } else if (StringUtils.equals(partyInfo.getPartyThoughtReport(), PartyInfoConstant.NOT_HAS_SUBMIT)) {
                partyInfo.setPartyThoughtReport("0");
            } else {
                partyInfo.setPartyThoughtReport("0");
            }

            try {
                // 验证是否存在这个用户
                PartyInfo partyInfoByName = partyInfoMapper.selectPartyInfoByName(partyInfo.getPartyName());
                if (StringUtils.isNull(partyInfoByName)) {
                    insertPartyInfo(partyInfo);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + partyInfo.getPartyName() + " 导入成功");
                } else if (isUpdateSupport) {
                    partyInfo.setPartyId(partyInfoByName.getPartyId());
                    updatePartyInfo(partyInfo);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + partyInfo.getPartyName() + " 更新成功");
                } else {
                    failureNum++;
                    failureMsg.append("<br/>" + failureNum + "、账号 " + partyInfo.getPartyName() + " 已存在");
                }
            } catch (Exception e) {
                failureNum++;
                String msg = "<br/>" + failureNum + "、账号 " + partyInfo.getPartyName() + " 导入失败：";
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
     * 新增党员信息
     *
     * @param partyInfo 党员信息
     * @return 结果
     */
    @Override
    public int insertPartyInfo(PartyInfo partyInfo) {
        partyInfo.setCreateTime(DateUtils.getNowDate());
        return partyInfoMapper.insertPartyInfo(partyInfo);
    }

    /**
     * 修改党员信息
     *
     * @param partyInfo 党员信息
     * @return 结果
     */
    @Override
    public int updatePartyInfo(PartyInfo partyInfo) {
        partyInfo.setUpdateTime(DateUtils.getNowDate());
        return partyInfoMapper.updatePartyInfo(partyInfo);
    }

    /**
     * 删除党员信息对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePartyInfoByIds(String ids) {
        return partyInfoMapper.deletePartyInfoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除党员信息信息
     *
     * @param partyId 党员信息ID
     * @return 结果
     */
    @Override
    public int deletePartyInfoById(Long partyId) {
        return partyInfoMapper.deletePartyInfoById(partyId);
    }
}

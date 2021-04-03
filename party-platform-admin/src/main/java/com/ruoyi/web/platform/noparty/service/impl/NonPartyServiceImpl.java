package com.ruoyi.web.platform.noparty.service.impl;

import java.util.Date;
import java.util.List;

import com.ruoyi.common.exception.BusinessException;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.util.ShiroUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.noparty.mapper.NonPartyMapper;
import com.ruoyi.web.platform.noparty.domain.NonParty;
import com.ruoyi.web.platform.noparty.service.INonPartyService;
import com.ruoyi.common.core.text.Convert;

/**
 * 无党派人士Service业务层处理
 *
 * @author party-platform
 * @date 2020-10-24
 */
@Service
public class NonPartyServiceImpl implements INonPartyService {
    private static final Logger log = LoggerFactory.getLogger(NonPartyServiceImpl.class);

    @Autowired
    private NonPartyMapper nonPartyMapper;

    /**
     * 查询无党派人士
     *
     * @param nonPartyId 无党派人士ID
     * @return 无党派人士
     */
    @Override
    public NonParty selectNonPartyById(Long nonPartyId) {
        return nonPartyMapper.selectNonPartyById(nonPartyId);
    }

    /**
     * 查询无党派人士列表
     *
     * @param nonParty 无党派人士
     * @return 无党派人士
     */
    @Override
    public List<NonParty> selectNonPartyList(NonParty nonParty) {
        return nonPartyMapper.selectNonPartyList(nonParty);
    }

    /**
     * 导入无党派人士数据
     *
     * @param nonPartyList 无党派人士数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName 操作用户
     * @return 结果
     */
    @Override
    public String importNonParty(List<NonParty> nonPartyList, Boolean isUpdateSupport, String operName) {
        if (StringUtils.isNull(nonPartyList) || nonPartyList.size() == 0) {
            throw new BusinessException("导入用户数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        for (NonParty nonParty : nonPartyList) {
            try {
                // 验证是否存在这个用户
                NonParty nonParty1ByName = nonPartyMapper.selectNonPartyByName(nonParty.getNonPartyName());
                if (StringUtils.isNull(nonParty1ByName)) {
                    insertNonParty(nonParty);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + nonParty.getNonPartyName() + " 导入成功");
                } else if (isUpdateSupport) {
                    nonParty.setNonPartyId(nonParty1ByName.getNonPartyId());
                    updateNonParty(nonParty);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + nonParty.getNonPartyName() + " 更新成功");
                } else {
                    failureNum++;
                    failureMsg.append("<br/>" + failureNum + "、账号 " + nonParty.getNonPartyName() + " 已存在");
                }
            } catch (Exception e) {
                failureNum++;
                String msg = "<br/>" + failureNum + "、账号 " + nonParty.getNonPartyName() + " 导入失败：";
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
     * 新增无党派人士
     *
     * @param nonParty 无党派人士
     * @return 结果
     */
    @Override
    public int insertNonParty(NonParty nonParty) {
        nonParty.setCreateTime(DateUtils.getNowDate());
        nonParty.setCreateBy(ShiroUtils.getLoginName());
        nonParty.setUpdateBy(ShiroUtils.getLoginName());
        nonParty.setUpdateTime(DateUtils.getNowDate());
        return nonPartyMapper.insertNonParty(nonParty);
    }

    /**
     * 修改无党派人士
     *
     * @param nonParty 无党派人士
     * @return 结果
     */
    @Override
    public int updateNonParty(NonParty nonParty) {
        nonParty.setUpdateTime(DateUtils.getNowDate());
        return nonPartyMapper.updateNonParty(nonParty);
    }

    /**
     * 删除无党派人士对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteNonPartyByIds(String ids) {
        return nonPartyMapper.deleteNonPartyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除无党派人士信息
     *
     * @param nonPartyId 无党派人士ID
     * @return 结果
     */
    @Override
    public int deleteNonPartyById(Long nonPartyId) {
        return nonPartyMapper.deleteNonPartyById(nonPartyId);
    }
}

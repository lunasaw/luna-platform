package com.ruoyi.web.platform.activists.service.impl;

import java.util.List;

import com.alibaba.fastjson.JSON;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.exception.BusinessException;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.web.platform.activists.PartyActiveConstant;
import com.ruoyi.web.platform.partyInfo.PartyInfoConstant;
import com.ruoyi.web.platform.partyInfo.domain.PartyInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.activists.mapper.PartyActivistsMapper;
import com.ruoyi.web.platform.activists.domain.PartyActivists;
import com.ruoyi.web.platform.activists.service.IPartyActivistsService;
import com.ruoyi.common.core.text.Convert;

/**
 * 入党积极分子Service业务层处理
 * 
 * @author party-platform
 * @date 2020-10-17
 */
@Service
public class PartyActivistsServiceImpl implements IPartyActivistsService {
    private static final Logger  log = LoggerFactory.getLogger(PartyActivistsServiceImpl.class);

    @Autowired
    private PartyActivistsMapper partyActivistsMapper;

    /**
     * 查询入党积极分子
     * 
     * @param partyActivistsStuId 入党积极分子ID
     * @return 入党积极分子
     */
    @Override
    public PartyActivists selectPartyActivistsById(Long partyActivistsStuId) {
        return partyActivistsMapper.selectPartyActivistsById(partyActivistsStuId);
    }

    /**
     * 查询入党积极分子列表
     * 
     * @param partyActivists 入党积极分子
     * @return 入党积极分子
     */
    @Override
    public List<PartyActivists> selectPartyActivistsList(PartyActivists partyActivists) {
        return partyActivistsMapper.selectPartyActivistsList(partyActivists);
    }

    /**
     * 导出数据
     *
     * @param partyActivists
     * @return
     */
    @Override
    public AjaxResult exportPartyActivists(PartyActivists partyActivists) {
        List<PartyActivists> list = partyActivistsMapper.selectPartyActivistsList(partyActivists);
        for (PartyActivists partyActivity : list) {
            if (StringUtils.equals(partyActivity.getPartyActivistsSex(), PartyActiveConstant.MAN_NUM)) {
                partyActivity.setPartyActivistsSex(PartyActiveConstant.MAN);
            } else if (StringUtils.equals(partyActivity.getPartyActivistsSex(), PartyActiveConstant.WOMAN_NUM)) {
                partyActivity.setPartyActivistsSex(PartyActiveConstant.WOMAN);
            } else if (StringUtils.equals(partyActivity.getPartyActivistsSex(), PartyActiveConstant.NOT_KNOW_MUM)) {
                partyActivity.setPartyActivistsSex(PartyActiveConstant.NOT_KNOW);
            }

            // 自传
            if (StringUtils.equals(partyActivity.getPartyActivistsAutobiography(),
                PartyActiveConstant.HAS_SUBMIT_NUM)) {
                partyActivity.setPartyActivistsAutobiography(PartyActiveConstant.HAS_SUBMIT);
            } else if (StringUtils.equals(partyActivity.getPartyActivistsAutobiography(),
                PartyActiveConstant.NOT_HAS_SUBMIT_NUM)) {
                partyActivity.setPartyActivistsAutobiography(PartyActiveConstant.NOT_HAS_SUBMIT);
            } else {
                partyActivity.setPartyActivistsAutobiography(PartyActiveConstant.NOT_HAS_SUBMIT);
            }

            // 思想汇报
            if (StringUtils.equals(partyActivity.getPartyActivistsThoughtReport(),
                PartyActiveConstant.HAS_SUBMIT_NUM)) {
                partyActivity.setPartyActivistsThoughtReport(PartyActiveConstant.HAS_SUBMIT);
            } else if (StringUtils.equals(partyActivity.getPartyActivistsThoughtReport(),
                PartyActiveConstant.NOT_HAS_SUBMIT_NUM)) {
                partyActivity.setPartyActivistsThoughtReport(PartyActiveConstant.NOT_HAS_SUBMIT);
            } else {
                partyActivity.setPartyActivistsThoughtReport(PartyActiveConstant.NOT_HAS_SUBMIT);
            }

            // 《团员推优审批表》
            if (StringUtils.equals(partyActivity.getPartyActivistsApprovalForm(), PartyActiveConstant.HAS_SUBMIT_NUM)) {
                partyActivity.setPartyActivistsApprovalForm(PartyActiveConstant.HAS_SUBMIT);
            } else if (StringUtils.equals(partyActivity.getPartyActivistsApprovalForm(),
                PartyActiveConstant.NOT_HAS_SUBMIT_NUM)) {
                partyActivity.setPartyActivistsApprovalForm(PartyActiveConstant.NOT_HAS_SUBMIT);
            } else {
                partyActivity.setPartyActivistsApprovalForm(PartyActiveConstant.NOT_HAS_SUBMIT);
            }

            // 积极分子考察表
            if (StringUtils.equals(partyActivity.getPartyActivistsSurveyTable(), PartyActiveConstant.HAS_SUBMIT_NUM)) {
                partyActivity.setPartyActivistsSurveyTable(PartyActiveConstant.HAS_SUBMIT);
            } else if (StringUtils.equals(partyActivity.getPartyActivistsSurveyTable(),
                PartyActiveConstant.NOT_HAS_SUBMIT_NUM)) {
                partyActivity.setPartyActivistsSurveyTable(PartyActiveConstant.NOT_HAS_SUBMIT);
            } else {
                partyActivity.setPartyActivistsSurveyTable(PartyActiveConstant.NOT_HAS_SUBMIT);
            }

        }

        ExcelUtil<PartyActivists> util = new ExcelUtil<PartyActivists>(PartyActivists.class);
        return util.exportExcel(list, "partyInfo");
    }

    @Override
    public String importPartyActivists(List<PartyActivists> partyActivists, Boolean isUpdateSupport, String operName) {
        if (StringUtils.isNull(partyActivists) || partyActivists.size() == 0) {
            throw new BusinessException("导入用户数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        for (PartyActivists partyActivity : partyActivists) {
            if (StringUtils.equals(partyActivity.getPartyActivistsSex(), PartyActiveConstant.MAN)) {
                partyActivity.setPartyActivistsSex(PartyActiveConstant.MAN_NUM);
            } else if (StringUtils.equals(partyActivity.getPartyActivistsSex(), PartyActiveConstant.WOMAN)) {
                partyActivity.setPartyActivistsSex(PartyActiveConstant.WOMAN_NUM);
            } else if (StringUtils.equals(partyActivity.getPartyActivistsSex(), PartyActiveConstant.NOT_KNOW)) {
                partyActivity.setPartyActivistsSex(PartyActiveConstant.NOT_KNOW_MUM);
            }

            // 自传
            if (StringUtils.equals(partyActivity.getPartyActivistsAutobiography(), PartyActiveConstant.HAS_SUBMIT)) {
                partyActivity.setPartyActivistsAutobiography(PartyActiveConstant.HAS_SUBMIT_NUM);
            } else if (StringUtils.equals(partyActivity.getPartyActivistsAutobiography(),
                PartyActiveConstant.NOT_HAS_SUBMIT)) {
                partyActivity.setPartyActivistsAutobiography(PartyActiveConstant.NOT_HAS_SUBMIT_NUM);
            } else {
                partyActivity.setPartyActivistsAutobiography(PartyActiveConstant.NOT_HAS_SUBMIT_NUM);
            }

            // 思想汇报
            if (StringUtils.equals(partyActivity.getPartyActivistsThoughtReport(), PartyActiveConstant.HAS_SUBMIT)) {
                partyActivity.setPartyActivistsThoughtReport(PartyActiveConstant.HAS_SUBMIT_NUM);
            } else if (StringUtils.equals(partyActivity.getPartyActivistsThoughtReport(),
                PartyActiveConstant.NOT_HAS_SUBMIT)) {
                partyActivity.setPartyActivistsThoughtReport(PartyActiveConstant.NOT_HAS_SUBMIT_NUM);
            } else {
                partyActivity.setPartyActivistsThoughtReport(PartyActiveConstant.NOT_HAS_SUBMIT_NUM);
            }

            // 《团员推优审批表》
            if (StringUtils.equals(partyActivity.getPartyActivistsApprovalForm(), PartyActiveConstant.HAS_SUBMIT)) {
                partyActivity.setPartyActivistsApprovalForm(PartyActiveConstant.HAS_SUBMIT_NUM);
            } else if (StringUtils.equals(partyActivity.getPartyActivistsApprovalForm(),
                PartyActiveConstant.NOT_HAS_SUBMIT)) {
                partyActivity.setPartyActivistsApprovalForm(PartyActiveConstant.NOT_HAS_SUBMIT_NUM);
            } else {
                partyActivity.setPartyActivistsApprovalForm(PartyActiveConstant.NOT_HAS_SUBMIT_NUM);
            }

            // 积极分子考察表
            if (StringUtils.equals(partyActivity.getPartyActivistsSurveyTable(), PartyActiveConstant.HAS_SUBMIT)) {
                partyActivity.setPartyActivistsSurveyTable(PartyActiveConstant.HAS_SUBMIT_NUM);
            } else if (StringUtils.equals(partyActivity.getPartyActivistsSurveyTable(),
                PartyActiveConstant.NOT_HAS_SUBMIT)) {
                partyActivity.setPartyActivistsSurveyTable(PartyActiveConstant.NOT_HAS_SUBMIT_NUM);
            } else {
                partyActivity.setPartyActivistsSurveyTable(PartyActiveConstant.NOT_HAS_SUBMIT_NUM);
            }

            try {
                // 验证是否存在这个用户
                PartyActivists partyActivists1 =
                    partyActivistsMapper.selectPartyActivistsByName(partyActivity.getPartyActivistsName());
                if (StringUtils.isNull(partyActivists1)) {
                    insertPartyActivists(partyActivity);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + partyActivity.getPartyActivistsName() + " 导入成功");
                } else if (isUpdateSupport) {
                    partyActivity.setPartyActivistsStuId(partyActivists1.getPartyActivistsStuId());
                    updatePartyActivists(partyActivity);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + partyActivity.getPartyActivistsName() + " 更新成功");
                } else {
                    failureNum++;
                    failureMsg.append("<br/>" + failureNum + "、账号 " + partyActivity.getPartyActivistsName() + " 已存在");
                }
            } catch (Exception e) {
                failureNum++;
                String msg = "<br/>" + failureNum + "、账号 " + partyActivity.getPartyActivistsName() + " 导入失败：";
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
     * 新增入党积极分子
     * 
     * @param partyActivists 入党积极分子
     * @return 结果
     */
    @Override
    public int insertPartyActivists(PartyActivists partyActivists) {
        return partyActivistsMapper.insertPartyActivists(partyActivists);
    }

    /**
     * 修改入党积极分子
     * 
     * @param partyActivists 入党积极分子
     * @return 结果
     */
    @Override
    public int updatePartyActivists(PartyActivists partyActivists) {
        return partyActivistsMapper.updatePartyActivists(partyActivists);
    }

    /**
     * 删除入党积极分子对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePartyActivistsByIds(String ids) {
        return partyActivistsMapper.deletePartyActivistsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除入党积极分子信息
     * 
     * @param partyActivistsStuId 入党积极分子ID
     * @return 结果
     */
    @Override
    public int deletePartyActivistsById(Long partyActivistsStuId) {
        return partyActivistsMapper.deletePartyActivistsById(partyActivistsStuId);
    }
}

package com.ruoyi.web.platform.standingbook.service.impl;

import java.util.List;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.exception.BusinessException;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.web.platform.standingbook.StandingbookConstant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.standingbook.mapper.StandingbookMapper;
import com.ruoyi.web.platform.standingbook.domain.Standingbook;
import com.ruoyi.web.platform.standingbook.service.IStandingbookService;
import com.ruoyi.common.core.text.Convert;

/**
 * 台账Service业务层处理
 * 
 * @author party-platform
 * @date 2020-10-24
 */
@Service
public class StandingbookServiceImpl implements IStandingbookService
{
    private static final Logger log = LoggerFactory.getLogger(StandingbookServiceImpl.class);

    @Autowired
    private StandingbookMapper standingbookMapper;

    /**
     * 查询台账
     * 
     * @param standingbookId 台账ID
     * @return 台账
     */
    @Override
    public Standingbook selectStandingbookById(Long standingbookId)
    {
        return standingbookMapper.selectStandingbookById(standingbookId);
    }

    /**
     * 查询台账列表
     * 
     * @param standingbook 台账
     * @return 台账
     */
    @Override
    public List<Standingbook> selectStandingbookList(Standingbook standingbook)
    {
        return standingbookMapper.selectStandingbookList(standingbook);
    }

    /**
     * 导入台账数据
     *
     * @param standingbookList 用户数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName 操作用户
     * @return 结果
     */
    @Override
    public String importStandingbook(List<Standingbook> standingbookList, Boolean isUpdateSupport, String operName) {
        if (StringUtils.isNull(standingbookList) || standingbookList.size() == 0) {
            throw new BusinessException("导入用户数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        for (Standingbook standingbook : standingbookList) {
            //性别
            if (StringUtils.equals(standingbook.getStandingbookSex(), StandingbookConstant.MAN)) {
                standingbook.setStandingbookSex("0");
            } else if (StringUtils.equals(standingbook.getStandingbookSex(), StandingbookConstant.WOMAN)) {
                standingbook.setStandingbookSex("1");
            } else if (StringUtils.equals(standingbook.getStandingbookSex(), StandingbookConstant.NOT_KNOW)) {
                standingbook.setStandingbookSex("2");
            }

            try {
                // 验证是否存在这个用户
                Standingbook standingbook1ByName = standingbookMapper.selectStandingbookByName(standingbook.getStandingbookName());
                if (StringUtils.isNull(standingbook1ByName)) {
                    insertStandingbook(standingbook);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + standingbook.getStandingbookName() + " 导入成功");
                } else if (isUpdateSupport) {
                    standingbook.setStandingbookId(standingbook1ByName.getStandingbookId());
                    updateStandingbook(standingbook);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + standingbook.getStandingbookName() + " 更新成功");
                } else {
                    failureNum++;
                    failureMsg.append("<br/>" + failureNum + "、账号 " + standingbook.getStandingbookName() + " 已存在");
                }
            } catch (Exception e) {
                failureNum++;
                String msg = "<br/>" + failureNum + "、账号 " + standingbook.getStandingbookName() + " 导入失败：";
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
     * @param standingbooks
     * @return
     */
    @Override
    public AjaxResult exportStandingbooks(Standingbook standingbooks) {
        List<Standingbook> list = standingbookMapper.selectStandingbookList(standingbooks);
        for (Standingbook partyStandingbook : list) {
            if (StringUtils.equals(partyStandingbook.getStandingbookSex(), StandingbookConstant.MAN_NUM)) {
                partyStandingbook.setStandingbookSex(StandingbookConstant.MAN);
            } else if (StringUtils.equals(partyStandingbook.getStandingbookSex(), StandingbookConstant.WOMAN_NUM)) {
                partyStandingbook.setStandingbookSex(StandingbookConstant.WOMAN);
            } else if (StringUtils.equals(partyStandingbook.getStandingbookSex(), StandingbookConstant.NOT_KNOW_MUM)) {
                partyStandingbook.setStandingbookSex(StandingbookConstant.NOT_KNOW);
            }

        }

        ExcelUtil<Standingbook> util = new ExcelUtil<Standingbook>(Standingbook.class);
        return util.exportExcel(list, "standingbook");
    }

    /**
     * 新增台账
     * 
     * @param standingbook 台账
     * @return 结果
     */
    @Override
    public int insertStandingbook(Standingbook standingbook)
    {
        standingbook.setCreateTime(DateUtils.getNowDate());
        return standingbookMapper.insertStandingbook(standingbook);
    }

    /**
     * 修改台账
     * 
     * @param standingbook 台账
     * @return 结果
     */
    @Override
    public int updateStandingbook(Standingbook standingbook)
    {
        standingbook.setUpdateTime(DateUtils.getNowDate());
        return standingbookMapper.updateStandingbook(standingbook);
    }

    /**
     * 删除台账对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteStandingbookByIds(String ids)
    {
        return standingbookMapper.deleteStandingbookByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除台账信息
     * 
     * @param standingbookId 台账ID
     * @return 结果
     */
    @Override
    public int deleteStandingbookById(Long standingbookId)
    {
        return standingbookMapper.deleteStandingbookById(standingbookId);
    }

    /**
     * 修改教职工所属支部
     *
     * @param standingbookId
     * @param standingbookBranchNumber
     */
    @Override
    public void standingbookBranchNameEdit(Long standingbookId, String standingbookBranchNumber) {
        Standingbook standingbook = standingbookMapper.selectStandingbookById(standingbookId);
        standingbook.setStandingbookBranchNumber(standingbookBranchNumber);
        standingbookMapper.updateStandingbook(standingbook);
    }
}

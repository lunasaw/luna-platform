package com.ruoyi.web.platform.religion.service.impl;

import java.util.List;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.exception.BusinessException;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.web.platform.religion.ReligionConstant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.religion.mapper.ReligionMapper;
import com.ruoyi.web.platform.religion.domain.Religion;
import com.ruoyi.web.platform.religion.service.IReligionService;
import com.ruoyi.common.core.text.Convert;

/**
 * 留学人员Service业务层处理
 *
 * @author party-platform
 * @date 2020-11-15
 */
@Service
public class ReligionServiceImpl implements IReligionService {
    private static final Logger log = LoggerFactory.getLogger(ReligionServiceImpl.class);

    @Autowired
    private ReligionMapper religionMapper;

    /**
     * 查询留学人员
     *
     * @param religionId 留学人员ID
     * @return 留学人员
     */
    @Override
    public Religion selectReligionById(Long religionId) {
        return religionMapper.selectReligionById(religionId);
    }

    /**
     * 查询留学人员列表
     *
     * @param religion 留学人员
     * @return 留学人员
     */
    @Override
    public List<Religion> selectReligionList(Religion religion) {
        return religionMapper.selectReligionList(religion);
    }

    /**
     * 导入并解析
     *
     * @param religionList  党员数据列表
     * @param updateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName      操作用户
     * @return
     */
    @Override
    public String importReligion(List<Religion> religionList, boolean updateSupport, String operName) {
        if (StringUtils.isNull(religionList) || religionList.size() == 0) {
            throw new BusinessException("导入用户数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        for (Religion religion : religionList) {
            if (StringUtils.equals(religion.getReligionSex(), ReligionConstant.MAN)) {
                religion.setReligionSex("0");
            } else if (StringUtils.equals(religion.getReligionSex(), ReligionConstant.WOMAN)) {
                religion.setReligionSex("1");
            } else if (StringUtils.equals(religion.getReligionSex(), ReligionConstant.NOT_KNOW)) {
                religion.setReligionSex("2");
            }

            try {
                // 验证是否存在这个用户
                Religion religionByName = religionMapper.selectReligionByName(religion.getReligionName());
                if (StringUtils.isNull(religionByName)) {
                    insertReligion(religion);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + religion.getReligionName() + " 导入成功");
                } else if (updateSupport) {
                    religion.setReligionId(religionByName.getReligionId());
                    updateReligion(religion);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + religion.getReligionName() + " 更新成功");
                } else {
                    failureNum++;
                    failureMsg.append("<br/>" + failureNum + "、账号 " + religion.getReligionName() + " 已存在");
                }
            } catch (Exception e) {
                failureNum++;
                String msg = "<br/>" + failureNum + "、账号 " + religion.getReligionName() + " 导入失败：";
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

    @Override
    public AjaxResult exportReligion(Religion religion) {
        List<Religion> list = religionMapper.selectReligionList(religion);

        for (Religion religionTemp : list) {
            if (StringUtils.equals(religionTemp.getReligionSex(), ReligionConstant.MAN_NUM)) {
                religion.setReligionSex(ReligionConstant.MAN_NUM);
            } else if (StringUtils.equals(religionTemp.getReligionSex(), ReligionConstant.WOMAN_NUM)) {
                religion.setReligionSex(ReligionConstant.WOMAN);
            } else if (StringUtils.equals(religionTemp.getReligionSex(), ReligionConstant.NOT_KNOW_MUM)) {
                religion.setReligionSex(ReligionConstant.NOT_KNOW);
            }
        }

        ExcelUtil<Religion> util = new ExcelUtil<Religion>(Religion.class);
        return util.exportExcel(list, "religion");
    }

    /**
     * 新增留学人员
     *
     * @param religion 留学人员
     * @return 结果
     */
    @Override
    public int insertReligion(Religion religion) {
        religion.setCreateTime(DateUtils.getNowDate());
        religion.setUpdateTime(DateUtils.getNowDate());
        religion.setCreateBy(ShiroUtils.getLoginName());
        religion.setUpdateBy(ShiroUtils.getLoginName());
        return religionMapper.insertReligion(religion);
    }

    /**
     * 修改留学人员
     *
     * @param religion 留学人员
     * @return 结果
     */
    @Override
    public int updateReligion(Religion religion) {
        religion.setUpdateTime(DateUtils.getNowDate());
        religion.setUpdateBy(ShiroUtils.getLoginName());
        return religionMapper.updateReligion(religion);
    }

    /**
     * 删除留学人员对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteReligionByIds(String ids) {
        return religionMapper.deleteReligionByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除留学人员信息
     *
     * @param religionId 留学人员ID
     * @return 结果
     */
    @Override
    public int deleteReligionById(Long religionId) {
        return religionMapper.deleteReligionById(religionId);
    }
}

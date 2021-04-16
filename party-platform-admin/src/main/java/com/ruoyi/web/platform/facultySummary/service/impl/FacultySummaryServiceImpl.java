package com.ruoyi.web.platform.facultySummary.service.impl;

import java.util.List;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.exception.BusinessException;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.service.ISysDeptService;
import com.ruoyi.web.platform.facultySummary.FacultySummaryConstant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.facultySummary.mapper.FacultySummaryMapper;
import com.ruoyi.web.platform.facultySummary.domain.FacultySummary;
import com.ruoyi.web.platform.facultySummary.service.IFacultySummaryService;
import com.ruoyi.common.core.text.Convert;

/**
 * 教职工汇总Service业务层处理
 * 
 * @author party-platform
 * @date 2020-10-16
 */
@Service
public class FacultySummaryServiceImpl implements IFacultySummaryService {
    private static final Logger  log = LoggerFactory.getLogger(FacultySummaryServiceImpl.class);

    @Autowired
    private FacultySummaryMapper facultySummaryMapper;

    /**
     * 查询教职工汇总
     * 
     * @param facultyId 教职工汇总ID
     * @return 教职工汇总
     */
    @Override
    public FacultySummary selectFacultySummaryById(Long facultyId) {
        return facultySummaryMapper.selectFacultySummaryById(facultyId);
    }

    /**
     * 查询教职工汇总列表
     * 
     * @param facultySummary 教职工汇总
     * @return 教职工汇总
     */
    @Override
    public List<FacultySummary> selectFacultySummaryList(FacultySummary facultySummary) {
        return facultySummaryMapper.selectFacultySummaryList(facultySummary);
    }

    /**
     * 导入用户数据
     *
     * @param facultySummaryList 用户数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName 操作用户
     * @return 结果
     */
    @Override
    public String importFacultySummary(List<FacultySummary> facultySummaryList, Boolean isUpdateSupport,
        String operName) {
        if (StringUtils.isNull(facultySummaryList) || facultySummaryList.size() == 0) {
            throw new BusinessException("导入用户数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        for (FacultySummary facultySummary : facultySummaryList) {
            // 性别
            if (StringUtils.equals(facultySummary.getFacultySex(), FacultySummaryConstant.MAN)) {
                facultySummary.setFacultySex("0");
            } else if (StringUtils.equals(facultySummary.getFacultySex(), FacultySummaryConstant.WOMAN)) {
                facultySummary.setFacultySex("1");
            } else if (StringUtils.equals(facultySummary.getFacultySex(), FacultySummaryConstant.NOT_KNOW)) {
                facultySummary.setFacultySex("2");
            }

            // 婚姻情况
            if (StringUtils.equals(facultySummary.getFacultyMaritalStatus(), FacultySummaryConstant.MARRIED)) {
                facultySummary.setFacultyMaritalStatus("0");
            } else if (StringUtils.equals(facultySummary.getFacultyMaritalStatus(), FacultySummaryConstant.UNMARRIED)) {
                facultySummary.setFacultyMaritalStatus("1");
            } else if (StringUtils.equals(facultySummary.getFacultyMaritalStatus(), FacultySummaryConstant.NOT_KNOW)) {
                facultySummary.setFacultyMaritalStatus("2");
            }

            try {
                // 验证是否存在这个用户
                FacultySummary facultySummary1ByName =
                    facultySummaryMapper.selectFacultySummaryByName(facultySummary.getFacultyName());
                if (StringUtils.isNull(facultySummary1ByName)) {
                    insertFacultySummary(facultySummary);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + facultySummary.getFacultyName() + " 导入成功");
                } else if (isUpdateSupport) {
                    facultySummary.setFacultyId(facultySummary1ByName.getFacultyId());
                    updateFacultySummary(facultySummary);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + facultySummary.getFacultyName() + " 更新成功");
                } else {
                    failureNum++;
                    failureMsg.append("<br/>" + failureNum + "、账号 " + facultySummary.getFacultyName() + " 已存在");
                }
            } catch (Exception e) {
                failureNum++;
                String msg = "<br/>" + failureNum + "、账号 " + facultySummary.getFacultyName() + " 导入失败：";
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
     * @param facultySummarys
     * @return
     */
    @Override
    public AjaxResult exportFacultySummarys(FacultySummary facultySummarys) {
        List<FacultySummary> list = facultySummaryMapper.selectFacultySummaryList(facultySummarys);
        for (FacultySummary partyFacultySummary : list) {
            if (StringUtils.equals(partyFacultySummary.getFacultySex(), FacultySummaryConstant.MAN_NUM)) {
                partyFacultySummary.setFacultySex(FacultySummaryConstant.MAN);
            } else if (StringUtils.equals(partyFacultySummary.getFacultySex(), FacultySummaryConstant.WOMAN_NUM)) {
                partyFacultySummary.setFacultySex(FacultySummaryConstant.WOMAN);
            } else if (StringUtils.equals(partyFacultySummary.getFacultySex(), FacultySummaryConstant.NOT_KNOW_MUM)) {
                partyFacultySummary.setFacultySex(FacultySummaryConstant.NOT_KNOW);
            }

            if (StringUtils.equals(partyFacultySummary.getFacultyMaritalStatus(), FacultySummaryConstant.MARRIED_NUM)) {
                partyFacultySummary.setFacultyMaritalStatus(FacultySummaryConstant.MARRIED);
            } else if (StringUtils.equals(partyFacultySummary.getFacultySex(), FacultySummaryConstant.UNMARRIED_NUM)) {
                partyFacultySummary.setFacultyMaritalStatus(FacultySummaryConstant.UNMARRIED);
            } else if (StringUtils.equals(partyFacultySummary.getFacultySex(), FacultySummaryConstant.NOT_KNOW_MUM)) {
                partyFacultySummary.setFacultyMaritalStatus(FacultySummaryConstant.NOT_KNOW);
            }

        }

        ExcelUtil<FacultySummary> util = new ExcelUtil<FacultySummary>(FacultySummary.class);
        return util.exportExcel(list, "facultySummary");
    }

    @Autowired
    private ISysDeptService service;

    /**
     * 新增教职工汇总
     * 
     * @param facultySummary 教职工汇总
     * @return 结果
     */
    @Override
    public int insertFacultySummary(FacultySummary facultySummary) {
        facultySummary.setFacultyNum(Long.valueOf(DateUtils.dateTimeNow(DateUtils.YYYYMMDDHHMMSS)));
        String deptName = service.selectDeptById(ShiroUtils.getSysUser().getDeptId()).getDeptName();
        facultySummary.setFacultyBranchNumber(deptName);
        facultySummary.setCreateTime(DateUtils.getNowDate());
        return facultySummaryMapper.insertFacultySummary(facultySummary);
    }

    /**
     * 修改教职工汇总
     * 
     * @param facultySummary 教职工汇总
     * @return 结果
     */
    @Override
    public int updateFacultySummary(FacultySummary facultySummary) {
        facultySummary.setUpdateTime(DateUtils.getNowDate());
        return facultySummaryMapper.updateFacultySummary(facultySummary);
    }

    /**
     * 删除教职工汇总对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteFacultySummaryByIds(String ids) {
        return facultySummaryMapper.deleteFacultySummaryByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除教职工汇总信息
     * 
     * @param facultyId 教职工汇总ID
     * @return 结果
     */
    @Override
    public int deleteFacultySummaryById(Long facultyId) {
        return facultySummaryMapper.deleteFacultySummaryById(facultyId);
    }

    /**
     * 修改教职工所属支部
     *
     * @param facultyId
     * @param facultyBranchNumber
     */
    @Override
    public void facultyBranchNameEdit(Long facultyId, String facultyBranchNumber) {
        FacultySummary facultySummary = facultySummaryMapper.selectFacultySummaryById(facultyId);
        facultySummary.setFacultyBranchNumber(facultyBranchNumber);
        facultySummaryMapper.updateFacultySummary(facultySummary);
    }
}

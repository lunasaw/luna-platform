package com.ruoyi.web.platform.facultySummary.controller;

import java.util.List;

import com.ruoyi.framework.util.ShiroUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.web.platform.facultySummary.domain.FacultySummary;
import com.ruoyi.web.platform.facultySummary.service.IFacultySummaryService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 教职工汇总Controller
 *
 * @author party-platform
 * @date 2020-10-16
 */
@Controller
@Api("教职工汇总Controller")
@RequestMapping("/admin/facultySummary")
public class FacultySummaryController extends BaseController
{
    private String prefix = "admin/facultySummary";

    @Autowired
    private IFacultySummaryService facultySummaryService;

    @RequiresPermissions("admin:facultySummary:view")
    @GetMapping()
    public String facultySummary()
    {
        return prefix + "/facultySummary";
    }

    /**
     * 查询教职工汇总列表
     */
    @ApiOperation(value = "查询教职工汇总列表", notes = "查询教职工汇总列表详情", tags = {"教职工汇总Controller"})
    @RequiresPermissions("admin:facultySummary:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(FacultySummary facultySummary)
    {
        startPage();
        List<FacultySummary> list = facultySummaryService.selectFacultySummaryList(facultySummary);
        return getDataTable(list);
    }

    /**
     * 导出教职工汇总列表
     */
    @ApiOperation(value = "导出教职工汇总列表", notes = "导出教职工汇总列表详情", tags = {"教职工汇总Controller"})
    @RequiresPermissions("admin:facultySummary:export")
    @Log(title = "教职工汇总", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(FacultySummary facultySummarys)
    {
        return facultySummaryService.exportFacultySummarys(facultySummarys);
    }

    /**
     * 导入教职工汇总列表
     */
    @ApiOperation(value = "导入教职工汇总列表", notes = "导入教职工汇总列表详情", tags = {"教职工汇总Controller"})
    @RequiresPermissions("admin:facultySummary:import")
    @Log(title = "教职工汇总", businessType = BusinessType.IMPORT)
    @PostMapping("/importData")
    @ResponseBody
    public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception{
        ExcelUtil<FacultySummary> util = new ExcelUtil<FacultySummary>(FacultySummary.class);
        List<FacultySummary> facultySummaryList = util.importExcel(file.getInputStream());
        String operName = ShiroUtils.getSysUser().getLoginName();
        String message = facultySummaryService.importFacultySummary(facultySummaryList, updateSupport, operName);
        return AjaxResult.success(message);
    }

    @RequiresPermissions("admin:facultySummary:view")
    @GetMapping("/importTemplate")
    @ResponseBody
    public AjaxResult importTemplate() {
        ExcelUtil<FacultySummary> util = new ExcelUtil<FacultySummary>(FacultySummary.class);
        return util.importTemplateExcel("教职工汇总数据");
    }

    /**
     * 新增教职工汇总
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存教职工汇总
     */
    @ApiOperation(value = "新增保存教职工汇总", notes = "新增保存教职工汇总详情", tags = {"教职工汇总Controller"})
    @RequiresPermissions("admin:facultySummary:add")
    @Log(title = "教职工汇总", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(FacultySummary facultySummary)
    {
        return toAjax(facultySummaryService.insertFacultySummary(facultySummary));
    }

    /**
     * 修改教职工汇总
     */
    @ApiOperation(value = "修改教职工汇总", notes = "修改教职工汇总详情", tags = {"教职工汇总Controller"})
    @ApiImplicitParam(name = "facultyId", value = "主键ID", dataType = "Long", paramType = "path")
    @GetMapping("/edit/{facultyId}")
    public String edit(@PathVariable("facultyId") Long facultyId, ModelMap mmap)
    {
        FacultySummary facultySummary = facultySummaryService.selectFacultySummaryById(facultyId);
        mmap.put("facultySummary", facultySummary);
        return prefix + "/edit";
    }

    /**
     * 修改保存教职工汇总
     */
    @ApiOperation(value = "修改教职工所属支部", notes = "修改保存教职工汇总详情", tags = {"教职工汇总Controller"})
    @RequiresPermissions("admin:facultySummary:edit")
    @Log(title = "教职工汇总", businessType = BusinessType.UPDATE)
    @PostMapping("/editFacultyBranchNumber")
    @ResponseBody
    public AjaxResult editFacultyBranchNumber(Long facultyId,String facultyBranchNumber)
    {
       facultySummaryService.facultyBranchNameEdit(facultyId,facultyBranchNumber);
       return AjaxResult.success();
    }

    /**
     * 修改保存教职工汇总
     */
    @ApiOperation(value = "修改保存教职工汇总", notes = "修改保存教职工汇总详情", tags = {"教职工汇总Controller"})
    @RequiresPermissions("admin:facultySummary:edit")
    @Log(title = "教职工汇总", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(FacultySummary facultySummary)
    {
        return toAjax(facultySummaryService.updateFacultySummary(facultySummary));
    }

    /**
     * 删除教职工汇总
     @ApiOperation("删除教职工汇总")
     */
    @ApiOperation(value = "删除教职工汇总", notes = "删除教职工汇总详情", tags = {"教职工汇总Controller"})
    @RequiresPermissions("admin:facultySummary:remove")
    @Log(title = "教职工汇总", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(facultySummaryService.deleteFacultySummaryByIds(ids));
    }
}

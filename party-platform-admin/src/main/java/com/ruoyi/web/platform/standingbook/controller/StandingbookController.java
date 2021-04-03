package com.ruoyi.web.platform.standingbook.controller;

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
import com.ruoyi.web.platform.standingbook.domain.Standingbook;
import com.ruoyi.web.platform.standingbook.service.IStandingbookService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 台账Controller
 *
 * @author party-platform
 * @date 2020-10-24
 */
@Controller
@Api("台账Controller")
@RequestMapping("/admin/standingbook")
public class StandingbookController extends BaseController
{
    private String prefix = "admin/standingbook";

    @Autowired
    private IStandingbookService standingbookService;

    @RequiresPermissions("admin:standingbook:view")
    @GetMapping()
    public String standingbook()
    {
        return prefix + "/standingbook";
    }

    /**
     * 查询台账列表
     */
    @ApiOperation(value = "查询台账列表", notes = "查询台账列表详情", tags = {"台账Controller"})
    @RequiresPermissions("admin:standingbook:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Standingbook standingbook)
    {
        startPage();
        List<Standingbook> list = standingbookService.selectStandingbookList(standingbook);
        return getDataTable(list);
    }

    /**
     * 导入教职工汇总列表
     */
    @ApiOperation(value = "导入台账列表", notes = "导入台账列表详情", tags = {"台账Controller"})
    @RequiresPermissions("admin:standingbook:import")
    @Log(title = "台账", businessType = BusinessType.IMPORT)
    @PostMapping("/importData")
    @ResponseBody
    public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception{
        ExcelUtil<Standingbook> util = new ExcelUtil<Standingbook>(Standingbook.class);
        List<Standingbook> StandingbookList = util.importExcel(file.getInputStream());
        String operName = ShiroUtils.getSysUser().getLoginName();
        String message = standingbookService.importStandingbook(StandingbookList, updateSupport, operName);
        return AjaxResult.success(message);
    }

    @RequiresPermissions("admin:standingbook:view")
    @GetMapping("/importTemplate")
    @ResponseBody
    public AjaxResult importTemplate() {
        ExcelUtil<Standingbook> util = new ExcelUtil<Standingbook>(Standingbook.class);
        return util.importTemplateExcel("台账数据");
    }

    /**
     * 导出台账列表
     */
    @ApiOperation(value = "导出台账列表", notes = "导出台账列表详情", tags = {"台账Controller"})
    @RequiresPermissions("admin:standingbook:export")
    @Log(title = "台账", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Standingbook standingbooks)
    {
        return standingbookService.exportStandingbooks(standingbooks);
    }

    /**
     * 新增台账
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存台账
     */
    @ApiOperation(value = "新增保存台账", notes = "新增保存台账详情", tags = {"台账Controller"})
    @RequiresPermissions("admin:standingbook:add")
    @Log(title = "台账", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Standingbook standingbook)
    {
        return toAjax(standingbookService.insertStandingbook(standingbook));
    }

    /**
     * 修改台账
     */
    @ApiOperation(value = "修改台账", notes = "修改台账详情", tags = {"台账Controller"})
    @ApiImplicitParam(name = "standingbookId", value = "主键ID", dataType = "Long", paramType = "path")
    @GetMapping("/edit/{standingbookId}")
    public String edit(@PathVariable("standingbookId") Long standingbookId, ModelMap mmap)
    {
        Standingbook standingbook = standingbookService.selectStandingbookById(standingbookId);
        mmap.put("standingbook", standingbook);
        return prefix + "/edit";
    }

    /**
     * 修改保存台账
     */
    @ApiOperation(value = "修改保存台账", notes = "修改保存台账详情", tags = {"台账Controller"})
    @RequiresPermissions("admin:standingbook:edit")
    @Log(title = "台账", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Standingbook standingbook)
    {
        return toAjax(standingbookService.updateStandingbook(standingbook));
    }

    /**
     * 修改保存教职工汇总
     */
    @ApiOperation(value = "修改台账所属支部", notes = "修改保存台账详情", tags = {"台账Controller"})
    @RequiresPermissions("admin:standingbook:edit")
    @Log(title = "台账", businessType = BusinessType.UPDATE)
    @PostMapping("/editStandingbookBranchNumber")
    @ResponseBody
    public AjaxResult editStandingbookBranchNumber(Long standingbookId,String standingbookBranchNumber)
    {
        standingbookService.standingbookBranchNameEdit(standingbookId,standingbookBranchNumber);
        return AjaxResult.success();
    }

    /**
     * 删除台账
     @ApiOperation("删除台账")
     */
    @ApiOperation(value = "删除台账", notes = "删除台账详情", tags = {"台账Controller"})
    @RequiresPermissions("admin:standingbook:remove")
    @Log(title = "台账", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(standingbookService.deleteStandingbookByIds(ids));
    }
}

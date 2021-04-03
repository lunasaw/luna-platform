package com.ruoyi.web.platform.noparty.controller;

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
import com.ruoyi.web.platform.noparty.domain.NonParty;
import com.ruoyi.web.platform.noparty.service.INonPartyService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 无党派人士Controller
 *
 * @author party-platform
 * @date 2020-10-24
 */
@Controller
@Api("无党派人士Controller")
@RequestMapping("/admin/noparty")
public class NonPartyController extends BaseController {
    private String prefix = "admin/noparty";

    @Autowired
    private INonPartyService nonPartyService;

    @RequiresPermissions("admin:noparty:view")
    @GetMapping()
    public String noparty() {
        return prefix + "/noparty";
    }

    /**
     * 查询无党派人士列表
     */
    @ApiOperation(value = "查询无党派人士列表", notes = "查询无党派人士列表详情", tags = {"无党派人士Controller"})
    @RequiresPermissions("admin:noparty:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(NonParty nonParty) {
        startPage();
        List<NonParty> list = nonPartyService.selectNonPartyList(nonParty);
        return getDataTable(list);
    }

    /**
     * 导出无党派人士列表
     */
    @ApiOperation(value = "导出无党派人士列表", notes = "导出无党派人士列表详情", tags = {"无党派人士Controller"})
    @RequiresPermissions("admin:noparty:export")
    @Log(title = "无党派人士", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(NonParty nonParty) {
        List<NonParty> list = nonPartyService.selectNonPartyList(nonParty);
        ExcelUtil<NonParty> util = new ExcelUtil<NonParty>(NonParty.class);
        return util.exportExcel(list, "noparty");
    }

    /**
     * 导入无党派人士列表
     */
    @ApiOperation(value = "导入无党派人士列表", notes = "导入无党派人士列表详情", tags = {"无党派人士Controller"})
    @RequiresPermissions("admin:noparty:import")
    @Log(title = "无党派人士", businessType = BusinessType.IMPORT)
    @PostMapping("/importData")
    @ResponseBody
    public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception{
        ExcelUtil<NonParty> util = new ExcelUtil<NonParty>(NonParty.class);
        List<NonParty> nonPartyList = util.importExcel(file.getInputStream());
        String operName = ShiroUtils.getSysUser().getLoginName();
        String message = nonPartyService.importNonParty(nonPartyList, updateSupport, operName);
        return AjaxResult.success(message);
    }

    @RequiresPermissions("admin:noparty:view")
    @GetMapping("/importTemplate")
    @ResponseBody
    public AjaxResult importTemplate() {
        ExcelUtil<NonParty> util = new ExcelUtil<NonParty>(NonParty.class);
        return util.importTemplateExcel("无党派人士数据");
    }

    /**
     * 新增无党派人士
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存无党派人士
     */
    @ApiOperation(value = "新增保存无党派人士", notes = "新增保存无党派人士详情", tags = {"无党派人士Controller"})
    @RequiresPermissions("admin:noparty:add")
    @Log(title = "无党派人士", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(NonParty nonParty) {
        return toAjax(nonPartyService.insertNonParty(nonParty));
    }

    /**
     * 修改无党派人士
     */
    @ApiOperation(value = "修改无党派人士", notes = "修改无党派人士详情", tags = {"无党派人士Controller"})
    @ApiImplicitParam(name = "nonPartyId", value = "主键ID", dataType = "Long", paramType = "path")
    @GetMapping("/edit/{nonPartyId}")
    public String edit(@PathVariable("nonPartyId") Long nonPartyId, ModelMap mmap) {
        NonParty nonParty = nonPartyService.selectNonPartyById(nonPartyId);
        mmap.put("nonParty", nonParty);
        return prefix + "/edit";
    }

    /**
     * 修改保存无党派人士
     */
    @ApiOperation(value = "修改保存无党派人士", notes = "修改保存无党派人士详情", tags = {"无党派人士Controller"})
    @RequiresPermissions("admin:noparty:edit")
    @Log(title = "无党派人士", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(NonParty nonParty) {
        return toAjax(nonPartyService.updateNonParty(nonParty));
    }

    /**
     * 删除无党派人士
     *
     * @ApiOperation("删除无党派人士")
     */
    @ApiOperation(value = "删除无党派人士", notes = "删除无党派人士详情", tags = {"无党派人士Controller"})
    @RequiresPermissions("admin:noparty:remove")
    @Log(title = "无党派人士", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(nonPartyService.deleteNonPartyByIds(ids));
    }
}

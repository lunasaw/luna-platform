package com.ruoyi.web.platform.recently.controller;

import java.util.List;
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
import com.ruoyi.web.platform.recently.domain.Recently;
import com.ruoyi.web.platform.recently.service.IRecentlyService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * Recently-Controller
 *
 * @author yttv-platform
 * @date 2020-10-11
 */
@Controller
@Api("Recently-Controller")
@RequestMapping("/admin/recently")
public class RecentlyController extends BaseController {
    private String           prefix = "admin/recently";

    @Autowired
    private IRecentlyService recentlyService;

    @RequiresPermissions("admin:recently:view")
    @GetMapping()
    public String recently() {
        return prefix + "/recently";
    }

    /**
     * 查询右侧最近记录板块列表
     */
    @ApiOperation(value = "查询右侧最近记录板块列表", notes = "查询右侧最近记录板块列表详情", tags = {"Recently-Controller"})
    @RequiresPermissions("admin:recently:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Recently recently) {
        startPage();
        List<Recently> list = recentlyService.selectRecentlyList(recently);
        return getDataTable(list);
    }

    /**
     * 导出右侧最近记录板块列表
     */
    @ApiOperation(value = "导出右侧最近记录板块列表", notes = "导出右侧最近记录板块列表详情", tags = {"Recently-Controller"})
    @RequiresPermissions("admin:recently:export")
    @Log(title = "右侧最近记录板块", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Recently recently) {
        List<Recently> list = recentlyService.selectRecentlyList(recently);
        ExcelUtil<Recently> util = new ExcelUtil<Recently>(Recently.class);
        return util.exportExcel(list, "recently");
    }

    /**
     * 新增右侧最近记录板块
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存右侧最近记录板块
     */
    @ApiOperation(value = "新增保存右侧最近记录板块", notes = "新增保存右侧最近记录板块详情", tags = {"Recently-Controller"})
    @RequiresPermissions("admin:recently:add")
    @Log(title = "右侧最近记录板块", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Recently recently) {
        return toAjax(recentlyService.insertRecently(recently));
    }

    /**
     * 查找某一右侧最近记录板块
     */
    @ApiOperation(value = "查找某一右侧最近记录板块", notes = "查找某一右侧最近记录板块详情", tags = {"Recently-Controller"})
    @ApiImplicitParam(name = "recentlyId", value = "主键ID", dataType = "Integer", paramType = "path")
    @GetMapping("/edit/{recentlyId}")
    public String edit(@PathVariable("recentlyId") Integer recentlyId, ModelMap mmap) {
        Recently recently = recentlyService.selectRecentlyById(recentlyId);
        mmap.put("recently", recently);
        return prefix + "/edit";
    }

    /**
     * 修改保存右侧最近记录板块
     */
    @ApiOperation(value = "修改保存右侧最近记录板块", notes = "修改保存右侧最近记录板块详情", tags = {"Recently-Controller"})
    @RequiresPermissions("admin:recently:edit")
    @Log(title = "右侧最近记录板块", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Recently recently) {
        return toAjax(recentlyService.updateRecently(recently));
    }

    /**
     * 删除右侧最近记录板块
     */
    @ApiOperation(value = "删除右侧最近记录板块", notes = "删除右侧最近记录板块详情", tags = {"Recently-Controller"})
    @RequiresPermissions("admin:recently:remove")
    @Log(title = "右侧最近记录板块", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(recentlyService.deleteRecentlyByIds(ids));
    }
}

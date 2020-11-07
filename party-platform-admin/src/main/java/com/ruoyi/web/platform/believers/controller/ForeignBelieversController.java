package com.ruoyi.web.platform.believers.controller;

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
import com.ruoyi.web.platform.believers.domain.ForeignBelievers;
import com.ruoyi.web.platform.believers.service.IForeignBelieversService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 信宗教外教专家Controller
 *
 * @author party-platform
 * @date 2020-11-07
 */
@Controller
@Api("信宗教外教专家Controller")
@RequestMapping("/admin/believers")
public class ForeignBelieversController extends BaseController
{
    private String prefix = "admin/believers";

    @Autowired
    private IForeignBelieversService foreignBelieversService;

    @RequiresPermissions("admin:believers:view")
    @GetMapping()
    public String believers()
    {
        return prefix + "/believers";
    }

    /**
     * 查询信宗教外教专家列表
     */
    @ApiOperation(value = "查询信宗教外教专家列表", notes = "查询信宗教外教专家列表详情", tags = {"信宗教外教专家Controller"})
    @RequiresPermissions("admin:believers:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ForeignBelievers foreignBelievers)
    {
        startPage();
        List<ForeignBelievers> list = foreignBelieversService.selectForeignBelieversList(foreignBelievers);
        return getDataTable(list);
    }

    /**
     * 导出信宗教外教专家列表
     */
    @ApiOperation(value = "导出信宗教外教专家列表", notes = "导出信宗教外教专家列表详情", tags = {"信宗教外教专家Controller"})
    @RequiresPermissions("admin:believers:export")
    @Log(title = "信宗教外教专家", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ForeignBelievers foreignBelievers)
    {
        List<ForeignBelievers> list = foreignBelieversService.selectForeignBelieversList(foreignBelievers);
        ExcelUtil<ForeignBelievers> util = new ExcelUtil<ForeignBelievers>(ForeignBelievers.class);
        return util.exportExcel(list, "believers");
    }

    /**
     * 新增信宗教外教专家
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存信宗教外教专家
     */
    @ApiOperation(value = "新增保存信宗教外教专家", notes = "新增保存信宗教外教专家详情", tags = {"信宗教外教专家Controller"})
    @RequiresPermissions("admin:believers:add")
    @Log(title = "信宗教外教专家", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ForeignBelievers foreignBelievers)
    {
        return toAjax(foreignBelieversService.insertForeignBelievers(foreignBelievers));
    }

    /**
     * 修改信宗教外教专家
     */
    @ApiOperation(value = "修改信宗教外教专家", notes = "修改信宗教外教专家详情", tags = {"信宗教外教专家Controller"})
    @ApiImplicitParam(name = "foreignNumberId", value = "主键ID", dataType = "Long", paramType = "path")
    @GetMapping("/edit/{foreignNumberId}")
    public String edit(@PathVariable("foreignNumberId") Long foreignNumberId, ModelMap mmap)
    {
        ForeignBelievers foreignBelievers = foreignBelieversService.selectForeignBelieversById(foreignNumberId);
        mmap.put("foreignBelievers", foreignBelievers);
        return prefix + "/edit";
    }

    /**
     * 修改保存信宗教外教专家
     */
    @ApiOperation(value = "修改保存信宗教外教专家", notes = "修改保存信宗教外教专家详情", tags = {"信宗教外教专家Controller"})
    @RequiresPermissions("admin:believers:edit")
    @Log(title = "信宗教外教专家", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ForeignBelievers foreignBelievers)
    {
        return toAjax(foreignBelieversService.updateForeignBelievers(foreignBelievers));
    }

    /**
     * 删除信宗教外教专家
     @ApiOperation("删除信宗教外教专家")
     */
    @ApiOperation(value = "删除信宗教外教专家", notes = "删除信宗教外教专家详情", tags = {"信宗教外教专家Controller"})
    @RequiresPermissions("admin:believers:remove")
    @Log(title = "信宗教外教专家", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(foreignBelieversService.deleteForeignBelieversByIds(ids));
    }
}

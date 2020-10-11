package com.ruoyi.web.platform.mainInfo.controller;

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
import com.ruoyi.web.platform.mainInfo.domain.AuthorMain;
import com.ruoyi.web.platform.mainInfo.service.IAuthorMainService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * AuthorMain-Controller
 *
 * @author yttv-platform
 * @date 2020-10-11
 */
@Controller
@Api("AuthorMain-Controller")
@RequestMapping("/admin/mainInfo")
public class AuthorMainController extends BaseController {
    private String             prefix = "admin/mainInfo";

    @Autowired
    private IAuthorMainService authorMainService;

    @RequiresPermissions("admin:mainInfo:view")
    @GetMapping()
    public String mainInfo() {
        return prefix + "/mainInfo";
    }

    /**
     * 查询主页介绍板块列表
     */
    @ApiOperation(value = "查询主页介绍板块列表", notes = "查询主页介绍板块列表详情", tags = {"AuthorMain-Controller"})
    @RequiresPermissions("admin:mainInfo:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(AuthorMain authorMain) {
        startPage();
        List<AuthorMain> list = authorMainService.selectAuthorMainList(authorMain);
        return getDataTable(list);
    }

    /**
     * 导出主页介绍板块列表
     */
    @ApiOperation(value = "导出主页介绍板块列表", notes = "导出主页介绍板块列表详情", tags = {"AuthorMain-Controller"})
    @RequiresPermissions("admin:mainInfo:export")
    @Log(title = "主页介绍板块", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AuthorMain authorMain) {
        List<AuthorMain> list = authorMainService.selectAuthorMainList(authorMain);
        ExcelUtil<AuthorMain> util = new ExcelUtil<AuthorMain>(AuthorMain.class);
        return util.exportExcel(list, "mainInfo");
    }

    /**
     * 新增主页介绍板块
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存主页介绍板块
     */
    @ApiOperation(value = "新增保存主页介绍板块", notes = "新增保存主页介绍板块详情", tags = {"AuthorMain-Controller"})
    @RequiresPermissions("admin:mainInfo:add")
    @Log(title = "主页介绍板块", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(AuthorMain authorMain) {
        return toAjax(authorMainService.insertAuthorMain(authorMain));
    }

    /**
     * 查找某一主页介绍板块
     */
    @ApiOperation(value = "查找某一主页介绍板块", notes = "查找某一主页介绍板块详情", tags = {"AuthorMain-Controller"})
    @ApiImplicitParam(name = "authorId", value = "主键ID", dataType = "Integer", paramType = "path")
    @GetMapping("/edit/{authorId}")
    public String edit(@PathVariable("authorId") Integer authorId, ModelMap mmap) {
        AuthorMain authorMain = authorMainService.selectAuthorMainById(authorId);
        mmap.put("authorMain", authorMain);
        return prefix + "/edit";
    }

    /**
     * 修改保存主页介绍板块
     */
    @ApiOperation(value = "修改保存主页介绍板块", notes = "修改保存主页介绍板块详情", tags = {"AuthorMain-Controller"})
    @RequiresPermissions("admin:mainInfo:edit")
    @Log(title = "主页介绍板块", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(AuthorMain authorMain) {
        return toAjax(authorMainService.updateAuthorMain(authorMain));
    }

    /**
     * 删除主页介绍板块
     */
    @ApiOperation(value = "删除主页介绍板块", notes = "删除主页介绍板块详情", tags = {"AuthorMain-Controller"})
    @RequiresPermissions("admin:mainInfo:remove")
    @Log(title = "主页介绍板块", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(authorMainService.deleteAuthorMainByIds(ids));
    }
}

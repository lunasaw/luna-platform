package com.ruoyi.web.platform.teamInfo.controller;

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
import com.ruoyi.web.platform.teamInfo.domain.AuthorTeam;
import com.ruoyi.web.platform.teamInfo.service.IAuthorTeamService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * AuthorTeam-Controller
 *
 * @author yttv-platform
 * @date 2020-10-11
 */
@Controller
@Api("AuthorTeam-Controller")
@RequestMapping("/admin/teamInfo")
public class AuthorTeamController extends BaseController {
    private String             prefix = "admin/teamInfo";

    @Autowired
    private IAuthorTeamService authorTeamService;

    @RequiresPermissions("admin:teamInfo:view")
    @GetMapping()
    public String teamInfo() {
        return prefix + "/teamInfo";
    }

    /**
     * 查询团队介绍板块列表
     */
    @ApiOperation(value = "查询团队介绍板块列表", notes = "查询团队介绍板块列表详情", tags = {"AuthorTeam-Controller"})
    @RequiresPermissions("admin:teamInfo:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(AuthorTeam authorTeam) {
        startPage();
        List<AuthorTeam> list = authorTeamService.selectAuthorTeamList(authorTeam);
        return getDataTable(list);
    }

    /**
     * 导出团队介绍板块列表
     */
    @ApiOperation(value = "导出团队介绍板块列表", notes = "导出团队介绍板块列表详情", tags = {"AuthorTeam-Controller"})
    @RequiresPermissions("admin:teamInfo:export")
    @Log(title = "团队介绍板块", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AuthorTeam authorTeam) {
        List<AuthorTeam> list = authorTeamService.selectAuthorTeamList(authorTeam);
        ExcelUtil<AuthorTeam> util = new ExcelUtil<AuthorTeam>(AuthorTeam.class);
        return util.exportExcel(list, "teamInfo");
    }

    /**
     * 新增团队介绍板块
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存团队介绍板块
     */
    @ApiOperation(value = "新增保存团队介绍板块", notes = "新增保存团队介绍板块详情", tags = {"AuthorTeam-Controller"})
    @RequiresPermissions("admin:teamInfo:add")
    @Log(title = "团队介绍板块", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(AuthorTeam authorTeam) {
        return toAjax(authorTeamService.insertAuthorTeam(authorTeam));
    }

    /**
     * 查找某一团队介绍板块
     */
    @ApiOperation(value = "查找某一团队介绍板块", notes = "查找某一团队介绍板块详情", tags = {"AuthorTeam-Controller"})
    @ApiImplicitParam(name = "teamId", value = "主键ID", dataType = "Integer", paramType = "path")
    @GetMapping("/edit/{teamId}")
    public String edit(@PathVariable("teamId") Integer teamId, ModelMap mmap) {
        AuthorTeam authorTeam = authorTeamService.selectAuthorTeamById(teamId);
        mmap.put("authorTeam", authorTeam);
        return prefix + "/edit";
    }

    /**
     * 修改保存团队介绍板块
     */
    @ApiOperation(value = "修改保存团队介绍板块", notes = "修改保存团队介绍板块详情", tags = {"AuthorTeam-Controller"})
    @RequiresPermissions("admin:teamInfo:edit")
    @Log(title = "团队介绍板块", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(AuthorTeam authorTeam) {
        return toAjax(authorTeamService.updateAuthorTeam(authorTeam));
    }

    /**
     * 删除团队介绍板块
     */
    @ApiOperation(value = "删除团队介绍板块", notes = "删除团队介绍板块详情", tags = {"AuthorTeam-Controller"})
    @RequiresPermissions("admin:teamInfo:remove")
    @Log(title = "团队介绍板块", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(authorTeamService.deleteAuthorTeamByIds(ids));
    }
}

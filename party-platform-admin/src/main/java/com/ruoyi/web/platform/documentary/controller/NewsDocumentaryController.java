package com.ruoyi.web.platform.documentary.controller;

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
import com.ruoyi.web.platform.documentary.domain.NewsDocumentary;
import com.ruoyi.web.platform.documentary.service.INewsDocumentaryService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 活动纪实Controller
 *
 * @author party-platform
 * @date 2020-10-14
 */
@Controller
@Api("活动纪实Controller")
@RequestMapping("/admin/documentary")
public class NewsDocumentaryController extends BaseController {
    private String                  prefix = "admin/documentary";

    @Autowired
    private INewsDocumentaryService newsDocumentaryService;

    @RequiresPermissions("admin:documentary:view")
    @GetMapping()
    public String documentary() {
        return prefix + "/documentary";
    }

    /**
     * 查询活动纪实列表
     */
    @ApiOperation(value = "查询活动纪实列表", notes = "查询活动纪实列表详情", tags = {"活动纪实Controller"})
    @RequiresPermissions("admin:documentary:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(NewsDocumentary newsDocumentary) {
        startPage();
        List<NewsDocumentary> list = newsDocumentaryService.selectNewsDocumentaryList(newsDocumentary);
        return getDataTable(list);
    }

    /**
     * 导出活动纪实列表
     */
    @ApiOperation(value = "导出活动纪实列表", notes = "导出活动纪实列表详情", tags = {"活动纪实Controller"})
    @RequiresPermissions("admin:documentary:export")
    @Log(title = "活动纪实", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(NewsDocumentary newsDocumentary) {
        List<NewsDocumentary> list = newsDocumentaryService.selectNewsDocumentaryList(newsDocumentary);
        ExcelUtil<NewsDocumentary> util = new ExcelUtil<NewsDocumentary>(NewsDocumentary.class);
        return util.exportExcel(list, "documentary");
    }

    /**
     * 新增活动纪实
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存活动纪实
     */
    @ApiOperation(value = "新增保存活动纪实", notes = "新增保存活动纪实详情", tags = {"活动纪实Controller"})
    @RequiresPermissions("admin:documentary:add")
    @Log(title = "活动纪实", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(NewsDocumentary newsDocumentary) {
        return toAjax(newsDocumentaryService.insertNewsDocumentary(newsDocumentary));
    }

    /**
     * 修改活动纪实
     */
    @ApiOperation(value = "修改活动纪实", notes = "修改活动纪实详情", tags = {"活动纪实Controller"})
    @ApiImplicitParam(name = "documentaryId", value = "主键ID", dataType = "Long", paramType = "path")
    @GetMapping("/edit/{documentaryId}")
    public String edit(@PathVariable("documentaryId") Long documentaryId, ModelMap mmap) {
        NewsDocumentary newsDocumentary = newsDocumentaryService.selectNewsDocumentaryById(documentaryId);
        mmap.put("newsDocumentary", newsDocumentary);
        return prefix + "/edit";
    }

    /**
     * 修改活动纪实参加人员
     */
    @ApiOperation(value = "修改活动纪实参加人员", notes = "修改活动纪实参加人员详情", tags = {"活动纪实Controller"})
    @RequiresPermissions("admin:documentary:edit")
    @ResponseBody
    @PostMapping("/joinPeopleEdit")
    public AjaxResult editJoinPeople(Long documentaryId, String menuIds) {
        newsDocumentaryService.editJoinPeople(documentaryId, menuIds);
        return AjaxResult.success();
    }

    /**
     * 修改保存活动纪实
     */
    @ApiOperation(value = "修改保存活动纪实", notes = "修改保存活动纪实详情", tags = {"活动纪实Controller"})
    @RequiresPermissions("admin:documentary:edit")
    @Log(title = "活动纪实", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(NewsDocumentary newsDocumentary) {
        return toAjax(newsDocumentaryService.updateNewsDocumentary(newsDocumentary));
    }

    /**
     * 删除活动纪实
     * @ApiOperation("删除活动纪实")
     */
    @ApiOperation(value = "删除活动纪实", notes = "删除活动纪实详情", tags = {"活动纪实Controller"})
    @RequiresPermissions("admin:documentary:remove")
    @Log(title = "活动纪实", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(newsDocumentaryService.deleteNewsDocumentaryByIds(ids));
    }
}

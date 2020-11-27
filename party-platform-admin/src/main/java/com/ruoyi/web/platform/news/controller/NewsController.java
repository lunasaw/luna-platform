package com.ruoyi.web.platform.news.controller;

import java.util.ArrayList;
import java.util.List;

import com.ruoyi.framework.web.service.DictService;
import com.ruoyi.system.domain.SysDictData;
import com.ruoyi.system.service.ISysDictDataService;
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
import com.ruoyi.web.platform.news.domain.News;
import com.ruoyi.web.platform.news.service.INewsService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 新闻发布Controller
 *
 * @author party-platform
 * @date 2020-11-27
 */
@Controller
@Api("新闻发布Controller")
@RequestMapping("/admin/news")
public class NewsController extends BaseController {
    private String prefix = "admin/news";

    @Autowired
    private INewsService newsService;

    @Autowired
    private DictService dictService;

    @RequiresPermissions("admin:news:view")
    @GetMapping()
    public String news() {
        return prefix + "/news";
    }

    /**
     * 查询新闻发布列表
     */
    @ApiOperation(value = "查询新闻发布列表", notes = "查询新闻发布列表详情", tags = {"新闻发布Controller"})
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(News news) {
        startPage();
        List<News> list = newsService.selectNewsList(news);
        return getDataTable(list);
    }

    /**
     * 获取所有类别集合
     *
     * @return
     */
    @ApiOperation(value = "查询新闻发布类型", notes = "查询新闻发布类型详情", tags = {"新闻发布Controller"})
    @GetMapping("/types")
    @ResponseBody
    public AjaxResult getTypes() {
        return AjaxResult.success(dictService.getType("sys_news_type"));
    }

    /**
     * 导出新闻发布列表
     */
    @ApiOperation(value = "导出新闻发布列表", notes = "导出新闻发布列表详情", tags = {"新闻发布Controller"})
    @RequiresPermissions("admin:news:export")
    @Log(title = "新闻发布", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(News news) {
        List<News> list = newsService.selectNewsList(news);
        ExcelUtil<News> util = new ExcelUtil<News>(News.class);
        return util.exportExcel(list, "news");
    }

    /**
     * 新增新闻发布
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存新闻发布
     */
    @ApiOperation(value = "新增保存新闻发布", notes = "新增保存新闻发布详情", tags = {"新闻发布Controller"})
    @RequiresPermissions("admin:news:add")
    @Log(title = "新闻发布", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(News news) {
        return toAjax(newsService.insertNews(news));
    }

    /**
     * 修改新闻发布
     */
    @ApiOperation(value = "修改新闻发布", notes = "修改新闻发布详情", tags = {"新闻发布Controller"})
    @ApiImplicitParam(name = "newsId", value = "主键ID", dataType = "Integer", paramType = "path")
    @GetMapping("/edit/{newsId}")
    public String edit(@PathVariable("newsId") Integer newsId, ModelMap mmap) {
        News news = newsService.selectNewsById(newsId);
        mmap.put("news", news);
        return prefix + "/edit";
    }

    /**
     * 修改保存新闻发布
     */
    @ApiOperation(value = "修改保存新闻发布", notes = "修改保存新闻发布详情", tags = {"新闻发布Controller"})
    @RequiresPermissions("admin:news:edit")
    @Log(title = "新闻发布", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(News news) {
        return toAjax(newsService.updateNews(news));
    }

    /**
     * 删除新闻发布
     *
     * @ApiOperation("删除新闻发布")
     */
    @ApiOperation(value = "删除新闻发布", notes = "删除新闻发布详情", tags = {"新闻发布Controller"})
    @RequiresPermissions("admin:news:remove")
    @Log(title = "新闻发布", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(newsService.deleteNewsByIds(ids));
    }
}

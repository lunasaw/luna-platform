package com.ruoyi.web.platform.news.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.web.platform.news.domain.News;
import com.ruoyi.web.platform.news.service.INewsService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;

/**
 * news-controller
 * 
 * @author party-platform
 * @date 2020-09-25
 */
@Controller
@Api("news-controller")
@RequestMapping("/admin/news")
public class NewsController extends BaseController {
    private String       prefix = "admin/news";

    @Autowired
    private INewsService newsService;

    @GetMapping()
    public String news() {
        return prefix + "/news";
    }

    /**
     * 查询新闻展示列表
     */
    @ApiOperation(value = "查询新闻展示列表", notes = "查询新闻展示列表详情", tags = {"news-controller"})
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(News news) {
        startPage();
        List<News> list = newsService.selectNewsList(news);
        return getDataTable(list);
    }

    /**
     * 导出新闻展示列表
     */
    @ApiOperation(value = "导出新闻展示列表", notes = "导出新闻展示列表详情", tags = {"news-controller"})
    @RequiresPermissions("admin:news:export")
    @Log(title = "新闻展示", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(News news) {
        List<News> list = newsService.selectNewsList(news);
        ExcelUtil<News> util = new ExcelUtil<News>(News.class);
        return util.exportExcel(list, "news");
    }

    /**
     * 新增新闻展示
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存新闻展示
     */
    @ApiOperation(value = "新增保存新闻展示", notes = "新增保存新闻展示详情", tags = {"news-controller"})
    @RequiresPermissions("admin:news:add")
    @Log(title = "新闻展示", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(News news) {
        return toAjax(newsService.insertNews(news));
    }

    /**
     * 查找某一新闻展示
     */
    @ApiOperation(value = "修改新闻展示", notes = "修改新闻展示详情", tags = {"news-controller"})
    @ApiImplicitParam(name = "newsId", value = "主键ID", dataType = "Integer", paramType = "path")
    @GetMapping("/edit/{newsId}")
    public String edit(@PathVariable("newsId") Integer newsId, ModelMap mmap) {
        News news = newsService.selectNewsById(newsId);
        mmap.put("news", news);
        return prefix + "/edit";
    }

    /**
     * 修改保存新闻展示
     */
    @ApiOperation(value = "修改保存新闻展示", notes = "修改保存新闻展示详情", tags = {"news-controller"})
    @RequiresPermissions("admin:news:edit")
    @Log(title = "新闻展示", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(News news) {
        return toAjax(newsService.updateNews(news));
    }

    /**
     * 删除新闻展示
     * @ApiOperation("删除新闻展示")
     */
    @ApiOperation(value = "删除新闻展示", notes = "删除新闻展示详情", tags = {"news-controller"})
    @RequiresPermissions("admin:news:remove")
    @Log(title = "新闻展示", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(newsService.deleteNewsByIds(ids));
    }
}

package com.ruoyi.web.platform.blog.controller;

import java.util.List;

import com.alibaba.druid.support.json.JSONUtils;
import com.alibaba.fastjson.JSON;
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
import com.ruoyi.web.platform.blog.domain.Blog;
import com.ruoyi.web.platform.blog.service.IBlogService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * Blog-Controller
 *
 * @author yttv-platform
 * @date 2020-10-06
 */
@Controller
@Api("Blog-Controller")
@RequestMapping("/admin/blog")
public class BlogController extends BaseController {
    private String       prefix = "admin/blog";

    @Autowired
    private IBlogService blogService;

    @RequiresPermissions("admin:blog:view")
    @GetMapping()
    public String blog() {
        return prefix + "/blog";
    }

    /**
     * 查询博客展示列表
     */
    @ApiOperation(value = "查询博客展示列表", notes = "查询博客展示列表详情", tags = {"Blog-Controller"})
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Blog blog) {
        System.out.println(JSON.toJSONString(blog));
        startPage();
        List<Blog> list = blogService.selectBlogList(blog);
        return getDataTable(list);
    }

    /**
     * 导出博客展示列表
     */
    @ApiOperation(value = "导出博客展示列表", notes = "导出博客展示列表详情", tags = {"Blog-Controller"})
    @RequiresPermissions("admin:blog:export")
    @Log(title = "博客展示", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Blog blog) {
        List<Blog> list = blogService.selectBlogList(blog);
        ExcelUtil<Blog> util = new ExcelUtil<Blog>(Blog.class);
        return util.exportExcel(list, "blog");
    }

    /**
     * 新增博客展示
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存博客展示
     */
    @ApiOperation(value = "新增保存博客展示", notes = "新增保存博客展示详情", tags = {"Blog-Controller"})
    @RequiresPermissions("admin:blog:add")
    @Log(title = "博客展示", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Blog blog) {
        return toAjax(blogService.insertBlog(blog));
    }

    /**
     * 查找某一博客展示
     */
    @ApiOperation(value = "查找某一博客展示", notes = "查找某一博客展示详情", tags = {"Blog-Controller"})
    @ApiImplicitParam(name = "blogId", value = "主键ID", dataType = "Integer", paramType = "path")
    @GetMapping("/edit/{blogId}")
    public String edit(@PathVariable("blogId") Integer blogId, ModelMap mmap) {
        Blog blog = blogService.selectBlogById(blogId);
        mmap.put("blog", blog);
        return prefix + "/edit";
    }

    /**
     * 修改保存博客展示
     */
    @ApiOperation(value = "修改保存博客展示", notes = "修改保存博客展示详情", tags = {"Blog-Controller"})
    @RequiresPermissions("admin:blog:edit")
    @Log(title = "博客展示", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Blog blog) {
        return toAjax(blogService.updateBlog(blog));
    }

    /**
     * 删除博客展示
     */
    @ApiOperation(value = "删除博客展示", notes = "删除博客展示详情", tags = {"Blog-Controller"})
    @RequiresPermissions("admin:blog:remove")
    @Log(title = "博客展示", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(blogService.deleteBlogByIds(ids));
    }
}

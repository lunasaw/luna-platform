package com.ruoyi.web.platform.web;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.web.platform.blog.domain.Blog;
import com.ruoyi.web.platform.blog.service.IBlogService;
import com.ruoyi.web.platform.recently.service.IRecentlyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @Package: com.ruoyi.web.platform.web
 * @ClassName: WebRestController
 * @Author: luna
 * @CreateTime: 2020/10/7 21:25
 * @Description:
 */
@RestController
@RequestMapping(WebController.BASE)
public class WebRestController {

    public static final String BASE = "web";

    @Autowired
    private IBlogService blogService;

    @Autowired
    private IRecentlyService recentlyService;

    /**
     * ajax 返回博客数据
     * @param id
     * @return
     */
//    @GetMapping("/singlepage/{id}")
//    public AjaxResult singlepage(@PathVariable("id") Integer id) {
//        Blog blog = blogService.selectBlogById(id);
//        return AjaxResult.success(blog);
//    }

}

package com.ruoyi.web.platform.web;

import com.alibaba.fastjson.JSON;
import com.google.common.collect.Lists;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.web.platform.blog.domain.Blog;
import com.ruoyi.web.platform.blog.service.IBlogService;
import com.ruoyi.web.platform.recently.domain.Recently;
import com.ruoyi.web.platform.recently.service.IRecentlyService;
import com.ruoyi.web.platform.teamInfo.domain.AuthorTeam;
import com.ruoyi.web.platform.teamInfo.service.IAuthorTeamService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * @Package: com.ruoyi.web.platform.web
 * @ClassName: WebController
 * @Author: luna
 * @CreateTime: 2020/10/5 15:46
 * @Description:
 */
@Controller
@RequestMapping(WebController.BASE)
public class WebController {

    public static final String BASE = "web";

    @Autowired
    private BlogService        blogService;

    @Autowired
    private IBlogService       iBlogService;

    @Autowired
    private AuthorService      authorService;

    @GetMapping("/index")
    public String index(ModelMap modelMap) {
        modelMap.put("recently", blogService.getRecently());
        Blog blog = new Blog();
        try {
            if (ShiroUtils.getLoginName() != null) {
                blog.setCreateBy(ShiroUtils.getLoginName());
            }
        } catch (Exception e) {
        }
        blog.setStatus("0");
        modelMap.put("blogs", iBlogService.selectBlogList(blog));
        modelMap.put("mains", blogService.getMain());
        modelMap.addAttribute("index", true);
        return BASE + "/index";
    }

    @GetMapping("/about")
    public String about(ModelMap modelMap) {
        modelMap.put("recently", blogService.getRecently());
        modelMap.put("authors", authorService.getAuthor());
        modelMap.addAttribute("about", true);
        return BASE + "/about";
    }

    @GetMapping("/codes")
    public String codes(ModelMap modelMap) {
        modelMap.put("recently", blogService.getRecently());
        modelMap.addAttribute("codes", true);
        return BASE + "/codes";
    }

    @GetMapping("/contact")
    public String contact(ModelMap modelMap) {
        modelMap.put("recently", blogService.getRecently());
        modelMap.addAttribute("contact", true);
        return BASE + "/contact";
    }

    @GetMapping("/fashion")
    public String fashion(ModelMap modelMap) {
        modelMap.put("recently", blogService.getRecently());
        modelMap.addAttribute("fashion", true);
        return BASE + "/fashion";
    }

    @GetMapping("/features")
    public String features(ModelMap modelMap) {
        modelMap.put("recently", blogService.getRecently());
        modelMap.addAttribute("features", true);
        return BASE + "/features";
    }

    @GetMapping("/music")
    public String music(ModelMap modelMap) {
        modelMap.put("recently", blogService.getRecently());
        modelMap.addAttribute("music", true);
        return BASE + "/music";
    }

    @GetMapping("/singlepage")
    public String singlepage(ModelMap modelMap, HttpServletRequest request) {
        String blogId = request.getParameter("blogId");
        modelMap.addAttribute("singlepage", true);
        modelMap.addAttribute("blog", iBlogService.selectBlogById(Integer.valueOf(blogId)));
        return BASE + "/singlepage";
    }

    @GetMapping("/travel")
    public String travel(ModelMap modelMap, Integer pageNum, Integer pageSize) {
        modelMap.put("travels", blogService.getTravelList(pageNum, pageSize));
        modelMap.put("recently", blogService.getRecently());
        modelMap.addAttribute("travel", true);
        return BASE + "/travel";
    }

}

package com.ruoyi.web.platform.web;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
import com.ruoyi.web.platform.blog.domain.Blog;
import com.ruoyi.web.platform.blog.service.IBlogService;
import com.ruoyi.web.platform.mainInfo.domain.AuthorMain;
import com.ruoyi.web.platform.mainInfo.service.IAuthorMainService;
import com.ruoyi.web.platform.recently.domain.Recently;
import com.ruoyi.web.platform.recently.service.IRecentlyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @Package: com.ruoyi.web.platform.web
 * @ClassName: BlogService
 * @Author: luna
 * @CreateTime: 2020/10/8 16:06
 * @Description:
 */
@Service
public class BlogService {

    @Autowired
    private IBlogService       blogService;

    @Autowired
    private IRecentlyService   recentlyService;

    @Autowired
    private IAuthorMainService iAuthorMainService;

    /**
     * 右侧最近板块
     * 
     * @return
     */
    public List<Blog> getRecently() {
        List<Recently> recentlies = recentlyService.selectRecentlyList(new Recently());
        ArrayList<String> ids = Lists.newArrayList();
        recentlies.forEach(recently -> {
            ids.add(String.valueOf(recently.getBlogId()));
        });
        return blogService.selectBlogByIds(ids);
    }

    /**
     * 主页板块
     * 
     * @return
     */
    public List<Blog> getMain() {
        List<AuthorMain> authorMains = iAuthorMainService.selectAuthorMainList(new AuthorMain());
        ArrayList<String> ids = Lists.newArrayList();
        for (AuthorMain authorMain : authorMains) {
            ids.add(String.valueOf(authorMain.getBlogId()));
        }
        return blogService.selectBlogByIds(ids);
    }

    /**
     * 分页查询Blog
     * 
     * @param pageNum
     * @param pageSize
     * @return
     */
    public List<Blog> getTravelList(Integer pageNum, Integer pageSize) {
        if (pageSize == null || pageSize == 0) {
            pageSize = 6;
        }
        if (pageNum == null) {
            pageNum = 0;
        }
        PageHelper.startPage(pageNum, pageSize);
        Blog blog = new Blog();
        blog.setBlogType("2");
        List<Blog> blogs = blogService.selectBlogList(blog);
        return blogs;
    }
}

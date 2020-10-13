package com.ruoyi.web.platform.blog.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.google.common.collect.Lists;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.util.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.blog.mapper.BlogMapper;
import com.ruoyi.web.platform.blog.domain.Blog;
import com.ruoyi.web.platform.blog.service.IBlogService;
import com.ruoyi.common.core.text.Convert;

/**
 * 博客展示Service业务层处理
 * 
 * @author yttv-platform
 * @date 2020-10-06
 */
@Service
public class BlogServiceImpl implements IBlogService {
    @Autowired
    private BlogMapper blogMapper;

    /**
     * 查询博客展示
     * 
     * @param blogId 博客展示ID
     * @return 博客展示
     */
    @Override
    public Blog selectBlogById(Integer blogId) {
        return blogMapper.selectBlogById(blogId);
    }

    /**
     * 查询博客展示列表
     * 
     * @param blog 博客展示
     * @return 博客展示
     */
    @Override
    public List<Blog> selectBlogList(Blog blog) {
        return blogMapper.selectBlogList(blog);
    }

    /**
     * 新增博客展示
     * 
     * @param blog 博客展示
     * @return 结果
     */
    @Override
    public int insertBlog(Blog blog) {
        String loginName = ShiroUtils.getLoginName();
        blog.setCreateBy(loginName);
        if (blog.getBlogPicture() != null) {
            String blogPicture = blog.getBlogPicture().replaceAll("127.0.0.1:8080", "luna.vaiwan.com");
            blog.setBlogPicture(blogPicture);
        }
        blog.setCreateTime(DateUtils.getNowDate());
        blog.setUpdateTime(DateUtils.getNowDate());
        return blogMapper.insertBlog(blog);
    }

    /**
     * 修改博客展示
     * 
     * @param blog 博客展示
     * @return 结果
     */
    @Override
    public int updateBlog(Blog blog) {
        blog.setUpdateBy(ShiroUtils.getLoginName());
        blog.setUpdateTime(DateUtils.getNowDate());
        if (blog.getBlogPicture() != null) {
            String blogPicture = blog.getBlogPicture().replaceAll("127.0.0.1:8080", "luna.vaiwan.com");
            blog.setBlogPicture(blogPicture);
        }
        return blogMapper.updateBlog(blog);
    }

    /**
     * 删除博客展示对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteBlogByIds(String ids) {
        return blogMapper.deleteBlogByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除博客展示信息
     * 
     * @param blogId 博客展示ID
     * @return 结果
     */
    @Override
    public int deleteBlogById(Integer blogId) {
        return blogMapper.deleteBlogById(blogId);
    }

    /**
     * id集合查询
     * 
     * @param ids
     * @return
     */
    @Override
    public List<Blog> selectBlogByIds(List<String> ids) {
        List<Blog> blogs = blogMapper.selectByIds(ids);

        return blogs;
    }
}

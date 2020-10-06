package com.ruoyi.web.platform.blog.mapper;

import java.util.List;
import com.ruoyi.web.platform.blog.domain.Blog;

/**
 * 博客展示Mapper接口
 * 
 * @author yttv-platform
 * @date 2020-10-06
 */
public interface BlogMapper {
    /**
     * 查询博客展示
     * 
     * @param blogId 博客展示ID
     * @return 博客展示
     */
    public Blog selectBlogById(Integer blogId);

    /**
     * 查询博客展示列表
     * 
     * @param blog 博客展示
     * @return 博客展示集合
     */
    public List<Blog> selectBlogList(Blog blog);

    /**
     * 新增博客展示
     * 
     * @param blog 博客展示
     * @return 结果
     */
    public int insertBlog(Blog blog);

    /**
     * 修改博客展示
     * 
     * @param blog 博客展示
     * @return 结果
     */
    public int updateBlog(Blog blog);

    /**
     * 删除博客展示
     * 
     * @param blogId 博客展示ID
     * @return 结果
     */
    public int deleteBlogById(Integer blogId);

    /**
     * 批量删除博客展示
     * 
     * @param blogIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteBlogByIds(String[] blogIds);
}

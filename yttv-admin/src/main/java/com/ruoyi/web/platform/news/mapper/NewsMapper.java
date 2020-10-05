package com.ruoyi.web.platform.news.mapper;

import java.util.List;

import com.ruoyi.web.platform.news.domain.News;

/**
 * 新闻展示Mapper接口
 * 
 * @author party-platform
 * @date 2020-09-25
 */
public interface NewsMapper 
{
    /**
     * 查询新闻展示
     * 
     * @param newsId 新闻展示ID
     * @return 新闻展示
     */
    public News selectNewsById(Integer newsId);

    /**
     * 查询新闻展示列表
     * 
     * @param news 新闻展示
     * @return 新闻展示集合
     */
    public List<News> selectNewsList(News news);

    /**
     * 新增新闻展示
     * 
     * @param news 新闻展示
     * @return 结果
     */
    public int insertNews(News news);

    /**
     * 修改新闻展示
     * 
     * @param news 新闻展示
     * @return 结果
     */
    public int updateNews(News news);

    /**
     * 删除新闻展示
     * 
     * @param newsId 新闻展示ID
     * @return 结果
     */
    public int deleteNewsById(Integer newsId);

    /**
     * 批量删除新闻展示
     * 
     * @param newsIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteNewsByIds(String[] newsIds);
}

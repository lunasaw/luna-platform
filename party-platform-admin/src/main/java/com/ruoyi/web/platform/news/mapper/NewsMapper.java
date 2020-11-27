package com.ruoyi.web.platform.news.mapper;

import java.util.List;

import com.ruoyi.web.platform.news.domain.News;

/**
 * 新闻发布Mapper接口
 *
 * @author party-platform
 * @date 2020-11-27
 */
public interface NewsMapper {
    /**
     * 查询新闻发布
     *
     * @param newsId 新闻发布ID
     * @return 新闻发布
     */
    public News selectNewsById(Integer newsId);

    /**
     * 查询新闻发布列表
     *
     * @param news 新闻发布
     * @return 新闻发布集合
     */
    public List<News> selectNewsList(News news);

    /**
     * 新增新闻发布
     *
     * @param news 新闻发布
     * @return 结果
     */
    public int insertNews(News news);

    /**
     * 修改新闻发布
     *
     * @param news 新闻发布
     * @return 结果
     */
    public int updateNews(News news);

    /**
     * 删除新闻发布
     *
     * @param newsId 新闻发布ID
     * @return 结果
     */
    public int deleteNewsById(Integer newsId);

    /**
     * 批量删除新闻发布
     *
     * @param newsIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteNewsByIds(String[] newsIds);
}

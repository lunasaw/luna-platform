package com.ruoyi.web.platform.news.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.web.platform.news.domain.News;
import com.ruoyi.web.platform.news.mapper.NewsMapper;
import com.ruoyi.web.platform.news.service.INewsService;

/**
 * 新闻展示Service业务层处理
 * 
 * @author party-platform
 * @date 2020-09-25
 */
@Service
public class NewsServiceImpl implements INewsService
{
    @Autowired
    private NewsMapper newsMapper;

    /**
     * 查询新闻展示
     * 
     * @param newsId 新闻展示ID
     * @return 新闻展示
     */
    @Override
    public News selectNewsById(Integer newsId)
    {
        return newsMapper.selectNewsById(newsId);
    }

    /**
     * 查询新闻展示列表
     * 
     * @param news 新闻展示
     * @return 新闻展示
     */
    @Override
    public List<News> selectNewsList(News news)
    {
        return newsMapper.selectNewsList(news);
    }

    /**
     * 新增新闻展示
     * 
     * @param news 新闻展示
     * @return 结果
     */
    @Override
    public int insertNews(News news)
    {
        news.setCreateTime(DateUtils.getNowDate());
        return newsMapper.insertNews(news);
    }

    /**
     * 修改新闻展示
     * 
     * @param news 新闻展示
     * @return 结果
     */
    @Override
    public int updateNews(News news)
    {
        news.setUpdateTime(DateUtils.getNowDate());
        return newsMapper.updateNews(news);
    }

    /**
     * 删除新闻展示对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteNewsByIds(String ids)
    {
        return newsMapper.deleteNewsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除新闻展示信息
     * 
     * @param newsId 新闻展示ID
     * @return 结果
     */
    @Override
    public int deleteNewsById(Integer newsId)
    {
        return newsMapper.deleteNewsById(newsId);
    }
}

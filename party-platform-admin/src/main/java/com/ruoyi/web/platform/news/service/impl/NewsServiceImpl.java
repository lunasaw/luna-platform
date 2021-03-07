package com.ruoyi.web.platform.news.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.framework.util.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.news.mapper.NewsMapper;
import com.ruoyi.web.platform.news.domain.News;
import com.ruoyi.web.platform.news.service.INewsService;
import com.ruoyi.common.core.text.Convert;

/**
 * 新闻发布Service业务层处理
 *
 * @author party-platform
 * @date 2020-11-27
 */
@Service
public class NewsServiceImpl implements INewsService {
    @Autowired
    private NewsMapper newsMapper;

    /**
     * 查询新闻发布
     *
     * @param newsId 新闻发布ID
     * @return 新闻发布
     */
    @Override
    public News selectNewsById(Integer newsId) {
        return newsMapper.selectNewsById(newsId);
    }

    /**
     * 查询新闻发布列表
     *
     * @param news 新闻发布
     * @return 新闻发布
     */
    @Override
    public List<News> selectNewsList(News news) {
        return newsMapper.selectNewsList(news);
    }

    /**
     * 新增新闻发布
     *
     * @param news 新闻发布
     * @return 结果
     */
    @Override
    public int insertNews(News news) {
        news.setNewsTime(DateUtils.getNowDate());
        news.setCreateBy(ShiroUtils.getLoginName());
        news.setCreateTime(DateUtils.getNowDate());
        news.setUpdateBy(ShiroUtils.getLoginName());
        news.setUpdateTime(DateUtils.getNowDate());
        return newsMapper.insertNews(news);
    }

    /**
     * 修改新闻发布
     *
     * @param news 新闻发布
     * @return 结果
     */
    @Override
    public int updateNews(News news) {
        news.setUpdateBy(ShiroUtils.getLoginName());
        news.setUpdateTime(DateUtils.getNowDate());
        return newsMapper.updateNews(news);
    }

    /**
     * 删除新闻发布对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteNewsByIds(String ids) {
        return newsMapper.deleteNewsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除新闻发布信息
     *
     * @param newsId 新闻发布ID
     * @return 结果
     */
    @Override
    public int deleteNewsById(Integer newsId) {
        return newsMapper.deleteNewsById(newsId);
    }
}

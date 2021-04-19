package com.ruoyi.web.platform.web;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.framework.web.service.DictService;
import com.ruoyi.system.domain.SysDictData;
import com.ruoyi.web.platform.documentary.domain.NewsDocumentary;
import com.ruoyi.web.platform.documentary.service.INewsDocumentaryService;
import com.ruoyi.web.platform.news.domain.News;
import com.ruoyi.web.platform.news.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

@RestController
@RequestMapping("/mainPage")
public class PageRestController {
    @Autowired
    INewsService iNewsService;

    @Autowired
    INewsDocumentaryService iNewsDocumentaryService;

    @Autowired
    DictService service;

    @PostMapping("/allNews")
    public List<List<News>> getAllNews() {
        List<SysDictData> newsType = service.getType("sys_news_type");
        List<List<News>> lists = Lists.newArrayList();

        HashMap<String, String> map = Maps.newHashMap();
        for (SysDictData sysDictData : newsType) {
            if (!sysDictData.getDictValue().equals("7") && !sysDictData.getDictValue().equals("6")
                && !sysDictData.getDictValue().equals("1")) {
                News news = new News();
                news.setNewsType(sysDictData.getDictValue());
                news.setStatus("1");
                map.put(sysDictData.getDictValue(), sysDictData.getDictLabel());
                List<News> newsList = iNewsService.selectNewsList(news);
                Collections.sort(newsList);
                Collections.reverse(newsList);
                if (newsList.size() != 0) {
                    lists.add(newsList);
                }
            }
        }
        for (List<News> list : lists) {
            for (News news : list) {
                news.setNewsType(map.get(news.getNewsType()));
            }
        }

        return lists;
    }

    @GetMapping("/getPicLive")
    public List<News> getPicLive() {
        News news = new News();
        news.setStatus("1");
        news.setNewsType("1");
        List<News> newsList = iNewsService.selectNewsList(news);
        return newsList;
    }

    @PostMapping("/allNewsList")
    public List<News> getAllNewsList() {
        News news = new News();
        news.setStatus("1");
        List<News> newsList = iNewsService.selectNewsList(news);
        Collections.sort(newsList);
        Collections.reverse(newsList);
        return newsList;
    }

    @GetMapping("/dictValue")
    public AjaxResult dictValue(String type) {
        List<SysDictData> sys_news_type = service.getType("sys_news_type");
        String lable = "";
        for (SysDictData sysDictData : sys_news_type) {
            if (sysDictData.getDictValue().equals(type)) {
                lable = sysDictData.getDictLabel();
            }
        }
        return new AjaxResult(AjaxResult.Type.SUCCESS, "成功", lable);
    }

    @PostMapping("/allDocuments")
    public List<NewsDocumentary> getAllDocument() {
        NewsDocumentary newsDocumentary = new NewsDocumentary();
        newsDocumentary.setDocumentaryStatus("1");
        List<NewsDocumentary> newsDocumentaries = iNewsDocumentaryService.selectNewsDocumentaryList(newsDocumentary);
        return newsDocumentaries;
    }

    @GetMapping("/getNewsById")
    public News getNById(Integer Newsid) {
        News news = iNewsService.selectNewsById(Newsid);
        return news;
    }

    @GetMapping("/getDocumentById")
    public NewsDocumentary getDById(Long documentId) {
        NewsDocumentary newsDocumentary = iNewsDocumentaryService.selectNewsDocumentaryById(documentId);
        return newsDocumentary;
    }

}

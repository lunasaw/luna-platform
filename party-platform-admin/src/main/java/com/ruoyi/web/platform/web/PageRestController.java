package com.ruoyi.web.platform.web;

import com.ruoyi.web.platform.news.domain.News;
import com.ruoyi.web.platform.news.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/mainPage")
public class PageRestController {
    @Autowired INewsService iNewsService;

    @GetMapping("/allNews")
    public List<News> getAllNews(){
        List<News> newsList = iNewsService.selectNewsList(new News());
        return newsList;
    }
}

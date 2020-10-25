package com.ruoyi.web.platform.web;

import com.ruoyi.web.platform.documentary.domain.NewsDocumentary;
import com.ruoyi.web.platform.documentary.service.INewsDocumentaryService;
import com.ruoyi.web.platform.news.domain.News;
import com.ruoyi.web.platform.news.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/mainPage")
public class PageRestController {
    @Autowired INewsService iNewsService;

    @Autowired
    INewsDocumentaryService iNewsDocumentaryService;

    @PostMapping("/allNews")
    public List<News> getAllNews(){
        List<News> newsList = iNewsService.selectNewsList(new News());
        return newsList;
    }

    @PostMapping("/allDocuments")
    public List<NewsDocumentary> getAllDocument(){
        List<NewsDocumentary> newsDocumentaries = iNewsDocumentaryService.selectNewsDocumentaryList(new NewsDocumentary());
        return newsDocumentaries;
    }

    @GetMapping("/getNewsById")
    public News getNById(Integer Newsid){
        News news = iNewsService.selectNewsById(Newsid);
        return news;
    }

    @GetMapping("/getDocumentById")
    public NewsDocumentary getDById(Long documentId){
        NewsDocumentary newsDocumentary = iNewsDocumentaryService.selectNewsDocumentaryById(documentId);
        return newsDocumentary;
    }

}

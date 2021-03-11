package com.ruoyi.web.platform.web;

import com.google.common.collect.Lists;
import com.ruoyi.system.utils.DictUtils;
import com.ruoyi.web.platform.documentary.domain.NewsDocumentary;
import com.ruoyi.web.platform.documentary.service.INewsDocumentaryService;
import com.ruoyi.web.platform.news.domain.News;
import com.ruoyi.web.platform.news.service.impl.NewsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("admin/page")
public class PageController {


    @Autowired
    private NewsServiceImpl newsService;

    @Autowired
    private INewsDocumentaryService iNewsDocumentaryService;


    static String PREFIX = "admin/page";

    @GetMapping("/main")
    public String main(ModelMap modelMap) {
        News news = new News();
        news.setStatus("1");
        news.setNewsType("6");
        List<News> news1 = newsService.selectNewsList(news);
        modelMap.put("mainPic", news1);

        NewsDocumentary newsDocumentary = new NewsDocumentary();
        newsDocumentary.setDocumentaryStatus("1");
        List<NewsDocumentary> newsDocumentaries = iNewsDocumentaryService.selectNewsDocumentaryList(newsDocumentary);
        modelMap.put("newsDocumentaries", newsDocumentaries);
        News news2 = new News();
        news2.setStatus("1");
        List<News> news2List = newsService.selectNewsList(news2);
        List<News> newsList =
            news2List.stream().filter(news3 -> !news3.getNewsType().equals("6")).collect(Collectors.toList());
        modelMap.put("newsList", newsList);

        News news4 = new News();
        news4.setStatus("1");
        news4.setNewsType("4");
        List<News> newsList4 = newsService.selectNewsList(news4);
        // List<News> prePersonnewsList = newsList4.stream().filter(news5 ->
        // !news5.getNewsType().equals("4")).collect(Collectors.toList());
        System.out.println(newsList4);
        modelMap.put("prePerson", newsList4);
        return PREFIX + "/main";
    }

    @GetMapping("/news")
    public String toNews() {
        return PREFIX + "/news";
    }

    @GetMapping("/newslist")
    public String toNewsList() {
        return PREFIX + "/newslist";
    }

    @GetMapping("/study")
    public String toStudy(ModelMap modelMap) {
        News news = new News();
        news.setNewsType("6");
        List<News> news1 = newsService.selectNewsList(news);
        modelMap.put("newsPic", news1);
        return PREFIX + "/study";
    }

    @GetMapping("/build")
    public String toBuild(ModelMap modelMap) {
        return PREFIX + "/partBuild";
    }

    @GetMapping("/newslistpreperson")
    public String newslistpreperson(ModelMap modelMap) {
        return PREFIX + "/newslistpreperson";
    }

}

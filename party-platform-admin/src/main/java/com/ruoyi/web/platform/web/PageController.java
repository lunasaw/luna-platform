package com.ruoyi.web.platform.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/page")
public class PageController {

    static String PREFIX = "admin/page";

    @GetMapping("/main")
    public String main(){
        return PREFIX+"/main";
    }

    @GetMapping("/news")
    public String toNews(){
        return PREFIX + "/newsPage";
    }

}

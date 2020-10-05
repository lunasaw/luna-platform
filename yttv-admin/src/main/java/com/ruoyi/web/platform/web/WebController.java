package com.ruoyi.web.platform.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Package: com.ruoyi.web.platform.web
 * @ClassName: WebController
 * @Author: luna
 * @CreateTime: 2020/10/5 15:46
 * @Description:
 */
@Controller
@RequestMapping(WebController.BASE)
public class WebController {

    public static final String BASE = "web";

    @GetMapping("/index")
    public String index(ModelMap modelMap) {
        modelMap.addAttribute("index",true);
        return BASE + "/index";
    }

    @GetMapping("/about")
    public String about(ModelMap modelMap) {
        modelMap.addAttribute("about",true);
        return BASE + "/about";
    }

    @GetMapping("/codes")
    public String codes(ModelMap modelMap) {
        modelMap.addAttribute("codes",true);
        return BASE + "/codes";
    }

    @GetMapping("/contact")
    public String contact(ModelMap modelMap) {
        modelMap.addAttribute("contact",true);
        return BASE + "/contact";
    }

    @GetMapping("/fashion")
    public String fashion(ModelMap modelMap) {
        modelMap.addAttribute("fashion",true);
        return BASE + "/fashion";
    }

    @GetMapping("/features")
    public String features(ModelMap modelMap) {
        modelMap.addAttribute("features",true);
        return BASE + "/features";
    }

    @GetMapping("/music")
    public String music(ModelMap modelMap) {
        modelMap.addAttribute("music",true);
        return BASE + "/music";
    }

    @GetMapping("/singlepage")
    public String singlepage(ModelMap modelMap) {
        modelMap.addAttribute("singlepage",true);
        return BASE + "/singlepage";
    }

    @GetMapping("/travel")
    public String travel(ModelMap modelMap) {
        modelMap.addAttribute("travel",true);
        return BASE + "/travel";
    }

}

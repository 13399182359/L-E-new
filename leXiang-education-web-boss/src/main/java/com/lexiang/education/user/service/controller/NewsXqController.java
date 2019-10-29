package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.NewsXqService;
import com.LeXiang.education.sysAdmin.common.model.NewsXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @类名: NewsXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-23 20:32
 **/
@Controller
@RequestMapping("/news")
public class NewsXqController {

    @Autowired
    private NewsXqService newsXqService;

    @RequestMapping("/findXqNews")
    public String findXqNews(Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows,NewsXq newsXq){
        PageBean<NewsXq> list = newsXqService.findXqNews(page,rows,newsXq);
        System.out.println(list);
        model.addAttribute("list",list);
        return "admin/xitongxiaoxi/list";
    }

    @RequestMapping("/delNewsXq")
    public String delNewsXq(Integer id){
        newsXqService.delNewsXq(id);
        return "redirect:/news/findXqNews";
    }

}
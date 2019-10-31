package com.lexiang.education.user.service.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/17 11:51
 * @Param
 * @return
 **/
@Controller
@RequestMapping("pageZhang")
public class PageZhangController {
    @RequestMapping("toAdminAdmin")
    public String toAdminAdmin () {
        return "admin/admin";
    }
    @RequestMapping("toAddCommondity")
    public String toAddCommondity () {
        return "admin/commondity/add";
    }
    @RequestMapping("toHuiCommondity")
    public String toHuiCommondity () {
        return "admin/commondity/hui";
    }
}

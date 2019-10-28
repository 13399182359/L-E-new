package com.lexiang.education.user.service.controller;

import com.LeXiang.education.user.common.model.PlayClassgtj;
import com.LeXiang.education.user.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("index")
public class IndexController {
    @Autowired
    private ShopService shopService;

    @RequestMapping("toLogin")
    public String toLogin(Model model){
        String video="w";
        List<PlayClassgtj> list = shopService.queryEsAll(video);
        model.addAttribute("videoAll",list);

        return "login";
    }
}

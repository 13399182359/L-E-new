package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.FeedbackXqService;
import com.LeXiang.education.sysAdmin.common.model.FeedbackXq;
import com.LeXiang.education.sysAdmin.common.model.MessageXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @类名: FeedbackXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-23 13:56
 **/
@Controller
@RequestMapping("/feedback")
public class FeedbackXqController {

    @Autowired
    private FeedbackXqService feedbackXqService;

    @RequestMapping("/findXqFeedback")
    public String findXqFeedback(Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows, FeedbackXq feedbackXq){
        PageBean<FeedbackXq> list = feedbackXqService.findXqFeedback(page,rows,feedbackXq);
        System.out.println(list);
        model.addAttribute("list",list);
        return "admin/fankuiguanli/list";
    }


    @RequestMapping("/delFeedbackXq")
    public String delFeedbackXq(Integer id){
        feedbackXqService.delFeedbackXq(id);
        return "redirect:/feedback/findXqFeedback";
    }

    @RequestMapping("/delFeedbackXqs")
    public String delFeedbackXqs(Integer[] ids){
        feedbackXqService.delFeedbackXqs(ids);
        return "redirect:/feedback/findXqFeedback";
    }

}
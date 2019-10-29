package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.AnswerCyqService;
import com.LeXiang.education.sysAdmin.common.model.Answer;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @类名: AnswerCyqController
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-24 14:36
 **/
@Controller
@RequestMapping("/answerCyq")
public class AnswerCyqController {

    @Autowired
    private AnswerCyqService answerCyqService;

    @RequestMapping("/findAnswer")
    public String findAnswer(Answer answer, Model model, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows){
        PageBean<Answer> answer1 = answerCyqService.findAnswer(answer, page, rows);
        model.addAttribute("answer1",answer1);
        return "admin/content/wenda/list";
    }

    @RequestMapping("/deleteAnswer")
    private String deleteAnswer(Long id){
        answerCyqService.deleteAnswer(id);
        return "redirect:/answerCyq/findAnswer";
    }

    @RequestMapping("/deleteAnswerIds")
    public String deleteAnswerIds(Long[] ids){
        answerCyqService.deleteAnswerIds(ids);
        return "redirect:/answerCyq/findAnswer";
    }

    @RequestMapping("/updAnswerStick")
    public String updAnswerStick(Long id){
        answerCyqService.updAnswerStick(id);
        return "redirect:/answerCyq/findAnswer";
    }

    @RequestMapping("/answerStickUpd")
    public String answerStickUpd(Long id){
        answerCyqService.answerStickUpd(id);
        return "redirect:/answerCyq/findAnswer";
    }
}


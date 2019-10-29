package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.QuizCyqService;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Quiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @类名: QuizCyqController
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-24 21:34
 **/
@Controller
@RequestMapping("/quizCyq")
public class QuizCyqController {

    @Autowired
    private QuizCyqService quizCyqService;

    @RequestMapping("/findQuiz")
    public String findQuiz(Quiz quiz, Model model, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows){
        PageBean<Quiz> quiz1 = quizCyqService.findQuiz(quiz, page, rows);
        model.addAttribute("quiz1",quiz1);
        return "admin/content/tiwen/list";
    }

    @RequestMapping("/deleteQuiz")
    public String deleteQuiz(Long id){
        quizCyqService.deleteQuiz(id);
        return "redirect:/quizCyq/findQuiz";
    }

    @RequestMapping("/deleteQuizIds")
    public String deleteQuizIds(Long[] ids){
        quizCyqService.deleteQuizIds(ids);
        return "redirect:/quizCyq/findQuiz";
    }
}


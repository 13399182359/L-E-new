package com.LeXiang.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.QuizCyqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Quiz;
import com.LeXiang.service.QuizCyqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: QuizCyqController
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-24 21:19
 **/
@RestController
public class QuizCyqController implements QuizCyqServiceApi {

    @Autowired
    private QuizCyqService quizCyqService;

    @Override
    public PageBean<Quiz> findQuiz(Quiz quiz, Integer page, Integer rows) {
        return quizCyqService.findQuiz(quiz,page,rows);
    }

    @Override
    public void deleteQuiz(Long id) {
        quizCyqService.deleteQuiz(id);
    }

    @Override
    public void deleteQuizIds(Long[] ids) {
        quizCyqService.deleteQuizIds(ids);
    }
}


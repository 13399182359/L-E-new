package com.LeXiang.service;

import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Quiz;

public interface QuizCyqService {
    PageBean<Quiz> findQuiz(Quiz quiz, Integer page, Integer rows);

    void deleteQuiz(Long id);

    void deleteQuizIds(Long[] ids);
}

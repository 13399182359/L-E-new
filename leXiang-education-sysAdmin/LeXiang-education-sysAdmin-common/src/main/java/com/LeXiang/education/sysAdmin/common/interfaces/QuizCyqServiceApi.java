package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Quiz;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface QuizCyqServiceApi {

    @RequestMapping("/findQuiz")
    public PageBean<Quiz> findQuiz(@RequestBody Quiz quiz, @RequestParam Integer page, @RequestParam Integer rows);

    @RequestMapping("/deleteQuiz")
    public void deleteQuiz(@RequestParam Long id);

    @RequestMapping("/deleteQuizIds")
    public void deleteQuizIds(@RequestParam Long[] ids);
}

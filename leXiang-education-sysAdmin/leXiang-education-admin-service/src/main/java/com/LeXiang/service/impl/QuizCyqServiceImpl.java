package com.LeXiang.service.impl;

import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Quiz;
import com.LeXiang.mapper.QuizCyqMapper;
import com.LeXiang.service.QuizCyqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @类名: QuizCyqServiceImpl
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-24 21:20
 **/
@Service
public class QuizCyqServiceImpl implements QuizCyqService {

    @Autowired
    private QuizCyqMapper quizCyqMapper;

    @Override
    public PageBean<Quiz> findQuiz(Quiz quiz, Integer page, Integer rows) {
        int total = quizCyqMapper.findQuizCount();
        HashMap<String, Object> map = new HashMap<>();
        int pageNum = (page - 1) * rows;
        map.put("quiz",quiz);
        map.put("page",pageNum);
        map.put("rows",rows);
        List<Quiz> list = quizCyqMapper.findQuiz(map);
        PageBean<Quiz> bean = new PageBean<>(page, rows, total);
        bean.setList(list);
        return bean;
    }

    @Override
    public void deleteQuiz(Long id) {
        quizCyqMapper.deleteQuiz(id);
    }

    @Override
    public void deleteQuizIds(Long[] ids) {
        for (Long id:ids) {
            quizCyqMapper.deleteQuiz(id);
        }
    }
}


package com.LeXiang.service.impl;

import com.LeXiang.education.sysAdmin.common.model.Answer;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.mapper.AnswerCyqMapper;
import com.LeXiang.service.AnswerCyqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @类名: AnswerCyqServiceImpl
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-23 20:30
 **/
@Service
public class AnswerCyqServiceImpl implements AnswerCyqService {

    @Autowired
    private AnswerCyqMapper answerCyqMapper;

    @Override
    public PageBean<Answer> findAnswer(Answer answer, Integer page, Integer rows) {
        int total = answerCyqMapper.findAnswerCount();
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page - 1) * rows;
        map.put("answer",answer);
        map.put("page",pageNumber);
        map.put("rows",rows);
        List<Answer> list = answerCyqMapper.findAnswer(map);
        PageBean<Answer> bean = new PageBean<>(page, rows, total);
        bean.setList(list);
        return bean;
    }

    @Override
    public void deleteAnswer(Long id) {
        answerCyqMapper.deleteAnswer(id);
    }

    @Override
    public void deleteAnswerIds(Long[] ids) {
        for (Long id:ids) {
            answerCyqMapper.deleteAnswer(id);
        }
    }

    @Override
    public void updAnswerStick(Long id) {
        answerCyqMapper.updAnswerStick(id);
    }

    @Override
    public void answerStickUpd(Long id) {
        answerCyqMapper.answerStickUpd(id);
    }
}


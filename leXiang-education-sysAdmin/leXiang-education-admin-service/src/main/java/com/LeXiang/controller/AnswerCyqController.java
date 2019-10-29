package com.LeXiang.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.AnswerCyqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.Answer;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.service.AnswerCyqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: AnswerCyqController
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-23 20:26
 **/
@RestController
public class AnswerCyqController implements AnswerCyqServiceApi {

    @Autowired
    private AnswerCyqService answerCyqService;

    @Override
    public PageBean<Answer> findAnswer(Answer answer, Integer page, Integer rows) {
        return answerCyqService.findAnswer(answer,page,rows);
    }

    @Override
    public void deleteAnswer(Long id) {
        answerCyqService.deleteAnswer(id);
    }

    @Override
    public void deleteAnswerIds(Long[] ids) {
        answerCyqService.deleteAnswerIds(ids);
    }

    @Override
    public void updAnswerStick(Long id) {
        answerCyqService.updAnswerStick(id);
    }

    @Override
    public void answerStickUpd(Long id) {
        answerCyqService.answerStickUpd(id);
    }
}


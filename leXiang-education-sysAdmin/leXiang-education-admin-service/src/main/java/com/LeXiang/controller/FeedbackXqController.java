package com.LeXiang.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.FeedbackXqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.FeedbackXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.service.FeedbackXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: FeedbackXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-23 14:03
 **/
@RestController
public class FeedbackXqController implements FeedbackXqServiceApi {

    @Autowired
    private FeedbackXqService feedbackXqService;

    @Override
    public PageBean<FeedbackXq> findXqFeedback(Integer page, Integer rows, FeedbackXq feedbackXq) {
        return feedbackXqService.findXqFeedback(page,rows,feedbackXq);
    }

    @Override
    public void delFeedbackXq(Integer id) {
        feedbackXqService.delFeedbackXq(id);
    }

    @Override
    public void delFeedbackXqs(Integer[] ids) {
        feedbackXqService.delFeedbackXqs(ids);
    }
}
package com.LeXiang.service;

import com.LeXiang.education.sysAdmin.common.model.FeedbackXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;

public interface FeedbackXqService {
    PageBean<FeedbackXq> findXqFeedback(Integer page, Integer rows, FeedbackXq feedbackXq);

    void delFeedbackXq(Integer id);

    void delFeedbackXqs(Integer[] ids);
}

package com.jk.mapper;

import com.LeXiang.education.sysAdmin.common.model.FeedbackXq;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;

public interface FeedbackXqMapper {
    int count(FeedbackXq feedbackXq);

    List<FeedbackXq> findXqFeedback(HashMap<String, Object> m);

    void delFeedbackXq(@RequestParam("id") Integer id);
}

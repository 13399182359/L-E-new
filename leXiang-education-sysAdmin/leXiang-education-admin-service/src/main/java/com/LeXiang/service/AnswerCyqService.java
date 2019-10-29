package com.LeXiang.service;

import com.LeXiang.education.sysAdmin.common.model.Answer;
import com.LeXiang.education.sysAdmin.common.model.PageBean;

public interface AnswerCyqService {
    PageBean<Answer> findAnswer(Answer answer, Integer page, Integer rows);

    void deleteAnswer(Long id);

    void deleteAnswerIds(Long[] ids);

    void updAnswerStick(Long id);

    void answerStickUpd(Long id);
}

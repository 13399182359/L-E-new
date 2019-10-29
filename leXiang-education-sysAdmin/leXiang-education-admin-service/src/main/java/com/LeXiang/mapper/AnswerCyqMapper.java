package com.LeXiang.mapper;

import com.LeXiang.education.sysAdmin.common.model.Answer;

import java.util.HashMap;
import java.util.List;

public interface AnswerCyqMapper {
    int findAnswerCount();

    List<Answer> findAnswer(HashMap<String, Object> map);

    void deleteAnswer(Long id);

    void updAnswerStick(Long id);

    void answerStickUpd(Long id);
}

package com.LeXiang.mapper;

import com.LeXiang.education.sysAdmin.common.model.Quiz;

import java.util.HashMap;
import java.util.List;

public interface QuizCyqMapper {
    int findQuizCount();

    List<Quiz> findQuiz(HashMap<String, Object> map);

    void deleteQuiz(Long id);
}

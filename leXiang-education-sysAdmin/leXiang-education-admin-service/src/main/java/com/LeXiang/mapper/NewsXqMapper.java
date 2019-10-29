package com.jk.mapper;

import com.LeXiang.education.sysAdmin.common.model.NewsXq;

import java.util.HashMap;
import java.util.List;

public interface NewsXqMapper {
    int count(NewsXq newsXq);

    List<NewsXq> findXqNews(HashMap<String, Object> m);

    void delNewsXq(Integer id);
}

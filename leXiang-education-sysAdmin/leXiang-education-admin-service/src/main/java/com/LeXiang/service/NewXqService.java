package com.jk.service;

import com.LeXiang.education.sysAdmin.common.model.NewsXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;

public interface NewXqService {
    PageBean<NewsXq> findXqNews(Integer page, Integer rows, NewsXq newsXq);

    void delNewsXq(Integer id);
}

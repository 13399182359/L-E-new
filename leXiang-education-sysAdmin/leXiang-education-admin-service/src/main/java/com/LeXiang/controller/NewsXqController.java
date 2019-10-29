package com.LeXiang.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.NewsXqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.NewsXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.service.NewXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: NewsXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-23 20:38
 **/
@RestController
public class NewsXqController implements NewsXqServiceApi {

    @Autowired
    private NewXqService newXqService;

    @Override
    public PageBean<NewsXq> findXqNews(Integer page, Integer rows, NewsXq newsXq) {
        return newXqService.findXqNews(page,rows,newsXq);
    }

    @Override
    public void delNewsXq(Integer id) {
        newXqService.delNewsXq(id);
    }
}
package com.LeXiang.service.impl;

import com.LeXiang.education.sysAdmin.common.model.NewsXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.mapper.NewsXqMapper;
import com.LeXiang.service.NewXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @类名: NewXqServiceImpl
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-23 20:40
 **/
@Service
public class NewXqServiceImpl implements NewXqService {

    @Autowired
    private NewsXqMapper newsXqMapper;

    @Override
    public PageBean<NewsXq> findXqNews(Integer page, Integer rows, NewsXq newsXq) {
        int total =  newsXqMapper.count(newsXq);
        HashMap<String,Object> m = new HashMap<>();
        int pagemun = (page-1)*rows;
        m.put("page",pagemun);
        m.put("rows",rows);
        m.put("messageXq",newsXq);
        PageBean<NewsXq> pageBean = new PageBean<NewsXq>(page,rows,total);
        List<NewsXq> list=newsXqMapper.findXqNews(m);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public void delNewsXq(Integer id) {
        newsXqMapper.delNewsXq(id);
    }
}